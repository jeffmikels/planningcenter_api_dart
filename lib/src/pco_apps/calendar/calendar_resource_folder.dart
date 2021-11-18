/// This file was generated on 2021-11-17T23:59:30.002039


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceFolder Object
/// 
/// Application: calendar
/// Id:          resource_folder
/// Type:        ResourceFolder
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// An organizational folder containing rooms or resources.\n
/// 
/// Example:
/// 
/// {"type":"ResourceFolder","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","name":"string","updated_at":"2000-01-01T12:00:00Z","kind":"string","path_name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/resource_folders
/// 
class PcoCalendarResourceFolder extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'ResourceFolder';
  static const String typeId = 'resource_folder';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'resourcefolder-organization-resource_folders';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kKind = 'kind';
  static const kPathName = 'path_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];


  /// The folder name
  String get name => attributes[kName] ?? '';

  /// The type of folder, can either be `Room` or `Resource`
  String get kind => attributes[kKind] ?? '';

  /// A string representing the location of the folder if it is nested.
  ///Each parent folder is seperated by `/`
  String get pathName => attributes[kPathName] ?? '';



  /// The folder name
  set name(String s) => attributes[kName] = s;


  PcoCalendarResourceFolder() : super(pcoApplication, typeString);
  PcoCalendarResourceFolder.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarResourceFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders;
  static Future<List<PcoCalendarResourceFolder>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_folders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceFolder.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder;
  static Future<List<PcoCalendarResourceFolder>> getManyFromResourceAndResourceFolderIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceFolder> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_folder';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceFolder.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceFolder Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders;
  static Future<PcoCalendarResourceFolder?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceFolder?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_folders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceFolder.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceFolder Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder;
  static Future<PcoCalendarResourceFolder?> getSingleFromResourceAndResourceFolderIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceFolder?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_folder' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceFolder.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
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
