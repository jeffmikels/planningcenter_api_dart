/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:38.798851
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
part of pco;

/// This class represents a PCO CheckIns CheckInGroup Object
///
/// - Application:        check-ins
/// - Id:                 check_in_group
/// - Type:               CheckInGroup
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - Create Endpoint:    NONE
///
/// ## Description
/// When one or more people check in, they're grouped in a `CheckInGroup`.
/// These check-ins all have the same "checked-in by" person. `CheckInGroup` is also
/// the basis for label printing.
///
/// `print_status` may be:
///
/// - `ready`: This group isn't printed or canceled yet
/// - `printed`: This group was successfully printed at a station
/// - `canceled`: This group was canceled at a station
/// - `skipped`: This group had no labels to print, so it was never printed.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `nameLabelsCount` (ro) -> PCO: `name_labels_count`
/// - `securityLabelsCount` (ro) -> PCO: `security_labels_count`
/// - `checkInsCount` (ro) -> PCO: `check_ins_count`
/// - `printStatus` (ro) -> PCO: `print_status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `check_ins`: include associated check_ins
/// - `event_period`: include associated event_period
/// - `print_station`: include associated print_station
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
/// - `checkin-checkingroup-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
/// - `eventperiod-checkingroup-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
///
/// Inbound Edges:
/// - `checkingroup-checkin-check_in_group`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CheckInGroup",
///   "id": "1",
///   "attributes": {
///     "name_labels_count": 1,
///     "security_labels_count": 1,
///     "check_ins_count": 1,
///     "print_status": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsCheckInGroup extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInGroup';
  static const String kTypeId = 'check_in_group';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `check_ins`: include associated check_ins
  /// - `event_period`: include associated event_period
  /// - `print_station`: include associated print_station
  static List<String> get canInclude =>
      ['check_ins', 'event_period', 'print_station'];

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
  static const kNameLabelsCount = 'name_labels_count';
  static const kSecurityLabelsCount = 'security_labels_count';
  static const kCheckInsCount = 'check_ins_count';
  static const kPrintStatus = 'print_status';
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
  int get nameLabelsCount => _attributes[kNameLabelsCount] ?? 0;
  int get securityLabelsCount => _attributes[kSecurityLabelsCount] ?? 0;
  int get checkInsCount => _attributes[kCheckInsCount] ?? 0;
  String get printStatus => _attributes[kPrintStatus] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedCheckIns<T extends PcoResource>() =>
      relationships['check_ins']?.cast<T>() ?? [];
  List<T> includedEventPeriod<T extends PcoResource>() =>
      relationships['event_period']?.cast<T>() ?? [];
  List<T> includedPrintStation<T extends PcoResource>() =>
      relationships['print_station']?.cast<T>() ?? [];

  // Class Constructors
  PcoCheckInsCheckInGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsCheckInGroup.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group`
  static Future<PcoCollection<PcoCheckInsCheckInGroup>> getFromCheckIn(
      String checkInId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/check_in_groups`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  static Future<PcoCollection<PcoCheckInsCheckInGroup>> getFromStation(
      String stationId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/stations/$stationId/check_in_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station`
  Future<PcoCollection<PcoCheckInsStation>> getPrintStation(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '$apiEndpoint/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
