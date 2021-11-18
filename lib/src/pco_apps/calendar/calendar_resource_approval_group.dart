/// This file was generated on 2021-11-17T23:59:30.000207


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceApprovalGroup Object
/// 
/// Application: calendar
/// Id:          resource_approval_group
/// Type:        ResourceApprovalGroup
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A group of people that can be attached to a room or resource\nin order to require their approval for booking.\n
/// 
/// Example:
/// 
/// {"type":"ResourceApprovalGroup","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","name":"string","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// 
class PcoCalendarResourceApprovalGroup extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'ResourceApprovalGroup';
  static const String typeId = 'resource_approval_group';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'resourceapprovalgroup-organization-resource_approval_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kResourceCount = 'resource_count';
  static const kRoomCount = 'room_count';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];


  /// Name of the approval group
  String get name => attributes[kName] ?? '';

  /// The number of resources in the approval group
  ///Only available when requested with the `?fields` param
  int get resourceCount => attributes[kResourceCount] ?? 0;

  /// The number of rooms in the approval group
  ///Only available when requested with the `?fields` param
  int get roomCount => attributes[kRoomCount] ?? 0;



  /// Name of the approval group
  set name(String s) => attributes[kName] = s;


  PcoCalendarResourceApprovalGroup() : super(pcoApplication, typeString);
  PcoCalendarResourceApprovalGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarResourceApprovalGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups;
  static Future<List<PcoCalendarResourceApprovalGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceApprovalGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceApprovalGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups;
  static Future<List<PcoCalendarResourceApprovalGroup>> getManyFromResourceAndResourceApprovalGroupIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceApprovalGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceApprovalGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups;
  static Future<PcoCalendarResourceApprovalGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceApprovalGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceApprovalGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceApprovalGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups;
  static Future<PcoCalendarResourceApprovalGroup?> getSingleFromResourceAndResourceApprovalGroupIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceApprovalGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceApprovalGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
Future<List<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventResourceRequest> retval = [];
  var url = '$apiEndpoint/event_resource_requests';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
Future<List<PcoCalendarPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resources';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    

}
