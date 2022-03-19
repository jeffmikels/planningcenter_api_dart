/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.209621
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO CheckIns LocationEventPeriod Object
///
/// - Application:        check-ins
/// - Id:                 location_event_period
/// - Type:               LocationEventPeriod
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
/// - Create Endpoint:    NONE
///
/// ## Description
/// Counts check-ins for a location during a certain event period.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `regularCount` (ro) -> PCO: `regular_count`
/// - `guestCount` (ro) -> PCO: `guest_count`
/// - `volunteerCount` (ro) -> PCO: `volunteer_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event_period`: include associated event_period
/// - `location`: include associated location
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
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-locationeventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
/// - `eventperiod-locationeventperiod-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period
/// - `location-locationeventperiod-location`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
///
/// Inbound Edges:
/// - `locationeventperiod-eventperiod-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
/// - `locationeventperiod-location-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LocationEventPeriod",
///   "id": "1",
///   "attributes": {
///     "regular_count": 1,
///     "guest_count": 1,
///     "volunteer_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsLocationEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventPeriod';
  static const String kTypeId = 'location_event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event_period`: include associated event_period
  /// - `location`: include associated location
  static List<String> get canInclude => ['event_period', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

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
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
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
  int get regularCount => attributes[kRegularCount] ?? 0;
  int get guestCount => attributes[kGuestCount] ?? 0;
  int get volunteerCount => attributes[kVolunteerCount] ?? 0;

  // Class Constructors
  PcoCheckInsLocationEventPeriod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsLocationEventPeriod.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods`
  static Future<PcoCollection<PcoCheckInsLocationEventPeriod>>
      getFromCheckInAndEventPeriod(String checkInId, String eventPeriodId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods`
  static Future<PcoCollection<PcoCheckInsLocationEventPeriod>>
      getFromCheckInAndLocation(String checkInId, String locationId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins`
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
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
