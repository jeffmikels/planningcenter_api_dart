/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.553045
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar EventInstance Object
///
/// - Application:        calendar
/// - Id:                 event_instance
/// - Type:               EventInstance
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_instances
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEventInstance.fromJson()` constructor.
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
/// A specific occurrence of an event.
///
/// If the event is recurring, `recurrence` will be set and
/// `recurrence_description` will provide an overview of the recurrence pattern.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isAllDayEvent` (ro) -> PCO: `all_day_event`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `location` (ro) -> PCO: `location`
/// - `recurrence` (ro) -> PCO: `recurrence`
/// - `recurrenceDescription` (ro) -> PCO: `recurrence_description`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `churchCenterUrl` (ro) -> PCO: `church_center_url`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
/// - `event_times`: include associated event_times
/// - `resource_bookings`: include associated resource_bookings
/// - `tags`: include associated tags
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-eventinstance-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
/// - `eventtime-eventinstance-event_times`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// - `resourcebooking-eventinstance-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
/// - `tag-eventinstance-tags`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
///
/// Inbound Edges:
/// - `eventinstance-event-event_instances`: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
/// - `eventinstance-organization-event_instances`: https://api.planningcenteronline.com/calendar/v2/event_instances
/// - `eventinstance-resourcebooking-event_instance`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
/// - `eventinstance-tag-event_instances`: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventInstance",
///   "id": "1",
///   "attributes": {
///     "all_day_event": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "location": "string",
///     "recurrence": "string",
///     "recurrence_description": "string",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "church_center_url": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarEventInstance extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventInstance';
  static const String kTypeId = 'event_instance';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/event_instances';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `event_times`: include associated event_times
  /// - `resource_bookings`: include associated resource_bookings
  /// - `tags`: include associated tags
  static List<String> get canInclude =>
      ['event', 'event_times', 'resource_bookings', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'ends_at', 'starts_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'ends_at', 'starts_at', 'updated_at'];

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
  static const kAllDayEvent = 'all_day_event';
  static const kCreatedAt = 'created_at';
  static const kEndsAt = 'ends_at';
  static const kLocation = 'location';
  static const kRecurrence = 'recurrence';
  static const kRecurrenceDescription = 'recurrence_description';
  static const kStartsAt = 'starts_at';
  static const kUpdatedAt = 'updated_at';
  static const kChurchCenterUrl = 'church_center_url';

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
  bool get isAllDayEvent => _attributes[kAllDayEvent] == true;
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  String get location => _attributes[kLocation] ?? '';
  String get recurrence => _attributes[kRecurrence] ?? '';
  String get recurrenceDescription => _attributes[kRecurrenceDescription] ?? '';
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  String get churchCenterUrl => _attributes[kChurchCenterUrl] ?? '';

  // typed getters for each relationship

  PcoCalendarEvent? get includedEvent =>
      _firstOrNull<PcoCalendarEvent>(relationships['event']);
  List<PcoCalendarEventTime> get includedEventTimes =>
      (relationships['event_times'] as List?)?.cast<PcoCalendarEventTime>() ??
      [];
  List<PcoCalendarResourceBooking> get includedResourceBookings =>
      (relationships['resource_bookings'] as List?)
          ?.cast<PcoCalendarResourceBooking>() ??
      [];
  List<PcoCalendarTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoCalendarTag>() ?? [];

  // Class Constructors
  PcoCalendarEventInstance.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances`
  ///
  /// Available Query Filters:
  /// - `all`
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `approver`
  /// - `approver_subscriber`
  /// - `future`
  /// - `lost`
  /// - `owner`
  /// - `owner_approver`
  /// - `owner_approver_subscriber`
  /// - `owner_subscriber`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `shared`
  /// - `subscriber`
  /// - `unresolved`
  static Future<PcoCollection<PcoCalendarEventInstance>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/event_instances';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/event_instances`
  ///
  /// Available Query Filters:
  /// - `future`
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/events/$eventId/event_instances';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting one)
  /// using a path like this: `/calendar/v2/resource_bookings/$resourceBookingId/event_instance`
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromResourceBooking(
    String resourceBookingId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url =
        '/calendar/v2/resource_bookings/$resourceBookingId/event_instance';

    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/event_instances`
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromTag(
    String tagId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/event_instances';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times`
  Future<PcoCollection<PcoCalendarEventTime>> getEventTimes({
    PlanningCenterApiQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeEvent) query.include.add('event');
    var url = '$apiEndpoint/event_times';
    return PcoCollection.fromApiCall<PcoCalendarEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarEventInstance.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags`
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

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
