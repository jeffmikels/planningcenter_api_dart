/// This file was generated on 2021-11-19T12:10:42.817830


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
  static Future<List<PcoGroupsResource>> getManyFromGroupAndResourceIds(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/groups/$groupId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceIds(String groupTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndDownloadIds(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndVisitIds(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources;
  static Future<PcoGroupsResource?> getSingleFromGroupAndResourceIds(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/groups/$groupId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceIds(String groupTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceAndDownloadIds(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceAndVisitIds(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
Future<List<PcoGroupsResource>> getResourcesDownload({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  List<PcoGroupsResource> retval = [];
  var url = '$apiEndpoint/download';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
Future<List<PcoGroupsResource>> getResourcesVisit({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  List<PcoGroupsResource> retval = [];
  var url = '$apiEndpoint/visit';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
