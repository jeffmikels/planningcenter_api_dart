/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.062010
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar EventResourceRequest Object
///
/// - Application:        calendar
/// - Id:                 event_resource_request
/// - Type:               EventResourceRequest
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEventResourceRequest.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// A room or resource request for a specific event.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isApprovalSent` (ro) -> PCO: `approval_sent`
/// - `approvalStatus` (ro) -> PCO: `approval_status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `percentApproved` (ro) -> PCO: `percent_approved`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `roomSetupInfo` (ro) -> PCO: `room_setup_info`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `created_by`: include associated created_by
/// - `event`: include associated event
/// - `resource`: include associated resource
/// - `room_setup`: include associated room_setup
/// - `updated_by`: include associated updated_by
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `approval_sent`: (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
/// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resource-eventresourcerequest-resource`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
///
/// Inbound Edges:
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `eventresourcerequest-organization-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventResourceRequest",
///   "id": "1",
///   "attributes": {
///     "approval_sent": true,
///     "approval_status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "percent_approved": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "room_setup_info": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "event_resource_request": {
///       "data": {
///         "type": "EventResourceRequest",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarEventResourceRequest extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventResourceRequest';
  static const String kTypeId = 'event_resource_request';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by
  /// - `event`: include associated event
  /// - `resource`: include associated resource
  /// - `room_setup`: include associated room_setup
  /// - `updated_by`: include associated updated_by
  static List<String> get canInclude =>
      ['created_by', 'event', 'resource', 'room_setup', 'updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_sent`: (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'approval_sent',
        'approval_status',
        'created_at',
        'percent_approved',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kApprovalSent = 'approval_sent';
  static const kApprovalStatus = 'approval_status';
  static const kCreatedAt = 'created_at';
  static const kPercentApproved = 'percent_approved';
  static const kUpdatedAt = 'updated_at';
  static const kQuantity = 'quantity';
  static const kRoomSetupInfo = 'room_setup_info';

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
  bool get isApprovalSent => _attributes[kApprovalSent] == true;
  String get approvalStatus => _attributes[kApprovalStatus] ?? '';
  int get percentApproved => _attributes[kPercentApproved] ?? 0;
  int get quantity => _attributes[kQuantity] ?? 0;
  String get roomSetupInfo => _attributes[kRoomSetupInfo] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];
  List<PcoCalendarEvent> get includedEvent =>
      (relationships['event'] as List?)?.cast<PcoCalendarEvent>() ?? [];
  List<PcoCalendarResource> get includedResource =>
      (relationships['resource'] as List?)?.cast<PcoCalendarResource>() ?? [];
  List<PcoCalendarRoomSetup> get includedRoomSetup =>
      (relationships['room_setup'] as List?)?.cast<PcoCalendarRoomSetup>() ??
      [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedUpdatedBy<T extends PcoResource>() =>
      (relationships['updated_by'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarEventResourceRequest.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/event_resource_requests`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/events/$eventId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/people/$personId/event_resource_requests`
  ///
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/people/$personId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getFromResourceApprovalGroup(
    String resourceApprovalGroupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url =
        '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting one)
  /// using a path like this: `/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getFromResourceBooking(
    String resourceBookingId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url =
        '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request';

    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/event_resource_requests`
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromResource(
    String resourceId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by`
  Future<PcoCollection<PcoCalendarPerson>> getCreatedBy({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResourceApprovalGroups = false,
    bool includeResourceFolder = false,
    bool includeResourceQuestions = false,
    bool includeRoomSetups = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeResourceApprovalGroups)
      query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetup({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContainingResource = false,
    bool includeResourceSuggestions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '$apiEndpoint/room_setup';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by`
  Future<PcoCollection<PcoCalendarPerson>> getUpdatedBy({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/updated_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
