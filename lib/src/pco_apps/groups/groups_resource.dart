/// This file was generated on 2021-11-25T00:07:20.852789


import '../../pco.dart';

/// This class represents a PCO Groups Resource Object
/// 
/// Application: groups
/// Id:          resource
/// Type:        Resource
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Resource","id":"1","attributes":{"description":"string","last_updated":"2000-01-01T12:00:00Z","name":"string","type":"string","visibility":"value"},"relationships":{"created_by":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @last_updated (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoGroupsResource extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Resource';
  static const String kTypeId = 'resource';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'resource-group-resources';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/resources';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @last_updated (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['last_updated','name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kDescription = 'description';
  static const kLastUpdated = 'last_updated';
  static const kName = 'name';
  static const kType = 'type';
  static const kVisibility = 'visibility';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get description => attributes[kDescription] ?? '';
  DateTime get lastUpdated => DateTime.parse(attributes[kLastUpdated] ?? '');
  String get name => attributes[kName] ?? '';

  /// Either `FileResource` or `LinkResource`
  String get type => attributes[kType] ?? '';

  /// Either `members` or `leaders`
  ///Possible values: `leaders` or `members`
  String get visibility => attributes[kVisibility] ?? '';




  PcoGroupsResource() : super(kPcoApplication, kTypeString);
  PcoGroupsResource.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources;
  static Future<PcoCollection<PcoGroupsResource>> getManyFromGroupAndResource(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/groups/$groupId/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<PcoCollection<PcoGroupsResource>> getManyFromGroupTypeAndResource(String groupTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<PcoCollection<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndDownload(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<PcoCollection<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndVisit(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources;
  static Future<PcoCollection<PcoGroupsResource>> getSingleFromGroupAndResource(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/groups/$groupId/resources' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<PcoCollection<PcoGroupsResource>> getSingleFromGroupTypeAndResource(String groupTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<PcoCollection<PcoGroupsResource>> getSingleFromGroupTypeAndResourceAndDownload(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<PcoCollection<PcoGroupsResource>> getSingleFromGroupTypeAndResourceAndVisit(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
Future<PcoCollection<PcoGroupsResource>> getResourcesDownload({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  var url = '$apiEndpoint/download';
  return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
Future<PcoCollection<PcoGroupsResource>> getResourcesVisit({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  var url = '$apiEndpoint/visit';
  return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:apiVersion);
}
    


}
