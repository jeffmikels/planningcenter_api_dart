/// This file was generated on 2021-11-19T12:10:42.732967


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
/// possible includes with parameter ?include=a,b
/// @people: include associated people 
/// @resources: include associated resources 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCalendarResourceApprovalGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceApprovalGroup';
  static const String kTypeId = 'resource_approval_group';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourceapprovalgroup-organization-resource_approval_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';

  /// possible includes with parameter ?include=a,b
  /// @people: include associated people 
  /// @resources: include associated resources 
  static List<String> get canInclude => ['people','resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoCalendarResourceApprovalGroup() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceApprovalGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarResourceApprovalGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups;
  static Future<List<PcoCalendarResourceApprovalGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResourceApprovalGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resource_approval_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceApprovalGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups;
  static Future<List<PcoCalendarResourceApprovalGroup>> getManyFromResourceAndResourceApprovalGroupIds(String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResourceApprovalGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceApprovalGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups;
  static Future<PcoCalendarResourceApprovalGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResourceApprovalGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resource_approval_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceApprovalGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceApprovalGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups;
  static Future<PcoCalendarResourceApprovalGroup?> getSingleFromResourceAndResourceApprovalGroupIds(String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResourceApprovalGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceApprovalGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
Future<List<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  List<PcoCalendarEventResourceRequest> retval = [];
  var url = '$apiEndpoint/event_resource_requests';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
Future<List<PcoCalendarPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resources';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
