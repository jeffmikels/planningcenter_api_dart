/// This file was generated on 2021-11-17T23:59:30.063997


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
class PcoGroupsResource extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Resource';
  static const String typeId = 'resource';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'resource-group-resources';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/resources';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGroupsResource() : super(pcoApplication, typeString);
  PcoGroupsResource.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources;
  static Future<List<PcoGroupsResource>> getManyFromGroupAndResourceIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceIds(String groupTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndDownloadIds(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsResource Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<List<PcoGroupsResource>> getManyFromGroupTypeAndResourceAndVisitIds(String groupTypeId,String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsResource> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsResource.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources;
  static Future<PcoGroupsResource?> getSingleFromGroupAndResourceIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceIds(String groupTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceAndDownloadIds(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/download' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsResource Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit;
  static Future<PcoGroupsResource?> getSingleFromGroupTypeAndResourceAndVisitIds(String groupTypeId,String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsResource?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/resources/$resourceId/visit' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsResource.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
Future<List<PcoGroupsResource>> getResourcesDownload({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsResource> retval = [];
  var url = '$apiEndpoint/download';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsResource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
Future<List<PcoGroupsResource>> getResourcesVisit({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsResource> retval = [];
  var url = '$apiEndpoint/visit';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsResource.fromJson(itemData));
    }
  }
  return retval;
}
    

}
