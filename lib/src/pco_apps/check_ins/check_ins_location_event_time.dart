/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.893190
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO CheckIns LocationEventTime Object
///
/// - Application:        check-ins
/// - Id:                 location_event_time
/// - Type:               LocationEventTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsLocationEventTime.fromJson()` constructor.
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
/// Counts check-ins for a location for a given event time.
/// This is useful for checking occupancy.
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
/// - `event_time`: include associated event_time
/// - `location`: include associated location
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
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
/// - `checkin-locationeventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins
/// - `eventtime-locationeventtime-event_time`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time
/// - `location-locationeventtime-location`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location
///
/// Inbound Edges:
/// - `locationeventtime-eventtime-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// - `locationeventtime-location-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LocationEventTime",
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
class PcoCheckInsLocationEventTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventTime';
  static const String kTypeId = 'location_event_time';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event_time`: include associated event_time
  /// - `location`: include associated location
  static List<String> get canInclude => ['event_time', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

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
  int get regularCount => _attributes[kRegularCount] ?? 0;
  int get guestCount => _attributes[kGuestCount] ?? 0;
  int get volunteerCount => _attributes[kVolunteerCount] ?? 0;

  // typed getters for each relationship

  List<PcoCheckInsEventTime> get includedEventTime =>
      (relationships['event_time'] as List?)?.cast<PcoCheckInsEventTime>() ??
      [];
  List<PcoCheckInsLocation> get includedLocation =>
      (relationships['location'] as List?)?.cast<PcoCheckInsLocation>() ?? [];

  // Class Constructors
  PcoCheckInsLocationEventTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/location_event_times`
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getFromEventTime(
    String eventTimeId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventTime = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEventTime) query.include.add('event_time');
    if (includeLocation) query.include.add('location');
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times`
  static Future<PcoCollection<PcoCheckInsLocationEventTime>>
      getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEventTime = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEventTime) query.include.add('event_time');
    if (includeLocation) query.include.add('location');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins`
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCheckInTimes = false,
    bool includeCheckedInAt = false,
    bool includeCheckedInBy = false,
    bool includeCheckedOutBy = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeEventTimes = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeCheckInTimes) query.include.add('check_in_times');
    if (includeCheckedInAt) query.include.add('checked_in_at');
    if (includeCheckedInBy) query.include.add('checked_in_by');
    if (includeCheckedOutBy) query.include.add('checked_out_by');
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeEventTimes) query.include.add('event_times');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTime({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventPeriod = false,
    bool includeHeadcounts = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventPeriod) query.include.add('event_period');
    if (includeHeadcounts) query.include.add('headcounts');
    var url = '$apiEndpoint/event_time';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }
}
