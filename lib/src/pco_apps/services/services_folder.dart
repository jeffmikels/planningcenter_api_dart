/// This file was generated on 2021-11-18T13:57:09.713996


import '../../pco.dart';

/// This class represents a PCO Services Folder Object
/// 
/// Application: services
/// Id:          folder
/// Type:        Folder
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A folder is a container used to organize multiple Service Types or other Folders.
/// 
/// Example:
/// 
/// {"type":"Folder","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","name":"string","updated_at":"2000-01-01T12:00:00Z","container":"string"},"relationships":{"ancestors":{"data":{"type":"Folder","id":"1"}},"parent":{"data":{"type":"Folder","id":"1"}},"campus":{"data":{"type":"Campus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/folders
/// 
class PcoServicesFolder extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Folder';
  static const String typeId = 'folder';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'folder-organization-folders';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kContainer = 'container';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','parent_id','campus_id'];
  @override
  List<String> get updateAllowed => ['name','parent_id','campus_id'];

  String get name => attributes[kName] ?? '';
  String get container => attributes[kContainer] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoServicesFolder() : super(pcoApplication, typeString);
  PcoServicesFolder.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders;
  static Future<List<PcoServicesFolder>> getManyFromFolderAndFolderIds(String folderId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/folders/$folderId/folders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders;
  static Future<List<PcoServicesFolder>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/folders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder;
  static Future<List<PcoServicesFolder>> getManyFromTagGroupAndFolderIds(String tagGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups/$tagGroupId/folder';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders;
  static Future<PcoServicesFolder?> getSingleFromFolderAndFolderIds(String folderId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/folders/$folderId/folders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders;
  static Future<PcoServicesFolder?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/folders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder;
  static Future<PcoServicesFolder?> getSingleFromTagGroupAndFolderIds(String tagGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/tag_groups/$tagGroupId/folder' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesFolder objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders
Future<List<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesFolder> retval = [];
  var url = '$apiEndpoint/folders';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesFolder.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/service_types
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData));
    }
  }
  return retval;
}
    

}
