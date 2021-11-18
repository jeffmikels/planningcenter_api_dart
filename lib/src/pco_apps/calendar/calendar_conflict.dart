/// This file was generated on 2021-11-18T15:28:02.141051


import '../../pco.dart';

/// This class represents a PCO Calendar Conflict Object
/// 
/// Application: calendar
/// Id:          conflict
/// Type:        Conflict
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A conflict between two events caused by overlapping event resource\nrequests.\n\nIf the conflict has been resolved, `resolved_at` will be present.\n
/// 
/// Example:
/// 
/// {"type":"Conflict","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","note":"string","resolved_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"resource":{"data":{"type":"Resource","id":"1"}},"resolved_by":{"data":{"type":"Person","id":"1"}},"winner":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/conflicts
/// 
class PcoCalendarConflict extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Conflict';
  static const String kTypeId = 'conflict';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'conflict-organization-conflicts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kNote = 'note';
  static const kResolvedAt = 'resolved_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Additional information about the conflict or resolution
  String get note => attributes[kNote] ?? '';

  /// UTC time at which the conflict was resolved
  DateTime get resolvedAt => DateTime.parse(attributes[kResolvedAt] ?? '');




  PcoCalendarConflict() : super(kPcoApplication, kTypeString);
  PcoCalendarConflict.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts;
  static Future<List<PcoCalendarConflict>> getManyFromEventAndConflictIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts;
  static Future<List<PcoCalendarConflict>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts;
  static Future<List<PcoCalendarConflict>> getManyFromResourceAndConflictIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts;
  static Future<PcoCalendarConflict?> getSingleFromEventAndConflictIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts;
  static Future<PcoCalendarConflict?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts;
  static Future<PcoCalendarConflict?> getSingleFromResourceAndConflictIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
Future<List<PcoCalendarPerson>> getPersonsResolvedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/resolved_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
Future<List<PcoCalendarEvent>> getEventsWinner({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/winner';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData));
    }
  }
  return retval;
}
    

}
