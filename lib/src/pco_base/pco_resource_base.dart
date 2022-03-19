import 'dart:convert';

import 'pco_api_base.dart';
import 'pco_constructors.dart';

/// follows the implementation of a JSON:API resource object
///
/// Implementations should override static members [pcoApplication], [typeString], [apiVersion]
/// as well as all the field mapping constants.
///
/// Implementations should override the getters [createAllowed], [updateAllowed],
/// and [defaultAttributes].
///
/// Implementations should also have a static [typeEndpoint] and override [itemEndpoint]
abstract class PcoResource {
  /// implementations should duplicate/override these
  static const String kPcoApplication = '';
  static const String kTypeString = '';
  static const String kApiVersion = '';
  static const String kDefaultPathTemplate = '';
  static const String kCreatePathTemplate = '';

  /// child classes can override these getters which will allow
  /// methods in this class to see static variables from child classes
  String get apiVersion => kApiVersion;
  String get defaultPathTemplate => kDefaultPathTemplate;
  String get createPathTemplate => kCreatePathTemplate;

  // field mapping constants
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  /// planning center resources must be tied to an api
  PlanningCenter get api => PlanningCenter.instance;

  /// all planning center resources must have a [type]
  late final String resourceType;
  late final String pcoApplication;

  /// will be null if resource is new and not yet created
  String? _id;
  String? get id => _id;
  bool get needsSave => id == null;

  /// PcoResources include their own path as a link object
  /// but this might be null if we haven't created/fetched the object yet
  /// Child classes should redefine this getter to allow for manual path overrides
  String? get apiPath => links['self'] ?? defaultPathTemplate;
  String get apiEndpoint =>
      '/' + (apiPath?.split('/').sublist(3).join('/') ?? '');

  /// indicate whether an item is full or partial
  bool fetched = false;

  // these getters allow us to define which fields planning center
  // will accept on certain operations
  List<String> get createAllowed => [];
  List<String> get updateAllowed => [];

  // permissions getters
  bool get canDestroy => true;
  bool get canCreate => true;
  bool get canUpdate => true;

  // -- DATA FIELDS WITH GETTERS AND SETTERS --

  /// contains the underlying attributes returned by the api
  /// allow a user to access arbitrary data in the attributes by actual api name
  final Map<String, dynamic> attributes = {};

  /// contains relationships parsed into objects
  /// even though the api sends relationship objects as Maps or Lists
  /// we always put them into lists for consistency
  Map<String, List<PcoResource>> get relationships => _relationships;
  final Map<String, List<PcoResource>> _relationships = {};

  /// contains the links data returned by the api if present
  final Map<String, dynamic> _links = {};
  Map<String, dynamic> get links => _links;

  // all planning center resources implement at least these fields
  DateTime get createdAt => DateTime.parse(attributes[kCreatedAt]!);
  DateTime get updatedAt => DateTime.parse(attributes[kUpdatedAt]!);

  PcoResource(this.pcoApplication, this.resourceType);
  PcoResource.fromJson(
    this.pcoApplication,
    this.resourceType,
    Map<String, dynamic> data, {
    List<Map<String, dynamic>> withIncludes = const [],
  }) {
    if (!data.containsKey('type')) {
      print(data);
      throw FormatException(
          'data supplied does not meet JSON:API specs. No "type" field found');
    }
    fromJson(data);
    handleIncludes(withIncludes);
  }

  Future<PlanningCenterApiResponse> _selfcall<T extends PcoResource>(verb,
      [String data = '']) async {
    late PlanningCenterApiResponse res;
    if (apiPath == null) {
      res = PlanningCenterApiError(
        'Cannot determine apiPath',
        pcoApplication,
        Uri(),
        '',
        PlanningCenterApiQuery(),
        0,
        '',
      );
    } else {
      res = await api.call(apiEndpoint,
          verb: verb, apiVersion: apiVersion, data: data);
      if (!res.isError) {
        // apiresponses now always give data as a list
        fromJson(res.data.first.asMap);
      }
    }
    return res;
  }

  Future<PlanningCenterApiResponse> save() async {
    if (id == null && !canCreate) {
      return PlanningCenterApiError.messageOnly('cannot create object');
    }
    if (id != null && !canUpdate) {
      return PlanningCenterApiError.messageOnly('cannot update object');
    }

    var jsonString = json
        .encode({'data': id == null ? toCreateResource() : toUpdateResource()});
    return _selfcall(id == null ? 'post' : 'patch', jsonString);
  }

  Future<PlanningCenterApiResponse> delete() async {
    if (canDestroy) return _selfcall('delete');
    return PlanningCenterApiError.messageOnly('delete not allowed');
  }

  /// Takes a full JSON:API Response Object (the contents of a "data" field)
  /// will clear and update [id], [apiPath], [attributes] and [_relationships]
  fromJson(Map<String, dynamic> data) {
    if (data['type'] != resourceType) {
      throw FormatException(
          'Incorrect data type: ${data['type']} given, but $resourceType expected.');
    }

    // responses will always have an id, but we shouldn't update this data
    // if the response data has a different id!
    assert(id == null || data['id'] == id);

    // update this id if needed
    _id ??= data['id'];

    // update the attributes
    if (data.containsKey('attributes')) {
      attributes
        ..clear()
        ..addAll(data['attributes']);
    }

    // update the links
    if (data.containsKey('links')) {
      links.addAll(data['links']);
    }

    // process relationships, but first ensure
    // all relationship objects are actually lists
    if (data.containsKey('relationships')) {
      relationships.clear();
      // parse each relationship into its relevant object
      relationships.addAll(handleItems(data['relationships']));
    }
  }

  /// this assumes that the relationship object has already been populated
  /// because it updates the relationships objects with the included data
  void handleIncludes(List<Map<String, dynamic>> included) {
    // make a quick mapping for later reference into nested objects
    Map<String, PcoResource> relDataMap = {};
    relationships.forEach((key, items) {
      for (var item in items) {
        if (item.id == null) continue;
        relDataMap[item.id! + '-' + item.resourceType] = item;
      }
    });

    // walk the relationships tree to find a matching item id and type
    for (var data in included) {
      if (data['type'] == null || data['id'] == null) continue;
      var key = data['id'] + '-' + data['type'];
      relDataMap[key]?.fromJson(data);
    }
  }

  Map<String, List<PcoResource>> handleItems(Map<String, dynamic> items) {
    var retval = <String, List<PcoResource>>{};
    for (var key in items.keys) {
      retval[key] = <PcoResource>[];
      var value = items[key];
      if (value['data'] == null) continue; // no data, leave empty
      if (value['data'] is! List) value['data'] = [value['data']];
      for (var data in value['data']) {
        try {
          var res = buildResource(pcoApplication, data);
          if (res != null) retval[key]?.add(res);
        } on FormatException catch (e) {
          print(e);
        }
      }
    }
    return retval;
  }

  Map<String, dynamic> toJson() {
    return {'type': resourceType, 'id': id, 'attributes': attributes};
  }

  Map<String, dynamic> filteredAttributes(List<String> allowedKeys) {
    var filtered = <String, dynamic>{};
    for (var key in allowedKeys) {
      if (attributes[key] != null) filtered[key] = attributes[key];
    }
    return filtered;
  }

  Map<String, dynamic> toCreateResource() {
    var retval = toJson();
    retval['attributes'] = filteredAttributes(createAllowed);
    // never allow an id on a 'create' resource
    retval.remove('id');
    return retval;
  }

  Map<String, dynamic> toUpdateResource() {
    var retval = toJson();
    retval['attributes'] = filteredAttributes(updateAllowed);
    return retval;
  }
}

/// [PcoCollection] represents any response that has one or more
/// items of data from the server. Most requests will return a PcoCollection.
///
/// Information like [endpoint] and [apiVersion] will be preserved so future
/// queries can be generated from existing collections.
/// Also, [meta] preserves the `meta` section of the ApiResponse,
/// [query] preserves the original `query` for the collection, and
/// [response] preserves the full response from the API Request.
/// Finally [data] is a typed list of the response data encapsulated by the appropriate class.
class PcoCollection<T extends PcoResource> {
  final String endpoint;
  final String apiVersion;

  PlanningCenterApiResponse response;
  PlanningCenterApiQuery query;
  PlanningCenterApiMeta meta;
  List<T> data;

  bool get hasMore => meta.nextOffset != null;

  bool get isError => response.isError;
  PlanningCenterApiError? get error => response.error;
  String get errorMessage => error?.message ?? '';

  PcoCollection(this.data, this.meta, this.response, this.query, this.endpoint,
      this.apiVersion);

  /// url, query: query, apiVersion:kApiVersion
  static Future<PcoCollection<T>> fromApiCall<T extends PcoResource>(
      String endpoint,
      {PlanningCenterApiQuery? query,
      required String apiVersion}) async {
    var res = await PlanningCenter.instance
        .call(endpoint, query: query, apiVersion: apiVersion);
    return PcoCollection<T>.fromApiResponse(res, endpoint, apiVersion);
  }

  /// we also require the original endpoint and the apiversion so that subsequent
  /// requests like [getMore] and [nextPage] can be built easily off of this one.
  factory PcoCollection.fromApiResponse(
      PlanningCenterApiResponse response, endpoint, apiVersion) {
    List<T> data = [];
    var toProcess = response.data;
    for (var item in toProcess) {
      var res = buildResource<T>(response.application, item.asMap);
      if (res != null) data.add(res as T);
    }
    return PcoCollection<T>(
        data, response.meta, response, response.query, endpoint, apiVersion);
  }

  /// [nextPage] will return a *new collection* representing the next page of data from
  /// the server. The page offset is stored in the metadata of the previous response.
  /// If the server has no more items, the API will be called with an offset equal to the
  /// total count of items as reported by the server on the previous request.
  ///
  /// You should not call this function unless you first check [hasMore] or you expect
  /// new resources have been added on the server. Otherwise it might be a wasted request.
  Future<PcoCollection<T>> nextPage() {
    return PcoCollection.fromApiCall<T>(endpoint,
        query: query.withOffset(meta.nextOffset ?? meta.totalCount),
        apiVersion: apiVersion);
  }

  /// If a collection has more items available on the server
  /// [getMore] will call [nextPage] internally, will extend the current
  /// data with the the new data and then will update
  /// this collection with new [query], [meta], and [response] values.
  ///
  /// It returns `true` if new items were fetched or `false` otherwise
  ///
  /// You should not call this function unless you first check [hasMore] or you expect
  /// new resources have been added on the server. Otherwise it might be a wasted request.
  ///
  /// ```dart
  /// while (res.hasMore) {
  ///   await res.getMore();
  /// }
  /// // -- your code that saves a new item on the server --
  /// await res.getMore();
  /// ```
  Future<bool> getMore() async {
    var newCollection = await nextPage();
    if (newCollection.data.isNotEmpty) {
      query = newCollection.query;
      meta = newCollection.meta;
      response = newCollection.response;
      data.addAll(newCollection.data);
      return true;
    }
    return false;
  }
}

// class PcoChildTemplate extends PcoResource {
//   static const String typeString = 'TYPESTRING';
//   static const String endpoint = 'ENDPOINT';
//   static const String apiVersion = 'APIVERSION';

//   // field mapping constants
//   static const kFIELDCONSTANTDARTNAME = 'FIELDCONSTANTJSONNAME';

//   // getters and setters
//   @override
//   List<String> get createAllowed => CREATEALLOWEDLIST;
//   @override
//   List<String> get updateAllowed => UPDATEALLOWEDLIST;
//   @override
//   Map<String, dynamic> get defaultAttributes => DEFAULTATTRIBUTESMAP;

//   TYPE get FIELDNAME => FIELDGETTER;

//   PcoChildTemplate() : super(typeString);

// }

// --- the old way ---
/* -- DATA CLASSES -- */
// class DataClass {
//   Map<String, dynamic> data = {};

//   DataClass();

//   DataClass.fromData(this.data);

//   dynamic get(String key) => data[key];
//   set(String key, dynamic value) => data[key] = value;

//   Object toJson() => data;
// }

// abstract class PlanningCenterResource extends DataClass {
//   final List apiIncludedAttributes = [];

//   String itemEndpoint();

//   String? id; // will not show up in json fields
//   String get type => get('type');
//   DateTime get createdAt => DateTime.parse(attributes.get('created_at')!);
//   DateTime get updatedAt => DateTime.parse(attributes.get('updated_at')!);

//   late DataClass attributes;
//   late DataClass relationships;
//   // Map<String, String> get attributes => _get('attributes') ?? {};

//   Map<String, String> links = {};

//   /// returns a string ready for the api wrapped in a "data" object
//   /// {"data": ...}
//   /// never includes relationships
//   String get apiEncoded {
//     var filteredAttributes = <String, dynamic>{};
//     attributes.data.forEach((key, value) {
//       if (apiIncludedAttributes.contains(key) && value != null) filteredAttributes[key] = value;
//     });
//     return json.encode({
//       'data': {
//         'type': type,
//         'attributes': filteredAttributes,
//       }
//     });
//   }

//   // ensure there is an "attributes" item in the data
//   PlanningCenterResource() : super() {
//     attributes = DataClass();
//     relationships = DataClass();
//     finishSetup();
//   }

//   PlanningCenterResource.fromData(Map<String, dynamic> data) : super.fromData(data) {
//     id = data['id']; // might be null
//     attributes = DataClass.fromData(this.data['attributes']);
//     relationships = DataClass.fromData(this.data['relationships'] ?? {});
//     finishSetup();
//   }

//   /// by doing things this way, we update the underlying data objects
//   /// inside the dataclasses
//   void updateFromData(Map<String, dynamic> data) {
//     data.forEach((key, value) {
//       if (key == 'attributes') {
//         (value as Map).forEach((key, value) {
//           data['attributes'][key] = value;
//         });
//       } else if (key == 'links') {
//         (value as Map).forEach((key, value) {
//           data['links'][key] = value;
//         });
//       } else if (key == 'relationships') {
//         (value as Map).forEach((key, value) {
//           data['relationships'][key] = value;
//         });
//       } else if (key == 'id') {
//         id = value;
//       } else {
//         data[key] = value;
//       }
//     });
//   }

//   /// just to make sure our local data object
//   /// is properly referencing the real data
//   void finishSetup() {
//     // make sure we import all the proper 'links' if there are any
//     if (data.containsKey('links') && data['links'] is Map) {
//       (data['links'] as Map).forEach((k, v) {
//         links[k.toString()] = v.toString();
//       });
//     }
//     // properly associate the data
//     data['links'] = links;

//     // also make sure to associate the data classes
//     // with their root data
//     data['attributes'] = attributes.data;
//     data['relationships'] = relationships.data;
//   }
// }
