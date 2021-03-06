/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.402307
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO CheckIns Station Object
///
/// - Application:        check-ins
/// - Id:                 station
/// - Type:               Station
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/stations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsStation.fromJson()` constructor.
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
/// A device where people can be checked in.
/// A device may also be connected to a printer
/// and print labels for itself or other stations.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isOnline` (ro) -> PCO: `online`
/// - `mode` (ro) -> PCO: `mode`
/// - `name` (ro) -> PCO: `name`
/// - `timeoutSeconds` (ro) -> PCO: `timeout_seconds`
/// - `inputType` (ro) -> PCO: `input_type`
/// - `inputTypeOptions` (ro) -> PCO: `input_type_options`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `checkInCount` (ro) -> PCO: `check_in_count`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
/// - `location`: include associated location
/// - `print_station`: include associated print_station
/// - `theme`: include associated theme
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
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
/// - `checkin-station-checked_in_at_check_ins`: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
/// - `event-station-event`: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
/// - `location-station-location`: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
/// - `theme-station-theme`: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
///
/// Inbound Edges:
/// - `station-checkin-checked_in_at`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
/// - `station-organization-stations`: https://api.planningcenteronline.com/check-ins/v2/stations
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Station",
///   "id": "1",
///   "attributes": {
///     "online": true,
///     "mode": 1,
///     "name": "string",
///     "timeout_seconds": 1,
///     "input_type": "value",
///     "input_type_options": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsStation extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Station';
  static const String kTypeId = 'station';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/stations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `location`: include associated location
  /// - `print_station`: include associated print_station
  /// - `theme`: include associated theme
  static List<String> get canInclude =>
      ['event', 'location', 'print_station', 'theme'];

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
  static const kOnline = 'online';
  static const kMode = 'mode';
  static const kName = 'name';
  static const kTimeoutSeconds = 'timeout_seconds';
  static const kInputType = 'input_type';
  static const kInputTypeOptions = 'input_type_options';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kCheckInCount = 'check_in_count';

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
  bool get isOnline => _attributes[kOnline] == true;
  int get mode => _attributes[kMode] ?? 0;
  String get name => _attributes[kName] ?? '';
  int get timeoutSeconds => _attributes[kTimeoutSeconds] ?? 0;
  String get inputType => _attributes[kInputType] ?? '';
  String get inputTypeOptions => _attributes[kInputTypeOptions] ?? '';
  int get checkInCount => _attributes[kCheckInCount] ?? 0;

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  PcoCheckInsLocation? get includedLocation =>
      _firstOrNull<PcoCheckInsLocation>(relationships['location']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedPrintStation<T extends PcoResource>() =>
      (relationships['print_station'] as List?)?.cast<T>() ?? [];
  PcoCheckInsTheme? get includedTheme =>
      _firstOrNull<PcoCheckInsTheme>(relationships['theme']);

  // Class Constructors
  PcoCheckInsStation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations`
  static Future<PcoCollection<PcoCheckInsStation>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_at`
  static Future<PcoCollection<PcoCheckInsStation>> getCheckedInAtFromCheckIn(
    String checkInId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station`
  static Future<PcoCollection<PcoCheckInsStation>>
      getPrintStationFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/print_station`
  static Future<PcoCollection<PcoCheckInsStation>> getPrintStationFromStation(
    String stationId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations/$stationId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroups({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCheckIns = false,
    bool includeEventPeriod = false,
    bool includePrintStation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeCheckIns) query.include.add('check_ins');
    if (includeEventPeriod) query.include.add('event_period');
    if (includePrintStation) query.include.add('print_station');
    var url = '$apiEndpoint/check_in_groups';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins`
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckedInAtCheckIns({
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
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
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
    var url = '$apiEndpoint/checked_in_at_check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocations = false,
    bool includeOptions = false,
    bool includeParent = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocations) query.include.add('locations');
    if (includeOptions) query.include.add('options');
    if (includeParent) query.include.add('parent');
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station`
  Future<PcoCollection<PcoCheckInsStation>> getPrintStation({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '$apiEndpoint/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/theme`
  Future<PcoCollection<PcoCheckInsTheme>> getTheme({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/theme';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
