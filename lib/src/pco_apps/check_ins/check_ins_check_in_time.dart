/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.033405
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO CheckIns CheckInTime Object
/// 
/// - Application:        check-ins
/// - Id:                 check_in_time
/// - Type:               CheckInTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// 
/// Description:
/// A CheckInTime combines an EventTime and a Location, and associates it with
/// the parent CheckIn.
/// 
/// Example:
/// ```json
/// {
///   "type": "CheckInTime",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "has_validated": true,
///     "errors": [],
///     "services_integrated": true
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     },
///     "check_in": {
///       "data": {
///         "type": "CheckIn",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `checkintime-checkin-check_in_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// 
/// All Actions:
/// NONE
///
class PcoCheckInsCheckInTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInTime';
  static const String kTypeId = 'check_in_time';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'checkintime-checkin-check_in_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kKind = 'kind';
  static const kHasValidated = 'has_validated';
  static const kErrors = 'errors';
  static const kServicesIntegrated = 'services_integrated';


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

  String get kind => attributes[kKind] ?? '';
  bool get isHasValidated => attributes[kHasValidated] == true;
  List get errors => attributes[kErrors] ?? [];
  bool get isServicesIntegrated => attributes[kServicesIntegrated] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCheckInsCheckInTime._() : super(kPcoApplication, kTypeString);
  PcoCheckInsCheckInTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_times`
  static Future<PcoCollection<PcoCheckInsCheckInTime>> getFromCheckIn(String checkInId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
