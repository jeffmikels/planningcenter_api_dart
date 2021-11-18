/// This file was generated on 2021-11-17T23:59:30.056733


import '../../pco.dart';

/// This class represents a PCO Groups Attendance Object
/// 
/// Application: groups
/// Id:          attendance
/// Type:        Attendance
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Attendance","id":"1","attributes":{"attended":true,"role":"value"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// 
class PcoGroupsAttendance extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Attendance';
  static const String typeId = 'attendance';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'attendance-event-attendances';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/attendances';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kAttended = 'attended';
  static const kRole = 'role';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isAttended => attributes[kAttended] == true;

  /// Possible values: `member`, `leader`, `visitor`, or `applicant`
  String get role => attributes[kRole] ?? '';




  PcoGroupsAttendance() : super(pcoApplication, typeString);
  PcoGroupsAttendance.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsAttendance Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances;
  static Future<List<PcoGroupsAttendance>> getManyFromEventAndAttendanceIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsAttendance> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/attendances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsAttendance.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsAttendance Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances;
  static Future<PcoGroupsAttendance?> getSingleFromEventAndAttendanceIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsAttendance?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/attendances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsAttendance.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
Future<List<PcoGroupsPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
