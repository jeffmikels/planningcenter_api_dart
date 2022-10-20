/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.406751
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `memberCount` -> `?order=member_count`
/// - `name` -> `?order=name`
/// - `primaryContactName` -> `?order=primary_contact_name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleHouseholdOrder {
  createdAt,
  memberCount,
  name,
  primaryContactName,
  updatedAt
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleHouseholdFilter { none }

/// Creates a [PcoPeopleHouseholdQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePeople`: include associated people
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleHouseholdQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleHousehold] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereMemberCount`: query on a specific member_count, example: ?where[member_count]=1
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePrimaryContactName`: query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `PcoPeopleHouseholdOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleHouseholdOrder.memberCount` : will order by `member_count`
/// - `PcoPeopleHouseholdOrder.name` : will order by `name`
/// - `PcoPeopleHouseholdOrder.primaryContactName` : will order by `primary_contact_name`
/// - `PcoPeopleHouseholdOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleHouseholdQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleHouseholdOrder, String> _orderMap = {
    PcoPeopleHouseholdOrder.createdAt: 'created_at',
    PcoPeopleHouseholdOrder.memberCount: 'member_count',
    PcoPeopleHouseholdOrder.name: 'name',
    PcoPeopleHouseholdOrder.primaryContactName: 'primary_contact_name',
    PcoPeopleHouseholdOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleHouseholdOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleHouseholdFilter, String> _filterMap = {};
  static String filterString(PcoPeopleHouseholdFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleHouseholdQuery({
    /// include associated people
    /// when true, adds `?include=people` to url
    bool includePeople = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `member_count`
    /// query on a specific member_count, url example: ?where[member_count]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereMemberCount,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `primary_contact_name`
    /// query on a specific primary_contact_name, url example: ?where[primary_contact_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePrimaryContactName,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleHouseholdOrder? orderBy,

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
    if (includePeople) include.add('people');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereMemberCount != null)
      where.add(PlanningCenterApiWhere.parse('member_count', whereMemberCount));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePrimaryContactName != null)
      where.add(PlanningCenterApiWhere.parse(
          'primary_contact_name', wherePrimaryContactName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Household Object
///
/// - Application:        people
/// - Id:                 household
/// - Type:               Household
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/households
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleHousehold()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleHousehold.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// To create a new household, you must specify the primary contact and the people as relationships:
/// `{"data":{"attributes":{"name":"Smith"},"relationships":{"people":{"data":[{"type":"Person","id":"1"},{"type":"Person","id":"2"}]},"primary_contact":{"data":{"type":"Person","id":"1"}}}}}`
///
/// ## Description
/// A household links people together and can have a primary contact. To add a person to an existing household, use the HouseholdMemberships endpoint.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `memberCount` (rw) -> PCO: `member_count`
/// - `primaryContactName` (ro) -> PCO: `primary_contact_name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatar` (rw) -> PCO: `avatar`
/// - `primaryContactId` (rw) -> PCO: `primary_contact_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `person-household-people`: https://api.planningcenteronline.com/people/v2/households/1/people
///
/// Inbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `household-organization-households`: https://api.planningcenteronline.com/people/v2/households
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `household-person-households`: https://api.planningcenteronline.com/people/v2/people/1/households
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Household",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "member_count": 1,
///     "primary_contact_name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar": "string",
///     "primary_contact_id": "primary_key"
///   },
///   "relationships": {
///     "primary_contact": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "people": {
///       "data": [
///         {
///           "type": "Person",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoPeopleHousehold extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Household';
  static const String kTypeId = 'household';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/households';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/households';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people
  static List<String> get canInclude => ['people'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'created_at',
        'member_count',
        'name',
        'primary_contact_name',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'created_at',
        'member_count',
        'name',
        'primary_contact_name',
        'updated_at'
      ];

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
  static const kName = 'name';
  static const kMemberCount = 'member_count';
  static const kPrimaryContactName = 'primary_contact_name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatar = 'avatar';
  static const kPrimaryContactId = 'primary_contact_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['name', 'member_count', 'avatar', 'primary_contact_id'];

  @override
  List<String> get updateAllowed =>
      ['name', 'member_count', 'avatar', 'primary_contact_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get memberCount => _attributes[kMemberCount] ?? 0;
  String get primaryContactName => _attributes[kPrimaryContactName] ?? '';
  String get avatar => _attributes[kAvatar] ?? '';
  String get primaryContactId => _attributes[kPrimaryContactId] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set memberCount(int? x) => (x == null)
      ? _attributes.remove(kMemberCount)
      : _attributes[kMemberCount] = x;

  ///
  /// pass `null` to remove key from attributes
  set avatar(String? x) =>
      (x == null) ? _attributes.remove(kAvatar) : _attributes[kAvatar] = x;

  ///
  /// pass `null` to remove key from attributes
  set primaryContactId(String? x) => (x == null)
      ? _attributes.remove(kPrimaryContactId)
      : _attributes[kPrimaryContactId] = x;

  // typed getters for each relationship

  List<PcoPeoplePerson> get includedPeople =>
      (relationships['people'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeopleHousehold.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleHousehold.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleHousehold] object using this endpoint: `https://api.planningcenteronline.com/people/v2/households`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `memberCount`, `avatar`, `primaryContactId`
  /// - FIELDS USED WHEN UPDATING: `name`, `memberCount`, `avatar`, `primaryContactId`
  factory PcoPeopleHousehold(
      {String? id,
      String? name,
      int? memberCount,
      String? primaryContactName,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? avatar,
      String? primaryContactId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleHousehold.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/households';
    if (name != null) obj._attributes['name'] = name;
    if (memberCount != null) obj._attributes['member_count'] = memberCount;
    if (primaryContactName != null)
      obj._attributes['primary_contact_name'] = primaryContactName;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (avatar != null) obj._attributes['avatar'] = avatar;
    if (primaryContactId != null)
      obj._attributes['primary_contact_id'] = primaryContactId;

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

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/households`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleHousehold>> get({
    String? id,
    PcoPeopleHouseholdQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PcoPeopleHouseholdQuery();

    if (includePeople) query.include.add('people');
    var url = '/people/v2/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships/$householdMembershipId/household`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleHousehold>>
      getFromHouseholdAndHouseholdMembership(
    String householdId,
    String householdMembershipId, {
    PcoPeopleHouseholdQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PcoPeopleHouseholdQuery();

    if (includePeople) query.include.add('people');
    var url =
        '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household';

    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/histories/$historyId/household`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleHousehold>>
      getFromPeopleImportAndHistory(
    String peopleImportId,
    String historyId, {
    PcoPeopleHouseholdQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PcoPeopleHouseholdQuery();

    if (includePeople) query.include.add('people');
    var url =
        '/people/v2/people_imports/$peopleImportId/histories/$historyId/household';

    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/households`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleHousehold>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleHouseholdQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PcoPeopleHouseholdQuery();

    if (includePeople) query.include.add('people');
    var url = '/people/v2/people/$personId/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships`
  Future<PcoCollection<PcoPeopleHouseholdMembership>> getHouseholdMemberships(
      {PcoPeopleHouseholdMembershipQuery? query}) async {
    query ??= PcoPeopleHouseholdMembershipQuery();
    var url = '$apiEndpoint/household_memberships';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/people`
  ///
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  Future<PcoCollection<PcoPeoplePerson>> getPeople(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/people';
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
