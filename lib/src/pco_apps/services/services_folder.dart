/// This file was generated on 2021-11-19T12:10:42.020376


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
/// possible includes with parameter ?include=a,b
/// @service_types: include associated service_types 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoServicesFolder extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Folder';
  static const String kTypeId = 'folder';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'folder-organization-folders';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';

  /// possible includes with parameter ?include=a,b
  /// @service_types: include associated service_types 
  static List<String> get canInclude => ['service_types'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoServicesFolder() : super(kPcoApplication, kTypeString);
  PcoServicesFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders;
  static Future<List<PcoServicesFolder>> getManyFromFolderAndFolderIds(String folderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders/$folderId/folders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders;
  static Future<List<PcoServicesFolder>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder;
  static Future<List<PcoServicesFolder>> getManyFromTagGroupAndFolderIds(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/folder';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders;
  static Future<PcoServicesFolder?> getSingleFromFolderAndFolderIds(String folderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders/$folderId/folders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders;
  static Future<PcoServicesFolder?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesFolder Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder;
  static Future<PcoServicesFolder?> getSingleFromTagGroupAndFolderIds(String tagGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesFolder?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/folder' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesFolder.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesFolder objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/folders
Future<List<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesFolder.canInclude;
  List<PcoServicesFolder> retval = [];
  var url = '$apiEndpoint/folders';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesFolder.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/service_types
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesServiceType.canInclude;
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
