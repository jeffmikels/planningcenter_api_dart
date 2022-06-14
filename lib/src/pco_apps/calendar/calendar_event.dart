/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.058330
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar Event Object
///
/// - Application:        calendar
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEvent.fromJson()` constructor.
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
/// An event.
///
/// May contain information such as who owns
/// the event, visibility on Church Center and a public-facing summary.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `approvalStatus` (ro) -> PCO: `approval_status`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `details` (ro) -> PCO: `details`
/// - `imageUrl` (ro) -> PCO: `image_url`
/// - `name` (ro) -> PCO: `name`
/// - `percentApproved` (ro) -> PCO: `percent_approved`
/// - `percentRejected` (ro) -> PCO: `percent_rejected`
/// - `registrationUrl` (ro) -> PCO: `registration_url`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isVisibleInChurchCenter` (ro) -> PCO: `visible_in_church_center`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `attachments`: include associated attachments
/// - `owner`: include associated owner
/// - `tags`: include associated tags
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `percent_rejected`: (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `visible_in_church_center`: (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
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
/// - `attachment-event-attachments`: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `eventinstance-event-event_instances`: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `feed-event-feed`: https://api.planningcenteronline.com/calendar/v2/events/1/feed
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `tag-event-tags`: https://api.planningcenteronline.com/calendar/v2/events/1/tags
///
/// Inbound Edges:
/// - `event-attachment-event`: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
/// - `event-eventinstance-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `event-eventtime-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
/// - `event-organization-events`: https://api.planningcenteronline.com/calendar/v2/events
/// - `event-tag-events`: https://api.planningcenteronline.com/calendar/v2/tags/1/events
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "approval_status": "string",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "details": "string",
///     "image_url": "string",
///     "name": "string",
///     "percent_approved": 1,
///     "percent_rejected": 1,
///     "registration_url": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "visible_in_church_center": true
///   },
///   "relationships": {
///     "owner": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarEvent extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments
  /// - `owner`: include associated owner
  /// - `tags`: include associated tags
  static List<String> get canInclude => ['attachments', 'owner', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `percent_rejected`: (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `visible_in_church_center`: (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
  static List<String> get canQuery => [
        'approval_status',
        'created_at',
        'name',
        'percent_approved',
        'percent_rejected',
        'updated_at',
        'visible_in_church_center'
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
  static const kApprovalStatus = 'approval_status';
  static const kArchivedAt = 'archived_at';
  static const kCreatedAt = 'created_at';
  static const kDetails = 'details';
  static const kImageUrl = 'image_url';
  static const kName = 'name';
  static const kPercentApproved = 'percent_approved';
  static const kPercentRejected = 'percent_rejected';
  static const kRegistrationUrl = 'registration_url';
  static const kUpdatedAt = 'updated_at';
  static const kVisibleInChurchCenter = 'visible_in_church_center';

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
  String get approvalStatus => _attributes[kApprovalStatus] ?? '';
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  String get details => _attributes[kDetails] ?? '';
  String get imageUrl => _attributes[kImageUrl] ?? '';
  String get name => _attributes[kName] ?? '';
  int get percentApproved => _attributes[kPercentApproved] ?? 0;
  int get percentRejected => _attributes[kPercentRejected] ?? 0;
  String get registrationUrl => _attributes[kRegistrationUrl] ?? '';
  bool get isVisibleInChurchCenter =>
      _attributes[kVisibleInChurchCenter] == true;

  // typed getters for each relationship

  List<PcoCalendarAttachment> get includedAttachments =>
      (relationships['attachments'] as List?)?.cast<PcoCalendarAttachment>() ??
      [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedOwner<T extends PcoResource>() =>
      (relationships['owner'] as List?)?.cast<T>() ?? [];
  List<PcoCalendarTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoCalendarTag>() ?? [];

  // Class Constructors
  PcoCalendarEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/events`
  ///
  /// Available Query Filters:
  /// - `future`
  static Future<PcoCollection<PcoCalendarEvent>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/attachments/$attachmentId/event`
  static Future<PcoCollection<PcoCalendarEvent>> getFromAttachment(
    String attachmentId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/attachments/$attachmentId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/winner`
  static Future<PcoCollection<PcoCalendarEvent>> getWinnerFromConflict(
    String conflictId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/conflicts/$conflictId/winner';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event`
  static Future<PcoCollection<PcoCalendarEvent>> getFromEventInstance(
    String eventInstanceId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/event_instances/$eventInstanceId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/event`
  static Future<PcoCollection<PcoCalendarEvent>> getFromEventResourceRequest(
    String eventResourceRequestId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event`
  static Future<PcoCollection<PcoCalendarEvent>>
      getFromEventInstanceAndEventTime(
    String eventInstanceId,
    String eventTimeId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url =
        '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event';

    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/events`
  static Future<PcoCollection<PcoCalendarEvent>> getFromTag(
    String tagId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/events`
  static Future<PcoCollection<PcoCalendarEvent>> getFromTagGroup(
    String tagGroupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tag_groups/$tagGroupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/attachments`
  Future<PcoCollection<PcoCalendarAttachment>> getAttachments({
    PlanningCenterApiQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeEvent) query.include.add('event');
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoCalendarAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/conflicts`
  Future<PcoCollection<PcoCalendarConflict>> getConflicts({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResolvedBy = false,
    bool includeResource = false,
    bool includeWinner = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeResolvedBy) query.include.add('resolved_by');
    if (includeResource) query.include.add('resource');
    if (includeWinner) query.include.add('winner');
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_instances`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequests({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/feed`
  Future<PcoCollection<PcoCalendarFeed>> getFeed({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/feed';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/owner`
  Future<PcoCollection<PcoCalendarPerson>> getOwner({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/owner';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `future`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEvent.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/tags`
  Future<PcoCollection<PcoCalendarTag>> getTags({
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: apiVersion);
  }
}
