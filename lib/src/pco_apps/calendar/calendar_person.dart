/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.506355
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Calendar Person Object
///
/// - Application:        calendar
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/people
/// - Create Endpoint:    NONE
///
/// ## Description
/// The people in your organization with access to Calendar.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `isChild` (ro) -> PCO: `child`
/// - `contactData` (ro) -> PCO: `contact_data`
/// - `gender` (ro) -> PCO: `gender`
/// - `isHasAccess` (ro) -> PCO: `has_access`
/// - `namePrefix` (ro) -> PCO: `name_prefix`
/// - `nameSuffix` (ro) -> PCO: `name_suffix`
/// - `pendingRequestCount` (ro) -> PCO: `pending_request_count`
/// - `permissions` (ro) -> PCO: `permissions`
/// - `isResolvesConflicts` (ro) -> PCO: `resolves_conflicts`
/// - `isSiteAdministrator` (ro) -> PCO: `site_administrator`
/// - `status` (ro) -> PCO: `status`
/// - `eventPermissionsType` (ro) -> PCO: `event_permissions_type`
/// - `peoplePermissionsType` (ro) -> PCO: `people_permissions_type`
/// - `roomPermissionsType` (ro) -> PCO: `room_permissions_type`
/// - `resourcesPermissionsType` (ro) -> PCO: `resources_permissions_type`
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
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
///
/// Inbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
/// - `person-organization-people`: https://api.planningcenteronline.com/calendar/v2/people
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
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
///     "created_at": "2000-01-01T12:00:00Z",
///     "first_name": "string",
///     "last_name": "string",
///     "middle_name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string",
///     "child": true,
///     "contact_data": "string",
///     "gender": "string",
///     "has_access": true,
///     "name_prefix": "string",
///     "name_suffix": "string",
///     "pending_request_count": 1,
///     "permissions": 1,
///     "resolves_conflicts": true,
///     "site_administrator": true,
///     "status": "value",
///     "event_permissions_type": "string",
///     "people_permissions_type": "string",
///     "room_permissions_type": "string",
///     "resources_permissions_type": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarPerson extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  /// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'first_name', 'last_name', 'middle_name', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'first_name', 'last_name', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kMiddleName = 'middle_name';
  static const kUpdatedAt = 'updated_at';
  static const kAvatarUrl = 'avatar_url';
  static const kChild = 'child';
  static const kContactData = 'contact_data';
  static const kGender = 'gender';
  static const kHasAccess = 'has_access';
  static const kNamePrefix = 'name_prefix';
  static const kNameSuffix = 'name_suffix';
  static const kPendingRequestCount = 'pending_request_count';
  static const kPermissions = 'permissions';
  static const kResolvesConflicts = 'resolves_conflicts';
  static const kSiteAdministrator = 'site_administrator';
  static const kStatus = 'status';
  static const kEventPermissionsType = 'event_permissions_type';
  static const kPeoplePermissionsType = 'people_permissions_type';
  static const kRoomPermissionsType = 'room_permissions_type';
  static const kResourcesPermissionsType = 'resources_permissions_type';

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
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  bool get isChild => attributes[kChild] == true;
  String get contactData => attributes[kContactData] ?? '';
  String get gender => attributes[kGender] ?? '';
  bool get isHasAccess => attributes[kHasAccess] == true;
  String get namePrefix => attributes[kNamePrefix] ?? '';
  String get nameSuffix => attributes[kNameSuffix] ?? '';
  int get pendingRequestCount => attributes[kPendingRequestCount] ?? 0;
  int get permissions => attributes[kPermissions] ?? 0;
  bool get isResolvesConflicts => attributes[kResolvesConflicts] == true;
  bool get isSiteAdministrator => attributes[kSiteAdministrator] == true;
  String get status => attributes[kStatus] ?? '';
  String get eventPermissionsType => attributes[kEventPermissionsType] ?? '';
  String get peoplePermissionsType => attributes[kPeoplePermissionsType] ?? '';
  String get roomPermissionsType => attributes[kRoomPermissionsType] ?? '';
  String get resourcesPermissionsType =>
      attributes[kResourcesPermissionsType] ?? '';

  // Class Constructors
  PcoCalendarPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarPerson.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/people`
  ///
  /// Available Query Filters:
  /// - `event_owners`
  static Future<PcoCollection<PcoCalendarPerson>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url = '/calendar/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/resolved_by`
  static Future<PcoCollection<PcoCalendarPerson>> getResolvedByFromConflict(
      String conflictId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resolved_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/owner`
  static Future<PcoCollection<PcoCalendarPerson>> getOwnerFromEvent(
      String eventId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url = '/calendar/v2/events/$eventId/owner';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by`
  static Future<PcoCollection<PcoCalendarPerson>>
      getCreatedByFromEventResourceRequest(String eventResourceRequestId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by`
  static Future<PcoCollection<PcoCalendarPerson>>
      getUpdatedByFromEventResourceRequest(String eventResourceRequestId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people`
  static Future<PcoCollection<PcoCalendarPerson>>
      getPeopleFromResourceApprovalGroup(String resourceApprovalGroupId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url =
        '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests`
  ///
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequests(
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
