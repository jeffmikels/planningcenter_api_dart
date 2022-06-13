/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.852190
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
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
  List get addresses => attributes[kAddresses] ?? [];
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get permissions => attributes[kPermissions] ?? '';
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoGroupsPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGroupsPerson.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/people`
  static Future<PcoCollection<PcoGroupsPerson>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/attendances/$attendanceId/person`
  static Future<PcoCollection<PcoGroupsPerson>> getFromEventAndAttendance(
      String eventId, String attendanceId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/people`
  static Future<PcoCollection<PcoGroupsPerson>> getPeopleFromGroup(
      String groupId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/groups/$groupId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  Future<PcoCollection<PcoGroupsEvent>> getEvents(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/memberships`
  Future<PcoCollection<PcoGroupsMembership>> getMemberships(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '$apiEndpoint/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
