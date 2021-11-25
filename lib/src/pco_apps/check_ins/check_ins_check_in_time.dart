/// This file was generated on 2021-11-25T00:07:20.343891


import '../../pco.dart';

/// This class represents a PCO CheckIns CheckInTime Object
/// 
/// Application: check-ins
/// Id:          check_in_time
/// Type:        CheckInTime
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A CheckInTime combines an EventTime and a Location, and associates it with\nthe parent CheckIn.\n
/// 
/// Example:
/// 
/// {"type":"CheckInTime","id":"1","attributes":{"kind":"string","has_validated":true,"errors":[],"services_integrated":true},"relationships":{"event_time":{"data":{"type":"EventTime","id":"1"}},"location":{"data":{"type":"Location","id":"1"}},"check_in":{"data":{"type":"CheckIn","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsCheckInTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInTime';
  static const String kTypeId = 'check_in_time';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'checkintime-checkin-check_in_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kKind = 'kind';
  static const kHasValidated = 'has_validated';
  static const kErrors = 'errors';
  static const kServicesIntegrated = 'services_integrated';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get kind => attributes[kKind] ?? '';
  bool get isHasValidated => attributes[kHasValidated] == true;
  List get errors => attributes[kErrors] ?? [];
  bool get isServicesIntegrated => attributes[kServicesIntegrated] == true;




  PcoCheckInsCheckInTime() : super(kPcoApplication, kTypeString);
  PcoCheckInsCheckInTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsCheckInTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times;
  static Future<PcoCollection<PcoCheckInsCheckInTime>> getManyFromCheckInAndCheckInTime(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsCheckInTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times;
  static Future<PcoCollection<PcoCheckInsCheckInTime>> getSingleFromCheckInAndCheckInTime(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsCheckInTime.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
