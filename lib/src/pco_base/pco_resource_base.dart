part of pco;

class ReadOnlyMapView<K, V> extends Object {
  final Map<K, V> _internal;

  operator [](K key) => _internal[key];

  ReadOnlyMapView._(this._internal);
  factory ReadOnlyMapView(Map<K, V> map) {
    return ReadOnlyMapView<K, V>._(map);
  }

  toJson() => _internal;

  @override
  toString() => _internal.toString();
}

// import 'pco_api_base.dart';
// import 'pco_constructors.dart';

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
  /// and allows a user to access arbitrary data in the attributes by actual api name
  ///
  /// WARNING: This [Map] cannot be modified.
  ReadOnlyMapView<String, dynamic> get attributes =>
      ReadOnlyMapView(_attributes);
  final Map<String, dynamic> _attributes = {};

  /// contains relationships parsed into objects
  /// even though the api sends relationship objects as Maps or Lists
  /// we always put them into lists for consistency
  ReadOnlyMapView<String, List<PcoResource>> get relationships =>
      ReadOnlyMapView(_relationships);
  final Map<String, List<PcoResource>> _relationships = {};

  /// contains the links data returned by the api if present
  ReadOnlyMapView<String, dynamic> get links => ReadOnlyMapView(_links);
  final Map<String, dynamic> _links = {};

  // all planning center resources implement at least these fields
  DateTime get createdAt => DateTime.parse(_attributes[kCreatedAt]!);
  DateTime get updatedAt => DateTime.parse(_attributes[kUpdatedAt]!);

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
        if (res.data.isNotEmpty) {
          // apiresponses now always give data as a list
          // update self with new data before returning response
          fromJson(res.data.first.asMap);
        }
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
      _attributes
        ..clear()
        ..addAll(data['attributes']);
    }

    // update the links
    if (data.containsKey('links')) {
      _links.addAll(data['links']);
    }

    // process relationships, but first ensure
    // all relationship objects are actually lists
    if (data.containsKey('relationships')) {
      _relationships.clear();
      // parse each relationship into its relevant object
      _relationships.addAll(handleItems(data['relationships']));
    }
  }

  /// this assumes that the relationship object has already been populated
  /// because it updates the relationships objects with the included data
  void handleIncludes(List<Map<String, dynamic>> included) {
    // make a quick mapping for later reference into nested objects
    Map<String, PcoResource> relDataMap = {};
    _relationships.forEach((key, items) {
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
/// Finally [items] is a typed list of the response data encapsulated by the appropriate class.
class PcoCollection<T extends PcoResource> {
  final String endpoint;
  final String apiVersion;

  PlanningCenterApiResponse response;
  PlanningCenterApiQuery query;
  PlanningCenterApiMeta meta;

  List<T> items = [];

  /// @Deprecated: use `items` instead
  List<T> get data => items; // backwards compatibility

  bool get hasMore => meta.nextOffset != null;

  bool get isError => response.isError;
  PlanningCenterApiError? get error => response.error;
  String get errorMessage => error?.message ?? '';

  PcoCollection(this.items, this.meta, this.response, this.query, this.endpoint,
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
    List<T> items = [];

    // handle the main data
    for (var item in response.data) {
      var res = buildResource<T>(response.application, item.asMap,
          withIncludes: response.included);
      if (res != null) items.add(res as T);
    }

    return PcoCollection<T>(
        items, response.meta, response, response.query, endpoint, apiVersion);
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
    if (newCollection.items.isNotEmpty) {
      query = newCollection.query;
      meta = newCollection.meta;
      response = newCollection.response;
      items.addAll(newCollection.items);
      return true;
    }
    return false;
  }
}
