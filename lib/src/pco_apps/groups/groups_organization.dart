/// This file was generated on 2021-11-18T13:57:10.271810


import '../../pco.dart';

/// This class represents a PCO Groups Organization Object
/// 
/// Application: groups
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2
/// 
class PcoGroupsOrganization extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Organization';
  static const String typeId = 'organization';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';




  PcoGroupsOrganization() : super(pcoApplication, typeString);
  PcoGroupsOrganization.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);





/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events
Future<List<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroupType objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types
Future<List<PcoGroupsGroupType>> getGroupTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroupType> retval = [];
  var url = '$apiEndpoint/group_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroupType.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people
Future<List<PcoGroupsPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups
Future<List<PcoGroupsTagGroup>> getTagGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsTagGroup> retval = [];
  var url = '$apiEndpoint/tag_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsTagGroup.fromJson(itemData));
    }
  }
  return retval;
}
    

}
