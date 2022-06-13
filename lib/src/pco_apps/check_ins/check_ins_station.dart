/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.667696
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `location`: include associated location 
  /// - `print_station`: include associated print_station 
  /// - `theme`: include associated theme 
  static List<String> get canInclude => ['event','location','print_station','theme'];

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
  bool get isOnline => attributes[kOnline] == true;
  int get mode => attributes[kMode] ?? 0;
  String get name => attributes[kName] ?? '';
  int get timeoutSeconds => attributes[kTimeoutSeconds] ?? 0;
  String get inputType => attributes[kInputType] ?? '';
  String get inputTypeOptions => attributes[kInputTypeOptions] ?? '';
  int get checkInCount => attributes[kCheckInCount] ?? 0;    


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  List<T> includedEvent<T extends PcoResource>() => relationships['event']?.cast<T>() ?? [];
  List<T> includedLocation<T extends PcoResource>() => relationships['location']?.cast<T>() ?? [];
  List<T> includedPrintStation<T extends PcoResource>() => relationships['print_station']?.cast<T>() ?? [];
  List<T> includedTheme<T extends PcoResource>() => relationships['theme']?.cast<T>() ?? [];




  // Class Constructors
  PcoCheckInsStation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoCheckInsStation.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations`
  static Future<PcoCollection<PcoCheckInsStation>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_at`
  static Future<PcoCollection<PcoCheckInsStation>> getCheckedInAtFromCheckIn(String checkInId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station`
  static Future<PcoCollection<PcoCheckInsStation>> getPrintStationFromCheckInAndCheckInGroup(String checkInId,String checkInGroupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/print_station`
  static Future<PcoCollection<PcoCheckInsStation>> getPrintStationFromStation(String stationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations/$stationId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '$apiEndpoint/check_in_groups';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url, query: query, apiVersion: apiVersion);
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckedInAtCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/checked_in_at_check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station`
  Future<PcoCollection<PcoCheckInsStation>> getPrintStation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '$apiEndpoint/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/theme`
  Future<PcoCollection<PcoCheckInsTheme>> getTheme({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    var url = '$apiEndpoint/theme';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
