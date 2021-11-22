/// This file was generated on 2021-11-22T16:57:41.359718


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
/// possible includes with parameter ?include=a,b
/// @attendance_type: include associated attendance_type 
/// @event_time: include associated event_time 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @total (URLParameter), prefix with a hyphen (-total) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCheckInsHeadcount extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Headcount';
  static const String kTypeId = 'headcount';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'headcount-organization-headcounts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/headcounts';

  /// possible includes with parameter ?include=a,b
  /// @attendance_type: include associated attendance_type 
  /// @event_time: include associated event_time 
  static List<String> get canInclude => ['attendance_type','event_time'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @total (URLParameter), prefix with a hyphen (-total) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','total','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kTotal = 'total';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get total => attributes[kTotal] ?? 0;




  PcoCheckInsHeadcount() : super(kPcoApplication, kTypeString);
  PcoCheckInsHeadcount.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getManyFromAttendanceTypeAndHeadcountIds(String attendanceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getManyFromEventTimeAndHeadcountIds(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsHeadcount Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts;
  static Future<List<PcoCheckInsHeadcount>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsHeadcount> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/headcounts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsHeadcount.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingleFromAttendanceTypeAndHeadcountIds(String attendanceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingleFromEventTimeAndHeadcountIds(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsHeadcount Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts;
  static Future<PcoCheckInsHeadcount?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsHeadcount?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    var url = '/check-ins/v2/headcounts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsHeadcount.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsAttendanceType objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
Future<List<PcoCheckInsAttendanceType>> getAttendanceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
  List<PcoCheckInsAttendanceType> retval = [];
  var url = '$apiEndpoint/attendance_type';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsAttendanceType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
