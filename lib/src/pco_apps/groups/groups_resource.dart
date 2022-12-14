/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.141470
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `lastUpdated` -> `?order=last_updated`
/// - `name` -> `?order=name`
enum PcoGroupsResourceOrder { lastUpdated, name }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsResourceFilter { none }

/// Creates a [PcoGroupsResourceQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoGroupsResourceOrder.lastUpdated` : will order by `last_updated`
/// - `PcoGroupsResourceOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsResourceQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsResourceOrder, String> _orderMap = {
    PcoGroupsResourceOrder.lastUpdated: 'last_updated',
    PcoGroupsResourceOrder.name: 'name',
  };
  static String orderString(PcoGroupsResourceOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsResourceFilter, String> _filterMap = {};
  static String filterString(PcoGroupsResourceFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsResourceQuery({
    PcoGroupsResourceOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups Resource Object
///
/// - Application:        groups
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsResource.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `description` (ro) -> PCO: `description`
/// - `lastUpdated` (ro) -> PCO: `last_updated`
/// - `name` (ro) -> PCO: `name`
/// - `type` (ro) -> PCO: `type`
/// - `visibility` (ro) -> PCO: `visibility`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
///
/// Inbound Edges:
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `resource-grouptype-resources`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Resource",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "last_updated": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "type": "string",
///     "visibility": "value"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsResource extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Resource';
  static const String kTypeId = 'resource';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/group_types/1/resources';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `last_updated`: (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['last_updated', 'name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDescription = 'description';
  static const kLastUpdated = 'last_updated';
  static const kName = 'name';
  static const kType = 'type';
  static const kVisibility = 'visibility';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get description => _attributes[kDescription] ?? '';
  DateTime get lastUpdated => DateTime.parse(_attributes[kLastUpdated] ?? '');
  String get name => _attributes[kName] ?? '';
  String get type => _attributes[kType] ?? '';
  String get visibility => _attributes[kVisibility] ?? '';

  // Class Constructors
  PcoGroupsResource.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsResource.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsResource] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsResource(
      {String? id,
      String? description,
      DateTime? lastUpdated,
      String? name,
      String? visibility,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsResource.empty();
    obj._id = id;
    if (description != null) obj._attributes['description'] = description;
    if (lastUpdated != null)
      obj._attributes['last_updated'] = lastUpdated.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (visibility != null) obj._attributes['visibility'] = visibility;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/resources`
  ///
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  ///
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsResource>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsResourceQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsResourceQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/groups/$groupId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsResource] object
  /// using a path like this: `/groups/v2/groups/$groupId/resources/[id]`
  ///
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsResource?> getSingleFromGroup(
    String groupId,
    String id, {
    PcoGroupsResourceQuery? query,
  }) async {
    query ??= PcoGroupsResourceQuery();

    var url = '/groups/v2/groups/$groupId/resources/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/resources`
  ///
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsResource>> getAllFromGroup(
    String groupId, {
    String? id,
    PcoGroupsResourceQuery? query,
  }) async {
    query ??= PcoGroupsResourceQuery();
    query.getAll = true;

    var url = '/groups/v2/groups/$groupId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsResource>> getFromGroupType(
    String groupTypeId, {
    String? id,
    PcoGroupsResourceQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsResourceQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/group_types/$groupTypeId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsResource] object
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsResource?> getSingleFromGroupType(
    String groupTypeId,
    String id, {
    PcoGroupsResourceQuery? query,
  }) async {
    query ??= PcoGroupsResourceQuery();

    var url = '/groups/v2/group_types/$groupTypeId/resources/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsResource>> getAllFromGroupType(
    String groupTypeId, {
    String? id,
    PcoGroupsResourceQuery? query,
  }) async {
    query ??= PcoGroupsResourceQuery();
    query.getAll = true;

    var url = '/groups/v2/group_types/$groupTypeId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources/$resourceId/download`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsResource>>
      getDownloadFromGroupTypeAndResource(
    String groupTypeId,
    String resourceId, {
    PcoGroupsResourceQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsResourceQuery();
    if (getAll) query.getAll = true;

    var url =
        '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download';

    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsResource>>
      getVisitFromGroupTypeAndResource(
    String groupTypeId,
    String resourceId, {
    PcoGroupsResourceQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsResourceQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit';

    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download`
  Future<PcoCollection<PcoGroupsResource>> getDownload(
      {PcoGroupsResourceQuery? query}) async {
    query ??= PcoGroupsResourceQuery();
    var url = '$apiEndpoint/download';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit`
  Future<PcoCollection<PcoGroupsResource>> getVisit(
      {PcoGroupsResourceQuery? query}) async {
    query ??= PcoGroupsResourceQuery();
    var url = '$apiEndpoint/visit';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
