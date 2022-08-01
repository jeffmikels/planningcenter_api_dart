/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.514126
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `showsAt` -> `?order=shows_at`
/// - `startsAt` -> `?order=starts_at`
enum PcoCheckInsEventTimeOrder { showsAt, startsAt }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsEventTimeFilter { none }

/// Creates a [PcoCheckInsEventTimeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeEventPeriod`: include associated event_period
/// - `includeHeadcounts`: include associated headcounts
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsEventTimeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsEventTime] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
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
/// - `PcoCheckInsEventTimeOrder.showsAt` : will order by `shows_at`
/// - `PcoCheckInsEventTimeOrder.startsAt` : will order by `starts_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsEventTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsEventTimeOrder, String> _orderMap = {
    PcoCheckInsEventTimeOrder.showsAt: 'shows_at',
    PcoCheckInsEventTimeOrder.startsAt: 'starts_at',
  };
  static String orderString(PcoCheckInsEventTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsEventTimeFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsEventTimeFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsEventTimeQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated event_period
    /// when true, adds `?include=event_period` to url
    bool includeEventPeriod = false,

    /// include associated headcounts
    /// when true, adds `?include=headcounts` to url
    bool includeHeadcounts = false,

    /// when true, adds `?include=event,event_period,headcounts` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCheckInsEventTimeOrder? orderBy,

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
    if (includeAll || includeEvent) include.add('event');
    if (includeAll || includeEventPeriod) include.add('event_period');
    if (includeAll || includeHeadcounts) include.add('headcounts');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO CheckIns EventTime Object
///
/// - Application:        check-ins
/// - Id:                 event_time
/// - Type:               EventTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/event_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsEventTime.fromJson()` constructor.
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
/// A time that someone may check in. Times are copied from session to session.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `totalCount` (ro) -> PCO: `total_count`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `showsAt` (ro) -> PCO: `shows_at`
/// - `hidesAt` (ro) -> PCO: `hides_at`
/// - `regularCount` (ro) -> PCO: `regular_count`
/// - `guestCount` (ro) -> PCO: `guest_count`
/// - `volunteerCount` (ro) -> PCO: `volunteer_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (ro) -> PCO: `name`
/// - `hour` (ro) -> PCO: `hour`
/// - `minute` (ro) -> PCO: `minute`
/// - `dayOfWeek` (ro) -> PCO: `day_of_week`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `location-eventtime-available_locations`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations
/// - `checkin-eventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins
/// - `event-eventtime-event`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event
/// - `eventperiod-eventtime-event_period`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period
/// - `headcount-eventtime-headcounts`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
/// - `locationeventtime-eventtime-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
///
/// Inbound Edges:
/// - `eventtime-checkin-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
/// - `eventtime-event-current_event_times`: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
/// - `eventtime-eventperiod-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times
/// - `eventtime-headcount-event_time`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
/// - `eventtime-locationeventtime-event_time`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time
/// - `eventtime-organization-event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventTime",
///   "id": "1",
///   "attributes": {
///     "total_count": 1,
///     "starts_at": "2000-01-01T12:00:00Z",
///     "shows_at": "2000-01-01T12:00:00Z",
///     "hides_at": "2000-01-01T12:00:00Z",
///     "regular_count": 1,
///     "guest_count": 1,
///     "volunteer_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "hour": 1,
///     "minute": 1,
///     "day_of_week": 1
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "event_period": {
///       "data": {
///         "type": "EventPeriod",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsEventTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventTime';
  static const String kTypeId = 'event_time';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/event_times';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `event_period`: include associated event_period
  /// - `headcounts`: include associated headcounts
  static List<String> get canInclude => ['event', 'event_period', 'headcounts'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `shows_at`: (URLParameter), prefix with a hyphen (-shows_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['shows_at', 'starts_at'];

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
  static const kTotalCount = 'total_count';
  static const kStartsAt = 'starts_at';
  static const kShowsAt = 'shows_at';
  static const kHidesAt = 'hides_at';
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kName = 'name';
  static const kHour = 'hour';
  static const kMinute = 'minute';
  static const kDayOfWeek = 'day_of_week';

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
  int get totalCount => _attributes[kTotalCount] ?? 0;
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  DateTime get showsAt => DateTime.parse(_attributes[kShowsAt] ?? '');
  DateTime get hidesAt => DateTime.parse(_attributes[kHidesAt] ?? '');
  int get regularCount => _attributes[kRegularCount] ?? 0;
  int get guestCount => _attributes[kGuestCount] ?? 0;
  int get volunteerCount => _attributes[kVolunteerCount] ?? 0;
  String get name => _attributes[kName] ?? '';
  int get hour => _attributes[kHour] ?? 0;
  int get minute => _attributes[kMinute] ?? 0;
  int get dayOfWeek => _attributes[kDayOfWeek] ?? 0;

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  PcoCheckInsEventPeriod? get includedEventPeriod =>
      _firstOrNull<PcoCheckInsEventPeriod>(relationships['event_period']);
  List<PcoCheckInsHeadcount> get includedHeadcounts =>
      (relationships['headcounts'] as List?)?.cast<PcoCheckInsHeadcount>() ??
      [];

  // Class Constructors
  PcoCheckInsEventTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsEventTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsEventTime] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsEventTime(
      {String? id,
      int? totalCount,
      DateTime? startsAt,
      DateTime? showsAt,
      DateTime? hidesAt,
      int? regularCount,
      int? guestCount,
      int? volunteerCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      int? hour,
      int? minute,
      int? dayOfWeek,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsEventTime.empty();
    obj._id = id;
    if (totalCount != null) obj._attributes['total_count'] = totalCount;
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (showsAt != null)
      obj._attributes['shows_at'] = showsAt.toIso8601String();
    if (hidesAt != null)
      obj._attributes['hides_at'] = hidesAt.toIso8601String();
    if (regularCount != null) obj._attributes['regular_count'] = regularCount;
    if (guestCount != null) obj._attributes['guest_count'] = guestCount;
    if (volunteerCount != null)
      obj._attributes['volunteer_count'] = volunteerCount;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (hour != null) obj._attributes['hour'] = hour;
    if (minute != null) obj._attributes['minute'] = minute;
    if (dayOfWeek != null) obj._attributes['day_of_week'] = dayOfWeek;

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

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times`
  static Future<PcoCollection<PcoCheckInsEventTime>> get({
    String? id,
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url = '/check-ins/v2/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_times`
  static Future<PcoCollection<PcoCheckInsEventTime>> getFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url = '/check-ins/v2/check_ins/$checkInId/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/$eventId/current_event_times`
  static Future<PcoCollection<PcoCheckInsEventTime>>
      getCurrentEventTimesFromEvent(
    String eventId, {
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url = '/check-ins/v2/events/$eventId/current_event_times';

    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event_times`
  ///
  /// Available Query Filters:
  /// - `available`
  static Future<PcoCollection<PcoCheckInsEventTime>>
      getFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId, {
    String? id,
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/headcounts/$headcountId/event_time`
  static Future<PcoCollection<PcoCheckInsEventTime>> getFromHeadcount(
    String headcountId, {
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url = '/check-ins/v2/headcounts/$headcountId/event_time';

    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/event_time`
  static Future<PcoCollection<PcoCheckInsEventTime>>
      getFromEventTimeAndLocationEventTime(
    String eventTimeId,
    String locationEventTimeId, {
    PcoCheckInsEventTimeQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PcoCheckInsEventTimeQuery();
    if (includeAll) query.include.addAll(PcoCheckInsEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url =
        '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/event_time';

    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations`
  ///
  /// Available Query Filters:
  /// - `for_current_station`
  Future<PcoCollection<PcoCheckInsLocation>> getAvailableLocations(
      {PcoCheckInsLocationQuery? query}) async {
    query ??= PcoCheckInsLocationQuery();
    var url = '$apiEndpoint/available_locations';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
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
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod(
      {PcoCheckInsEventPeriodQuery? query}) async {
    query ??= PcoCheckInsEventPeriodQuery();
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts`
  Future<PcoCollection<PcoCheckInsHeadcount>> getHeadcounts(
      {PcoCheckInsHeadcountQuery? query}) async {
    query ??= PcoCheckInsHeadcountQuery();
    var url = '$apiEndpoint/headcounts';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times`
  Future<PcoCollection<PcoCheckInsLocationEventTime>> getLocationEventTimes(
      {PcoCheckInsLocationEventTimeQuery? query}) async {
    query ??= PcoCheckInsLocationEventTimeQuery();
    var url = '$apiEndpoint/location_event_times';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
