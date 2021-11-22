/// This file was generated on 2021-11-22T16:57:41.894244


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGroupsOrganization extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';




  PcoGroupsOrganization() : super(kPcoApplication, kTypeString);
  PcoGroupsOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);





/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events
Future<List<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsEvent.canInclude;
  List<PcoGroupsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroupType objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types
Future<List<PcoGroupsGroupType>> getGroupTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
  List<PcoGroupsGroupType> retval = [];
  var url = '$apiEndpoint/group_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroupType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroup.canInclude;
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people
Future<List<PcoGroupsPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsPerson.canInclude;
  List<PcoGroupsPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/tag_groups
Future<List<PcoGroupsTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
  List<PcoGroupsTagGroup> retval = [];
  var url = '$apiEndpoint/tag_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsTagGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
