/// This file was generated on 2021-11-19T12:10:42.716936


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
/// possible includes with parameter ?include=a,b
/// @resolved_by: include associated resolved_by 
/// @resource: include associated resource 
/// @winner: include associated winner 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @resolved_at (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
///
class PcoCalendarConflict extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Conflict';
  static const String kTypeId = 'conflict';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'conflict-organization-conflicts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';

  /// possible includes with parameter ?include=a,b
  /// @resolved_by: include associated resolved_by 
  /// @resource: include associated resource 
  /// @winner: include associated winner 
  static List<String> get canInclude => ['resolved_by','resource','winner'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @resolved_at (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
  static List<String> get canOrderBy => ['resolved_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoCalendarConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts;
  static Future<List<PcoCalendarConflict>> getManyFromEventAndConflictIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/events/$eventId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts;
  static Future<List<PcoCalendarConflict>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarConflict Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts;
  static Future<List<PcoCalendarConflict>> getManyFromResourceAndConflictIds(String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarConflict> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/resources/$resourceId/conflicts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarConflict.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts;
  static Future<PcoCalendarConflict?> getSingleFromEventAndConflictIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/events/$eventId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts;
  static Future<PcoCalendarConflict?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarConflict Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts;
  static Future<PcoCalendarConflict?> getSingleFromResourceAndConflictIds(String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarConflict?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/resources/$resourceId/conflicts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarConflict.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
Future<List<PcoCalendarPerson>> getPersonsResolvedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/resolved_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
Future<List<PcoCalendarEvent>> getEventsWinner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/winner';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
