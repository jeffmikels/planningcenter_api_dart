import 'dart:convert';

import 'pco_api_base.dart';
import 'pco_constructors.dart';

/// follows the implementation of a JSON:API resource object
///
/// Implementations should override static members [application], [typeString], [apiVersion]
/// as well as all the field mapping constants.
///
/// Implementations should override the getters [createAllowed], [updateAllowed],
/// and [defaultAttributes].
///
/// Implementations should also have a static [typeEndpoint] and override [itemEndpoint]
abstract class PcoResource {
  /// implementations should duplicate/override these
  static const String pcoApplication = '';
  static const String typeString = '';
  static const String apiVersion = '';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = '';

  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  /// planning center resources must be tied to an api
  PlanningCenter get api => PlanningCenter.instance;

  /// all planning center resources must have a [type]
  late final String resourceType;
  late final String application;

  /// will be null if resource is new and not yet created
  String? _id;
  String? get id => _id;

  /// PcoResources include their own path as a link object
  /// but this might be null if we haven't created/fetched the object yet
  String? _apiPath;
  String? get apiPath => links['self'] ?? _apiPath ?? shortestEdgePath();
  String? get apiEndpoint => '/' + (apiPath?.split('/').sublist(3).join('/') ?? '');

  /// indicate whether an item is full or partial
  bool fetched = false;

  /// -- DEPRECATED -- I don't think this is needed.
  /// each implementation needs to override this;
  // String itemEndpoint() => '${collectionEndpoint()}${id ?? ''}';

  // these getters allow us to define which fields planning center
  // will accept on certain operations
  List<String> get createAllowed => [];
  List<String> get updateAllowed => [];

  // -- DATA FIELDS WITH GETTERS AND SETTERS --

  /// contains the underlying attributes returned by the api
  /// allow a user to access arbitrary data in the attributes by actual api name
  final Map<String, dynamic> attributes = {};

  /// contains the relationships data returned by the api if present
  Map<String, dynamic> get relationshipsData => _relationshipsData;
  final Map<String, dynamic> _relationshipsData = {};

  /// contains relationships parsed into objects
  Map<String, PcoResource> get relationships => _relationships;
  final Map<String, PcoResource> _relationships = {};

  /// contains the links data returned by the api if present
  final Map<String, dynamic> _links = {};
  Map<String, dynamic> get links => _links;

  // all planning center resources implement at least these fields
  DateTime get createdAt => DateTime.parse(attributes[kCreatedAt]!);
  DateTime get updatedAt => DateTime.parse(attributes[kUpdatedAt]!);

  PcoResource(this.application, this.resourceType);
  PcoResource.fromJson(this.application, this.resourceType, Map<String, dynamic> data) {
    if (!data.containsKey('type')) {
      print(data);
      throw FormatException('data supplied does not meet JSON:API specs. No "type" field found');
    }
    fromJson(data);
  }

  Future<bool> _call(path, verb, [data = '']) async {
    var res = await api.call(path, verb: verb, apiVersion: apiVersion, data: data);
    if (!res.isError) {
      fromJson(res.data);
      return fetched = true;
    }
    return false;
  }

  Future<bool> fetch() async {
    if (id != null && apiPath != null) return _call('get', apiPath);
    return false;
  }

  Future<bool> save() async {
    var jsonString = json.encode({'data': id == null ? toCreateResource() : toUpdateResource()});
    return _call(id == null ? 'post' : 'patch', jsonString);
  }

  /// Takes a full JSON:API Response Object (the contents of a "data" field)
  /// will clear and update [id], [apiPath], [attributes] and [_relationships]
  fromJson(Map<String, dynamic> data) {
    if (data['type'] != resourceType) {
      throw FormatException('Incorrect data type: ${data['type']} given, but ${resourceType} expected.');
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

    // TODO: parse the relationships into their proper objects
    if (data.containsKey('relationships')) {
      _relationshipsData
        ..clear()
        ..addAll(data['relationships']);

      // parse each relationship into its relevant object
      relationships.clear();
      if (data['relationships'] is Map) {
        (data['relationships'] as Map).forEach((key, value) {
          if (value['data'] == null || value['data'] is List) return;
          try {
            var res = buildResource(application, value['data']['type'], value['data']);
            if (res != null) relationships[key] = res;
          } on FormatException catch (e) {
            print(e);
          }
        });
      }
    }
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
    return retval;
  }

  Map<String, dynamic> toUpdateResource() {
    var retval = toJson();
    retval['attributes'] = filteredAttributes(updateAllowed);
    return retval;
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
class DataClass {
  Map<String, dynamic> data = {};

  DataClass();

  DataClass.fromData(this.data);

  dynamic get(String key) => data[key];
  set(String key, dynamic value) => data[key] = value;

  Object toJson() => data;
}

abstract class PlanningCenterResource extends DataClass {
  final List apiIncludedAttributes = [];

  String itemEndpoint();

  String? id; // will not show up in json fields
  String get type => get('type');
  DateTime get createdAt => DateTime.parse(attributes.get('created_at')!);
  DateTime get updatedAt => DateTime.parse(attributes.get('updated_at')!);

  late DataClass attributes;
  late DataClass relationships;
  // Map<String, String> get attributes => _get('attributes') ?? {};

  Map<String, String> links = {};

  /// returns a string ready for the api wrapped in a "data" object
  /// {"data": ...}
  /// never includes relationships
  String get apiEncoded {
    var filteredAttributes = <String, dynamic>{};
    attributes.data.forEach((key, value) {
      if (apiIncludedAttributes.contains(key) && value != null) filteredAttributes[key] = value;
    });
    return json.encode({
      'data': {
        'type': type,
        'attributes': filteredAttributes,
      }
    });
  }

  // ensure there is an "attributes" item in the data
  PlanningCenterResource() : super() {
    attributes = DataClass();
    relationships = DataClass();
    finishSetup();
  }

  PlanningCenterResource.fromData(Map<String, dynamic> data) : super.fromData(data) {
    id = data['id']; // might be null
    attributes = DataClass.fromData(this.data['attributes']);
    relationships = DataClass.fromData(this.data['relationships'] ?? {});
    finishSetup();
  }

  /// by doing things this way, we update the underlying data objects
  /// inside the dataclasses
  void updateFromData(Map<String, dynamic> data) {
    data.forEach((key, value) {
      if (key == 'attributes') {
        (value as Map).forEach((key, value) {
          data['attributes'][key] = value;
        });
      } else if (key == 'links') {
        (value as Map).forEach((key, value) {
          data['links'][key] = value;
        });
      } else if (key == 'relationships') {
        (value as Map).forEach((key, value) {
          data['relationships'][key] = value;
        });
      } else if (key == 'id') {
        id = value;
      } else {
        data[key] = value;
      }
    });
  }

  /// just to make sure our local data object
  /// is properly referencing the real data
  void finishSetup() {
    // make sure we import all the proper 'links' if there are any
    if (data.containsKey('links') && data['links'] is Map) {
      (data['links'] as Map).forEach((k, v) {
        links[k.toString()] = v.toString();
      });
    }
    // properly associate the data
    data['links'] = links;

    // also make sure to associate the data classes
    // with their root data
    data['attributes'] = attributes.data;
    data['relationships'] = relationships.data;
  }
}
