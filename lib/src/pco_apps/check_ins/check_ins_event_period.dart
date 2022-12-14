/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.925523
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `startsAt` -> `?order=starts_at`
enum PcoCheckInsEventPeriodOrder { startsAt }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsEventPeriodFilter { none }

/// Creates a [PcoCheckInsEventPeriodQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeEventTimes`: include associated event_times
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsEventPeriodQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCheckInsEventPeriodOrder.startsAt` : will order by `starts_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsEventPeriodQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsEventPeriodOrder, String> _orderMap = {
    PcoCheckInsEventPeriodOrder.startsAt: 'starts_at',
  };
  static String orderString(PcoCheckInsEventPeriodOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsEventPeriodFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsEventPeriodFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsEventPeriodQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated event_times
    /// when true, adds `?include=event_times` to url
    bool includeEventTimes = false,

    /// when true, adds `?include=event,event_times` to url parameters
    bool includeAllRelated = false,
    PcoCheckInsEventPeriodOrder? orderBy,

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
    if (includeAllRelated || includeEvent) include.add('event');
    if (includeAllRelated || includeEventTimes) include.add('event_times');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO CheckIns EventPeriod Object
///
/// - Application:        check-ins
/// - Id:                 event_period
/// - Type:               EventPeriod
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsEventPeriod.fromJson()` constructor.
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
/// A recurrence of an event, sometimes called a "session".
/// For weekly events, an event period is a week. For daily events, an event period is a day.
/// An event period has event times, which is what people select
/// when they actually check in. When new sessions are created, times
/// are copied from one session to the next.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `regularCount` (ro) -> PCO: `regular_count`
/// - `guestCount` (ro) -> PCO: `guest_count`
/// - `volunteerCount` (ro) -> PCO: `volunteer_count`
/// - `note` (ro) -> PCO: `note`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-eventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins
/// - `event-eventperiod-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event
/// - `eventtime-eventperiod-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times
/// - `locationeventperiod-eventperiod-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
///
/// Inbound Edges:
/// - `eventperiod-checkin-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
/// - `eventperiod-checkingroup-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
/// - `eventperiod-event-event_periods`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods
/// - `eventperiod-eventtime-event_period`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period
/// - `eventperiod-locationeventperiod-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventPeriod",
///   "id": "1",
///   "attributes": {
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "regular_count": 1,
///     "guest_count": 1,
///     "volunteer_count": 1,
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
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
class PcoCheckInsEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventPeriod';
  static const String kTypeId = 'event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `event_times`: include associated event_times
  static List<String> get canInclude => ['event', 'event_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['starts_at'];

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
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
  static const kNote = 'note';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

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
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  int get regularCount => _attributes[kRegularCount] ?? 0;
  int get guestCount => _attributes[kGuestCount] ?? 0;
  int get volunteerCount => _attributes[kVolunteerCount] ?? 0;
  String get note => _attributes[kNote] ?? '';

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  List<PcoCheckInsEventTime> get includedEventTimes =>
      (relationships['event_times'] as List?)?.cast<PcoCheckInsEventTime>() ??
      [];

  // Class Constructors
  PcoCheckInsEventPeriod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsEventPeriod.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsEventPeriod] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsEventPeriod(
      {String? id,
      DateTime? startsAt,
      DateTime? endsAt,
      int? regularCount,
      int? guestCount,
      int? volunteerCount,
      String? note,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsEventPeriod.empty();
    obj._id = id;
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (regularCount != null) obj._attributes['regular_count'] = regularCount;
    if (guestCount != null) obj._attributes['guest_count'] = guestCount;
    if (volunteerCount != null)
      obj._attributes['volunteer_count'] = volunteerCount;
    if (note != null) obj._attributes['note'] = note;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromCheckIn(
    String checkInId, {
    PcoCheckInsEventPeriodQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url = '/check-ins/v2/check_ins/$checkInId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventPeriod>>
      getFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId, {
    PcoCheckInsEventPeriodQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_periods`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsEventPeriodQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url = '/check-ins/v2/events/$eventId/event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEventPeriod] object
  /// using a path like this: `/check-ins/v2/events/$eventId/event_periods/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEventPeriod?> getSingleFromEvent(
    String eventId,
    String id, {
    PcoCheckInsEventPeriodQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url = '/check-ins/v2/events/$eventId/event_periods/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_periods`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getAllFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsEventPeriodQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url = '/check-ins/v2/events/$eventId/event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/event_period`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromEventTime(
    String eventTimeId, {
    PcoCheckInsEventPeriodQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventPeriod>>
      getFromCheckInAndEventPeriodAndLocationEventPeriod(
    String checkInId,
    String eventPeriodId,
    String locationEventPeriodId, {
    PcoCheckInsEventPeriodQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
  }) async {
    query ??= PcoCheckInsEventPeriodQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventPeriod.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_checked_out`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times`
  ///
  /// Available Query Filters:
  /// - `available`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes(
      {PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/event_times';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods`
  Future<PcoCollection<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods(
      {PcoCheckInsLocationEventPeriodQuery? query}) async {
    query ??= PcoCheckInsLocationEventPeriodQuery();
    var url = '$apiEndpoint/location_event_periods';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
