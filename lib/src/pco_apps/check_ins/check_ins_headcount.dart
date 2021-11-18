/// This file was generated on 2021-11-18T13:57:09.862368


import '../../pco.dart';

/// This class represents a PCO CheckIns Headcount Object
/// 
/// Application: check-ins
/// Id:          headcount
/// Type:        Headcount
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A tally of attendees for a given event time and attendance type.\nIf one does not exist, the count may have been zero.\n
/// 
/// Example:
/// 
/// {"type":"Headcount","id":"1","attributes":{"total":1,"updated_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z"},"relationships":{"event_time":{"data":{"type":"EventTime","id":"1"}},"attendance_type":{"data":{"type":"AttendanceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/headcounts
/// 
class PcoCheckInsHeadcount extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Headcount';
  static const String typeId = 'headcount';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'headcount-organization-headcounts';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/headcounts';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kTotal = 'total';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get total => attributes[kTotal] ?? 0;




  PcoCheckInsHeadcount() : super(pcoApplication, typeString);
  PcoCheckInsHeadcount.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getManyFromAttendanceTypeAndHeadcountIds(String attendanceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getManyFromEventTimeAndHeadcountIds(String eventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingleFromAttendanceTypeAndHeadcountIds(String attendanceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingleFromEventTimeAndHeadcountIds(String eventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsAttendanceType objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
Future<List<PcoCheckInsAttendanceType>> getAttendanceTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsAttendanceType> retval = [];
  var url = '$apiEndpoint/attendance_type';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsAttendanceType.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    

}
