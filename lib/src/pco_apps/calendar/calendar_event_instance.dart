/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.720840
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `endsAt` -> `?order=ends_at`
/// - `startsAt` -> `?order=starts_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarEventInstanceOrder { createdAt, endsAt, startsAt, updatedAt }

/// Possible Inbound Filters:
/// - `all` -> `?filter=all` : -- no description
/// - `approved` -> `?filter=approved` : -- no description
/// - `approvedPending` -> `?filter=approved_pending` : -- no description
/// - `approvedPendingRejected` -> `?filter=approved_pending_rejected` : -- no description
/// - `approvedRejected` -> `?filter=approved_rejected` : -- no description
/// - `approver` -> `?filter=approver` : -- no description
/// - `approverSubscriber` -> `?filter=approver_subscriber` : -- no description
/// - `future` -> `?filter=future` : -- no description
/// - `lost` -> `?filter=lost` : -- no description
/// - `owner` -> `?filter=owner` : -- no description
/// - `ownerApprover` -> `?filter=owner_approver` : -- no description
/// - `ownerApproverSubscriber` -> `?filter=owner_approver_subscriber` : -- no description
/// - `ownerSubscriber` -> `?filter=owner_subscriber` : -- no description
/// - `pending` -> `?filter=pending` : -- no description
/// - `pendingRejected` -> `?filter=pending_rejected` : -- no description
/// - `rejected` -> `?filter=rejected` : -- no description
/// - `shared` -> `?filter=shared` : -- no description
/// - `subscriber` -> `?filter=subscriber` : -- no description
/// - `unresolved` -> `?filter=unresolved` : -- no description
enum PcoCalendarEventInstanceFilter {
  all,
  approved,
  approvedPending,
  approvedPendingRejected,
  approvedRejected,
  approver,
  approverSubscriber,
  future,
  lost,
  owner,
  ownerApprover,
  ownerApproverSubscriber,
  ownerSubscriber,
  pending,
  pendingRejected,
  rejected,
  shared,
  subscriber,
  unresolved
}

/// Creates a [PcoCalendarEventInstanceQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeEventTimes`: include associated event_times
/// - `includeResourceBookings`: include associated resource_bookings
/// - `includeTags`: include associated tags
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarEventInstanceQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarEventInstance] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereEndsAt`: query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `whereStartsAt`: query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
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
/// - `PcoCalendarEventInstanceOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarEventInstanceOrder.endsAt` : will order by `ends_at`
/// - `PcoCalendarEventInstanceOrder.startsAt` : will order by `starts_at`
/// - `PcoCalendarEventInstanceOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarEventInstanceQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarEventInstanceOrder, String> _orderMap = {
    PcoCalendarEventInstanceOrder.createdAt: 'created_at',
    PcoCalendarEventInstanceOrder.endsAt: 'ends_at',
    PcoCalendarEventInstanceOrder.startsAt: 'starts_at',
    PcoCalendarEventInstanceOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarEventInstanceOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarEventInstanceFilter, String> _filterMap = {
    PcoCalendarEventInstanceFilter.all: 'all',
    PcoCalendarEventInstanceFilter.approved: 'approved',
    PcoCalendarEventInstanceFilter.approvedPending: 'approved_pending',
    PcoCalendarEventInstanceFilter.approvedPendingRejected:
        'approved_pending_rejected',
    PcoCalendarEventInstanceFilter.approvedRejected: 'approved_rejected',
    PcoCalendarEventInstanceFilter.approver: 'approver',
    PcoCalendarEventInstanceFilter.approverSubscriber: 'approver_subscriber',
    PcoCalendarEventInstanceFilter.future: 'future',
    PcoCalendarEventInstanceFilter.lost: 'lost',
    PcoCalendarEventInstanceFilter.owner: 'owner',
    PcoCalendarEventInstanceFilter.ownerApprover: 'owner_approver',
    PcoCalendarEventInstanceFilter.ownerApproverSubscriber:
        'owner_approver_subscriber',
    PcoCalendarEventInstanceFilter.ownerSubscriber: 'owner_subscriber',
    PcoCalendarEventInstanceFilter.pending: 'pending',
    PcoCalendarEventInstanceFilter.pendingRejected: 'pending_rejected',
    PcoCalendarEventInstanceFilter.rejected: 'rejected',
    PcoCalendarEventInstanceFilter.shared: 'shared',
    PcoCalendarEventInstanceFilter.subscriber: 'subscriber',
    PcoCalendarEventInstanceFilter.unresolved: 'unresolved',
  };
  static String filterString(PcoCalendarEventInstanceFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarEventInstanceQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated event_times
    /// when true, adds `?include=event_times` to url
    bool includeEventTimes = false,

    /// include associated resource_bookings
    /// when true, adds `?include=resource_bookings` to url
    bool includeResourceBookings = false,

    /// include associated tags
    /// when true, adds `?include=tags` to url
    bool includeTags = false,

    /// when true, adds `?include=event,event_times,resource_bookings,tags` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `ends_at`
    /// query on a specific ends_at, url example: ?where[ends_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndsAt,

    /// Query by `starts_at`
    /// query on a specific starts_at, url example: ?where[starts_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStartsAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCalendarEventInstanceFilter? filterBy,
    PcoCalendarEventInstanceOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeEvent) include.add('event');
    if (includeAll || includeEventTimes) include.add('event_times');
    if (includeAll || includeResourceBookings) include.add('resource_bookings');
    if (includeAll || includeTags) include.add('tags');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereEndsAt != null)
      where.add(PlanningCenterApiWhere.parse('ends_at', whereEndsAt));
    if (whereStartsAt != null)
      where.add(PlanningCenterApiWhere.parse('starts_at', whereStartsAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar EventInstance Object
///
/// - Application:        calendar
/// - Id:                 event_instance
/// - Type:               EventInstance
/// - ApiVersion:         2021-07-20
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
  static const String kApiVersion = '2021-07-20';
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
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarEventInstance.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarEventInstance] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarEventInstance(
      {String? id,
      bool? isAllDayEvent,
      DateTime? createdAt,
      DateTime? endsAt,
      String? location,
      String? recurrence,
      String? recurrenceDescription,
      DateTime? startsAt,
      DateTime? updatedAt,
      String? churchCenterUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarEventInstance.empty();
    obj._id = id;
    if (isAllDayEvent != null) obj._attributes['all_day_event'] = isAllDayEvent;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (location != null) obj._attributes['location'] = location;
    if (recurrence != null) obj._attributes['recurrence'] = recurrence;
    if (recurrenceDescription != null)
      obj._attributes['recurrence_description'] = recurrenceDescription;
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (churchCenterUrl != null)
      obj._attributes['church_center_url'] = churchCenterUrl;

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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventInstance>> get({
    String? id,
    PcoCalendarEventInstanceQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventInstanceQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromEvent(
    String eventId, {
    String? id,
    PcoCalendarEventInstanceQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventInstanceQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromResourceBooking(
    String resourceBookingId, {
    PcoCalendarEventInstanceQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventInstanceQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventInstance>> getFromTag(
    String tagId, {
    String? id,
    PcoCalendarEventInstanceQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarEventInstanceQuery();
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
  Future<PcoCollection<PcoCalendarEvent>> getEvent(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times`
  Future<PcoCollection<PcoCalendarEventTime>> getEventTimes(
      {PcoCalendarEventTimeQuery? query}) async {
    query ??= PcoCalendarEventTimeQuery();
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
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings(
      {PcoCalendarResourceBookingQuery? query}) async {
    query ??= PcoCalendarResourceBookingQuery();
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags`
  Future<PcoCollection<PcoCalendarTag>> getTags(
      {PcoCalendarTagQuery? query}) async {
    query ??= PcoCalendarTagQuery();
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
