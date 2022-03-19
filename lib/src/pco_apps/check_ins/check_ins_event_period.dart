/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.028379
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
/// - `event_times`: include associated event_times
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
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
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  int get regularCount => attributes[kRegularCount] ?? 0;
  int get guestCount => attributes[kGuestCount] ?? 0;
  int get volunteerCount => attributes[kVolunteerCount] ?? 0;
  String get note => attributes[kNote] ?? '';

  // Class Constructors
  PcoCheckInsEventPeriod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsEventPeriod.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period`
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromCheckIn(
      String checkInId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period`
  static Future<PcoCollection<PcoCheckInsEventPeriod>>
      getFromCheckInAndCheckInGroup(String checkInId, String checkInGroupId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_periods`
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromEvent(
      String eventId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/event_period`
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getFromEventTime(
      String eventTimeId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period`
  static Future<PcoCollection<PcoCheckInsEventPeriod>>
      getFromCheckInAndEventPeriodAndLocationEventPeriod(
          String checkInId, String eventPeriodId, String locationEventPeriodId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period';

    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
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
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
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
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    var url = '$apiEndpoint/event_times';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods`
  Future<PcoCollection<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url = '$apiEndpoint/location_event_periods';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
