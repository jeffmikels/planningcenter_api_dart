/// This file was generated on 2021-11-25T00:07:20.849469


import '../../pco.dart';

/// This class represents a PCO Groups GroupType Object
/// 
/// Application: groups
/// Id:          group_type
/// Type:        GroupType
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"GroupType","id":"1","attributes":{"church_center_visible":true,"church_center_map_visible":true,"color":"string","default_group_settings":"string","description":"string","name":"string","position":1},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/group_types
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
///
class PcoGroupsGroupType extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'GroupType';
  static const String kTypeId = 'group_type';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'grouptype-organization-group_types';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/group_types';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  static List<String> get canQuery => ['id'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
  static List<String> get canOrderBy => ['name','position'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kChurchCenterVisible = 'church_center_visible';
  static const kChurchCenterMapVisible = 'church_center_map_visible';
  static const kColor = 'color';
  static const kDefaultGroupSettings = 'default_group_settings';
  static const kDescription = 'description';
  static const kName = 'name';
  static const kPosition = 'position';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isChurchCenterVisible => attributes[kChurchCenterVisible] == true;
  bool get isChurchCenterMapVisible => attributes[kChurchCenterMapVisible] == true;
  String get color => attributes[kColor] ?? '';
  String get defaultGroupSettings => attributes[kDefaultGroupSettings] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get name => attributes[kName] ?? '';
  int get position => attributes[kPosition] ?? 0;




  PcoGroupsGroupType() : super(kPcoApplication, kTypeString);
  PcoGroupsGroupType.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsGroupType Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/group_type;
  static Future<PcoCollection<PcoGroupsGroupType>> getManyFromGroup(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '/groups/v2/groups/$groupId/group_type';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroupType Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types;
  static Future<PcoCollection<PcoGroupsGroupType>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '/groups/v2/group_types';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsGroupType Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/group_type;
  static Future<PcoCollection<PcoGroupsGroupType>> getSingleFromGroup(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '/groups/v2/groups/$groupId/group_type' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroupType.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroupType Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types;
  static Future<PcoCollection<PcoGroupsGroupType>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '/groups/v2/group_types' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroupType.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/events
Future<PcoCollection<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
Future<PcoCollection<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroup.canInclude;
  var url = '$apiEndpoint/groups';
  return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
Future<PcoCollection<PcoGroupsResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  var url = '$apiEndpoint/resources';
  return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:apiVersion);
}
    


}
