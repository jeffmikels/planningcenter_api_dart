/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.140852
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
enum PcoGroupsPersonOrder { firstName, lastName }

/// Filtering is not allowed when requesting this object.
enum PcoGroupsPersonFilter { none }

/// Creates a [PcoGroupsPersonQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsPerson] objects can be requested with one or more of the following criteria:
/// - `whereFirstName`: query on a specific first_name, example: ?where[first_name]=string
/// - `whereLastName`: query on a specific last_name, example: ?where[last_name]=string
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
/// - `PcoGroupsPersonOrder.firstName` : will order by `first_name`
/// - `PcoGroupsPersonOrder.lastName` : will order by `last_name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsPersonOrder, String> _orderMap = {
    PcoGroupsPersonOrder.firstName: 'first_name',
    PcoGroupsPersonOrder.lastName: 'last_name',
  };
  static String orderString(PcoGroupsPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsPersonFilter, String> _filterMap = {};
  static String filterString(PcoGroupsPersonFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsPersonQuery({
    /// Query by `first_name`
    /// query on a specific first_name, url example: ?where[first_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFirstName,

    /// Query by `last_name`
    /// query on a specific last_name, url example: ?where[last_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLastName,
    PcoGroupsPersonOrder? orderBy,

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
    if (whereFirstName != null)
      where.add(PlanningCenterApiWhere.parse('first_name', whereFirstName));
    if (whereLastName != null)
      where.add(PlanningCenterApiWhere.parse('last_name', whereLastName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups Person Object
///
/// - Application:        groups
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/people
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsPerson.fromJson()` constructor.
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
/// - `addresses` (ro) -> PCO: `addresses`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `emailAddresses` (ro) -> PCO: `email_addresses`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `permissions` (ro) -> PCO: `permissions`
/// - `phoneNumbers` (ro) -> PCO: `phone_numbers`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-person-events`: https://api.planningcenteronline.com/groups/v2/people/1/events
/// - `group-person-groups`: https://api.planningcenteronline.com/groups/v2/people/1/groups
/// - `membership-person-memberships`: https://api.planningcenteronline.com/groups/v2/people/1/memberships
///
/// Inbound Edges:
/// - `person-attendance-person`: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
/// - `person-group-people`: https://api.planningcenteronline.com/groups/v2/groups/1/people
/// - `person-organization-people`: https://api.planningcenteronline.com/groups/v2/people
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "addresses": [],
///     "avatar_url": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "email_addresses": [],
///     "first_name": "string",
///     "last_name": "string",
///     "permissions": "string",
///     "phone_numbers": []
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsPerson extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static List<String> get canQuery => ['first_name', 'last_name'];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name', 'last_name'];

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
  static const kAddresses = 'addresses';
  static const kAvatarUrl = 'avatar_url';
  static const kCreatedAt = 'created_at';
  static const kEmailAddresses = 'email_addresses';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kPermissions = 'permissions';
  static const kPhoneNumbers = 'phone_numbers';

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
  List get addresses => _attributes[kAddresses] ?? [];
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';
  List get emailAddresses => _attributes[kEmailAddresses] ?? [];
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get permissions => _attributes[kPermissions] ?? '';
  List get phoneNumbers => _attributes[kPhoneNumbers] ?? [];

  // Class Constructors
  PcoGroupsPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsPerson] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsPerson(
      {String? id,
      List? addresses,
      String? avatarUrl,
      DateTime? createdAt,
      List? emailAddresses,
      String? firstName,
      String? lastName,
      String? permissions,
      List? phoneNumbers,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsPerson.empty();
    obj._id = id;
    if (addresses != null) obj._attributes['addresses'] = addresses;
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (emailAddresses != null)
      obj._attributes['email_addresses'] = emailAddresses;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (phoneNumbers != null) obj._attributes['phone_numbers'] = phoneNumbers;

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

  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/people`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsPerson>> get({
    String? id,
    PcoGroupsPersonQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsPersonQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsPerson] object
  /// using a path like this: `/groups/v2/people/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsPerson?> getSingle(
    String id, {
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();

    var url = '/groups/v2/people/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsPerson>> getAll({
    String? id,
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();
    query.getAll = true;

    var url = '/groups/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/attendances/$attendanceId/person`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsPerson>> getFromEventAndAttendance(
    String eventId,
    String attendanceId, {
    String? id,
    PcoGroupsPersonQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsPersonQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsPerson] object
  /// using a path like this: `/groups/v2/events/$eventId/attendances/$attendanceId/person/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsPerson?> getSingleFromEventAndAttendance(
    String eventId,
    String attendanceId,
    String id, {
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();

    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/attendances/$attendanceId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsPerson>> getAllFromEventAndAttendance(
    String eventId,
    String attendanceId, {
    String? id,
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();
    query.getAll = true;

    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/people`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsPerson>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsPersonQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGroupsPersonQuery();
    if (getAll) query.getAll = true;

    var url = '/groups/v2/groups/$groupId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsPerson] object
  /// using a path like this: `/groups/v2/groups/$groupId/people/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsPerson?> getSingleFromGroup(
    String groupId,
    String id, {
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();

    var url = '/groups/v2/groups/$groupId/people/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsPerson>> getAllFromGroup(
    String groupId, {
    String? id,
    PcoGroupsPersonQuery? query,
  }) async {
    query ??= PcoGroupsPersonQuery();
    query.getAll = true;

    var url = '/groups/v2/groups/$groupId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  Future<PcoCollection<PcoGroupsEvent>> getEvents(
      {PcoGroupsEventQuery? query}) async {
    query ??= PcoGroupsEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups(
      {PcoGroupsGroupQuery? query}) async {
    query ??= PcoGroupsGroupQuery();
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/memberships`
  Future<PcoCollection<PcoGroupsMembership>> getMemberships(
      {PcoGroupsMembershipQuery? query}) async {
    query ??= PcoGroupsMembershipQuery();
    var url = '$apiEndpoint/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
