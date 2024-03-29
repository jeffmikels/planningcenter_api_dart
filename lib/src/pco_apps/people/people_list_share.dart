/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.102718
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `group` -> `?order=group`
enum PcoPeopleListShareOrder { createdAt, group }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleListShareFilter { none }

/// Creates a [PcoPeopleListShareQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleListShareQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleListShare] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereGroup`: query on a specific group, example: ?where[group]=value
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePermission`: query on a specific permission, example: ?where[permission]=value
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleListShareOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleListShareOrder.group` : will order by `group`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleListShareQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleListShareOrder, String> _orderMap = {
    PcoPeopleListShareOrder.createdAt: 'created_at',
    PcoPeopleListShareOrder.group: 'group',
  };
  static String orderString(PcoPeopleListShareOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleListShareFilter, String> _filterMap = {};
  static String filterString(PcoPeopleListShareFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleListShareQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `group`
    /// query on a specific group, url example: ?where[group]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereGroup,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `permission`
    /// query on a specific permission, url example: ?where[permission]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePermission,
    PcoPeopleListShareOrder? orderBy,

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
    if (includePerson) include.add('person');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereGroup != null)
      where.add(PlanningCenterApiWhere.parse('group', whereGroup));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePermission != null)
      where.add(PlanningCenterApiWhere.parse('permission', wherePermission));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People ListShare Object
///
/// - Application:        people
/// - Id:                 list_share
/// - Type:               ListShare
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/shares
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/lists/1/shares
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleListShare()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleListShare.fromJson()` constructor.
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
/// A list share indicates who has access to edit a list.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `permission` (rw) -> PCO: `permission`
/// - `group` (rw) -> PCO: `group`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (ro) -> PCO: `name`
/// - `personId` (wo) -> PCO: `person_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-listshare-person`: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
///
/// Inbound Edges:
/// - `listshare-list-shares`: https://api.planningcenteronline.com/people/v2/lists/1/shares
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ListShare",
///   "id": "1",
///   "attributes": {
///     "permission": "value",
///     "group": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleListShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListShare';
  static const String kTypeId = 'list_share';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists/1/shares';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists/1/shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `group`: (URLParameter), query on a specific group, example: ?where[group]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery =>
      ['created_at', 'group', 'name', 'permission'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `group`: (URLParameter), prefix with a hyphen (-group) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'group'];

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
  static const kPermission = 'permission';
  static const kGroup = 'group';
  static const kCreatedAt = 'created_at';
  static const kName = 'name';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['permission', 'group', 'person_id'];

  @override
  List<String> get updateAllowed => ['permission', 'group'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get permission => _getAttribute<String>(kPermission, '');
  String get group => _getAttribute<String>(kGroup, '');
  String get name => _getAttribute<String>(kName, '');

  // setters for object attributes

  /// Possible values: `view` or `manage`
  ///
  /// pass `null` to remove key from attributes
  set permission(String? x) => (x == null)
      ? _attributes.remove(kPermission)
      : _attributes[kPermission] = x;

  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  ///
  /// pass `null` to remove key from attributes
  set group(String? x) =>
      (x == null) ? _attributes.remove(kGroup) : _attributes[kGroup] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _getAttribute<String>(kPersonId, '');

  // typed getters for each relationship

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleListShare.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleListShare.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleListShare] object using this endpoint: `https://api.planningcenteronline.com/people/v2/lists/$listId/shares`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `permission`, `group`, `personId`
  /// - FIELDS USED WHEN UPDATING: `permission`, `group`
  factory PcoPeopleListShare(
      {required String listId,
      String? id,
      String? permission,
      String? group,
      DateTime? createdAt,
      String? name,
      String? personId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleListShare.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/lists/$listId/shares';
    if (permission != null) obj._attributes['permission'] = permission;
    if (group != null) obj._attributes['group'] = group;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (personId != null) obj._attributes['person_id'] = personId;

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

  /// Will get a [PcoCollection] of [PcoPeopleListShare] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/shares`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleListShare>> getSharesFromList(
    String listId, {
    PcoPeopleListShareQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleListShareQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/lists/$listId/shares';

    return PcoCollection.fromApiCall<PcoPeopleListShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
