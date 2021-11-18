/// This file was generated on 2021-11-17T23:59:27.184181


import '../../pco.dart';

/// This class represents a PCO CheckIns AttendanceType Object
/// 
/// Application: check-ins
/// Id:          attendance_type
/// Type:        AttendanceType
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A kind of attendee which is tracked by _headcount_, not by check-in.\n
/// 
/// Example:
/// 
/// {"type":"AttendanceType","id":"1","attributes":{"name":"string","color":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","limit":1},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/attendance_types
/// 
class PcoCheckInsAttendanceType extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'AttendanceType';
  static const String typeId = 'attendance_type';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/attendance_types';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kColor = 'color';
  static const kLimit = 'limit';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get color => attributes[kColor] ?? '';
  int get limit => attributes[kLimit] ?? 0;




  PcoCheckInsAttendanceType() : super(pcoApplication, typeString);
  PcoCheckInsAttendanceType.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsAttendanceType Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types;
  static Future<List<PcoCheckInsAttendanceType>> getManyFromEventAndAttendanceTypeIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsAttendanceType> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/attendance_types';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsAttendanceType.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsAttendanceType Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type;
  static Future<List<PcoCheckInsAttendanceType>> getManyFromHeadcountAndAttendanceTypeIds(String headcountId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsAttendanceType> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts/$headcountId/attendance_type';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsAttendanceType.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsAttendanceType Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types;
  static Future<PcoCheckInsAttendanceType?> getSingleFromEventAndAttendanceTypeIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsAttendanceType?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/attendance_types' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsAttendanceType.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsAttendanceType Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type;
  static Future<PcoCheckInsAttendanceType?> getSingleFromHeadcountAndAttendanceTypeIds(String headcountId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsAttendanceType?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts/$headcountId/attendance_type' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsAttendanceType.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
Future<List<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsHeadcount> retval = [];
  var url = '$apiEndpoint/headcounts';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsHeadcount.fromJson(itemData));
    }
  }
  return retval;
}
    

}
