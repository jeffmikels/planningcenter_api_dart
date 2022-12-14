/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.139510
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `firstName` -> `?order=first_name`
/// - `joinedAt` -> `?order=joined_at`
/// - `lastName` -> `?order=last_name`
/// - `role` -> `?order=role`
enum PcoGroupsMembershipOrder { firstName, joinedAt, lastName, role }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsMembershipFilter { none }

/// Creates a [PcoGroupsMembershipQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsMembership] objects can be requested with one or more of the following criteria:
/// - `whereRole`: query on a specific role, example: ?where[role]=string
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
/// - `PcoGroupsMembershipOrder.firstName` : will order by `first_name`
/// - `PcoGroupsMembershipOrder.joinedAt` : will order by `joined_at`
/// - `PcoGroupsMembershipOrder.lastName` : will order by `last_name`
/// - `PcoGroupsMembershipOrder.role` : will order by `role`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsMembershipQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsMembershipOrder, String> _orderMap = {
    PcoGroupsMembershipOrder.firstName: 'first_name',
    PcoGroupsMembershipOrder.joinedAt: 'joined_at',
    PcoGroupsMembershipOrder.lastName: 'last_name',
    PcoGroupsMembershipOrder.role: 'role',
  };
  static String orderString(PcoGroupsMembershipOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsMembershipFilter, String> _filterMap = {};
  static String filterString(PcoGroupsMembershipFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsMembershipQuery({
    /// Query by `role`
    /// query on a specific role, url example: ?where[role]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereRole,
    PcoGroupsMembershipOrder? orderBy,

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
    if (whereRole != null)
      where.add(PlanningCenterApiWhere.parse('role', whereRole));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups Membership Object
///
/// - Application:        groups
/// - Id:                 membership
/// - Type:               Membership
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - Create Endpoint:    https://api.planningcenteronline.com/groups/v2/groups/1/memberships
///
/// ## Instantiation
/// - Create a new instance using the `PcoGroupsMembership()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGroupsMembership.fromJson()` constructor.
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
/// - `accountCenterIdentifier` (ro) -> PCO: `account_center_identifier`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `colorIdentifier` (ro) -> PCO: `color_identifier`
/// - `emailAddress` (ro) -> PCO: `email_address`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `joinedAt` (rw) -> PCO: `joined_at`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `phoneNumber` (ro) -> PCO: `phone_number`
/// - `role` (rw) -> PCO: `role`
/// - `personId` (wo) -> PCO: `person_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
///
/// Inbound Edges:
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `membership-person-memberships`: https://api.planningcenteronline.com/groups/v2/people/1/memberships
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Membership",
///   "id": "1",
///   "attributes": {
///     "account_center_identifier": "string",
///     "avatar_url": "string",
///     "color_identifier": "string",
///     "email_address": "string",
///     "first_name": "string",
///     "joined_at": "2000-01-01T12:00:00Z",
///     "last_name": "string",
///     "phone_number": "string",
///     "role": "string"
///   },
///   "relationships": {
///     "group": {
///       "data": {
///         "type": "Group",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsMembership extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Membership';
  static const String kTypeId = 'membership';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/groups/1/memberships';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/groups/v2/groups/1/memberships';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=string
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `joined_at`: (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy =>
      ['first_name', 'joined_at', 'last_name', 'role'];

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
  static const kAccountCenterIdentifier = 'account_center_identifier';
  static const kAvatarUrl = 'avatar_url';
  static const kColorIdentifier = 'color_identifier';
  static const kEmailAddress = 'email_address';
  static const kFirstName = 'first_name';
  static const kJoinedAt = 'joined_at';
  static const kLastName = 'last_name';
  static const kPhoneNumber = 'phone_number';
  static const kRole = 'role';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['person_id', 'role', 'joined_at'];

  @override
  List<String> get updateAllowed => ['role', 'joined_at'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get accountCenterIdentifier =>
      _attributes[kAccountCenterIdentifier] ?? '';
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';
  String get colorIdentifier => _attributes[kColorIdentifier] ?? '';
  String get emailAddress => _attributes[kEmailAddress] ?? '';
  String get firstName => _attributes[kFirstName] ?? '';
  DateTime get joinedAt => DateTime.parse(_attributes[kJoinedAt] ?? '');
  String get lastName => _attributes[kLastName] ?? '';
  String get phoneNumber => _attributes[kPhoneNumber] ?? '';
  String get role => _attributes[kRole] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set joinedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kJoinedAt)
      : _attributes[kJoinedAt] = x.toIso8601String();

  /// Can be either `leader` or `member`
  ///
  /// pass `null` to remove key from attributes
  set role(String? x) =>
      (x == null) ? _attributes.remove(kRole) : _attributes[kRole] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  // Class Constructors
  PcoGroupsMembership.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGroupsMembership.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsMembership] object using this endpoint: `https://api.planningcenteronline.com/groups/v2/groups/$groupId/memberships`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `personId`, `role`, `joinedAt`
  /// - FIELDS USED WHEN UPDATING: `role`, `joinedAt`
  factory PcoGroupsMembership(
      {required String groupId,
      String? id,
      String? accountCenterIdentifier,
      String? avatarUrl,
      String? colorIdentifier,
      String? emailAddress,
      String? firstName,
      DateTime? joinedAt,
      String? lastName,
      String? phoneNumber,
      String? role,
      String? personId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsMembership.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/groups/v2/groups/$groupId/memberships';
    if (accountCenterIdentifier != null)
      obj._attributes['account_center_identifier'] = accountCenterIdentifier;
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
    if (colorIdentifier != null)
      obj._attributes['color_identifier'] = colorIdentifier;
    if (emailAddress != null) obj._attributes['email_address'] = emailAddress;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (joinedAt != null)
      obj._attributes['joined_at'] = joinedAt.toIso8601String();
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (phoneNumber != null) obj._attributes['phone_number'] = phoneNumber;
    if (role != null) obj._attributes['role'] = role;
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

  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/memberships`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsMembership>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsMembershipQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsMembershipQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/groups/$groupId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsMembership] object
  /// using a path like this: `/groups/v2/groups/$groupId/memberships/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsMembership?> getSingleFromGroup(
    String groupId,
    String id, {
    PcoGroupsMembershipQuery? query,
  }) async {
    query ??= PcoGroupsMembershipQuery();

    var url = '/groups/v2/groups/$groupId/memberships/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/memberships`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsMembership>> getAllFromGroup(
    String groupId, {
    String? id,
    PcoGroupsMembershipQuery? query,
  }) async {
    query ??= PcoGroupsMembershipQuery();
    query.getAll = true;

    var url = '/groups/v2/groups/$groupId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/memberships`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsMembership>> getFromPerson(
    String personId, {
    String? id,
    PcoGroupsMembershipQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsMembershipQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/people/$personId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsMembership] object
  /// using a path like this: `/groups/v2/people/$personId/memberships/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsMembership?> getSingleFromPerson(
    String personId,
    String id, {
    PcoGroupsMembershipQuery? query,
  }) async {
    query ??= PcoGroupsMembershipQuery();

    var url = '/groups/v2/people/$personId/memberships/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/memberships`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsMembership>> getAllFromPerson(
    String personId, {
    String? id,
    PcoGroupsMembershipQuery? query,
  }) async {
    query ??= PcoGroupsMembershipQuery();
    query.getAll = true;

    var url = '/groups/v2/people/$personId/memberships';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group`
  Future<PcoCollection<PcoGroupsGroup>> getGroup(
      {PcoGroupsGroupQuery? query}) async {
    query ??= PcoGroupsGroupQuery();
    var url = '$apiEndpoint/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
