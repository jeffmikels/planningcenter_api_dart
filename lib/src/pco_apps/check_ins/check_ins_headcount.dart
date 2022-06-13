/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.569301
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO CheckIns Headcount Object
///
/// - Application:        check-ins
/// - Id:                 headcount
/// - Type:               Headcount
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/headcounts
/// - Create Endpoint:    NONE
///
/// ## Description
/// A tally of attendees for a given event time and attendance type.
/// If one does not exist, the count may have been zero.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `total` (ro) -> PCO: `total`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `createdAt` (ro) -> PCO: `created_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `attendance_type`: include associated attendance_type
/// - `event_time`: include associated event_time
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `total`: (URLParameter), prefix with a hyphen (-total) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attendancetype-headcount-attendance_type`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
/// - `eventtime-headcount-event_time`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
///
/// Inbound Edges:
/// - `headcount-attendancetype-headcounts`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
/// - `headcount-eventtime-headcounts`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
/// - `headcount-organization-headcounts`: https://api.planningcenteronline.com/check-ins/v2/headcounts
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Headcount",
///   "id": "1",
///   "attributes": {
///     "total": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "attendance_type": {
///       "data": {
///         "type": "AttendanceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsHeadcount extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Headcount';
  static const String kTypeId = 'headcount';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/headcounts';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `attendance_type`: include associated attendance_type
  /// - `event_time`: include associated event_time
  static List<String> get canInclude => ['attendance_type', 'event_time'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `total`: (URLParameter), prefix with a hyphen (-total) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'total', 'updated_at'];

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
  static const kTotal = 'total';
  static const kUpdatedAt = 'updated_at';
  static const kCreatedAt = 'created_at';

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
  int get total => attributes[kTotal] ?? 0;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedAttendanceType<T extends PcoResource>() =>
      relationships['attendance_type']?.cast<T>() ?? [];
  List<T> includedEventTime<T extends PcoResource>() =>
      relationships['event_time']?.cast<T>() ?? [];

  // Class Constructors
  PcoCheckInsHeadcount.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsHeadcount.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/headcounts`
  static Future<PcoCollection<PcoCheckInsHeadcount>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/$attendanceTypeId/headcounts`
  static Future<PcoCollection<PcoCheckInsHeadcount>> getFromAttendanceType(
      String attendanceTypeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/headcounts`
  static Future<PcoCollection<PcoCheckInsHeadcount>> getFromEventTime(
      String eventTimeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsAttendanceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type`
  Future<PcoCollection<PcoCheckInsAttendanceType>> getAttendanceType(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    var url = '$apiEndpoint/attendance_type';
    return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTime(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    var url = '$apiEndpoint/event_time';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
