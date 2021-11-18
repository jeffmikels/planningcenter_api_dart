/// This file was generated on 2021-11-18T13:57:09.857562


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
class PcoCheckInsCheckInTime extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'CheckInTime';
  static const String typeId = 'check_in_time';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'checkintime-checkin-check_in_times';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCheckInsCheckInTime() : super(pcoApplication, typeString);
  PcoCheckInsCheckInTime.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsCheckInTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times;
  static Future<List<PcoCheckInsCheckInTime>> getManyFromCheckInAndCheckInTimeIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckInTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckInTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsCheckInTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times;
  static Future<PcoCheckInsCheckInTime?> getSingleFromCheckInAndCheckInTimeIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckInTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckInTime.fromJson(res.data);
    }
    return retval;
  }




}
