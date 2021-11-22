/// This file was generated on 2021-11-22T16:57:41.342881


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
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=

///
class PcoCheckInsAttendanceType extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'AttendanceType';
  static const String kTypeId = 'attendance_type';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/attendance_types';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id','name'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCheckInsAttendanceType() : super(kPcoApplication, kTypeString);
  PcoCheckInsAttendanceType.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsAttendanceType Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types;
  static Future<List<PcoCheckInsAttendanceType>> getManyFromEventAndAttendanceTypeIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsAttendanceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    var url = '/check-ins/v2/events/$eventId/attendance_types';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsAttendanceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsAttendanceType Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type;
  static Future<List<PcoCheckInsAttendanceType>> getManyFromHeadcountAndAttendanceTypeIds(String headcountId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsAttendanceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    var url = '/check-ins/v2/headcounts/$headcountId/attendance_type';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsAttendanceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsAttendanceType Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types;
  static Future<PcoCheckInsAttendanceType?> getSingleFromEventAndAttendanceTypeIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsAttendanceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    var url = '/check-ins/v2/events/$eventId/attendance_types' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsAttendanceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsAttendanceType Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type;
  static Future<PcoCheckInsAttendanceType?> getSingleFromHeadcountAndAttendanceTypeIds(String headcountId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsAttendanceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    var url = '/check-ins/v2/headcounts/$headcountId/attendance_type' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsAttendanceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
Future<List<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
  List<PcoCheckInsHeadcount> retval = [];
  var url = '$apiEndpoint/headcounts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsHeadcount.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
