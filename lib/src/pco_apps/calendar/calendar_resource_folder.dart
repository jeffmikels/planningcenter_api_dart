/// This file was generated on 2021-11-25T00:07:20.715193


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
/// possible includes with parameter ?include=a,b
/// @resources: include associated resources 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @path_name (URLParameter), query on a specific path_name, example: ?where[path_name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCalendarResourceFolder extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceFolder';
  static const String kTypeId = 'resource_folder';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcefolder-organization-resource_folders';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';

  /// possible includes with parameter ?include=a,b
  /// @resources: include associated resources 
  static List<String> get canInclude => ['resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @path_name (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','path_name','updated_at'];

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


  PcoCalendarResourceFolder() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarResourceFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders;
  static Future<PcoCollection<PcoCalendarResourceFolder>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resource_folders';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResourceFolder Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder;
  static Future<PcoCollection<PcoCalendarResourceFolder>> getManyFromResource(String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_folder';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarResourceFolder Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders;
  static Future<PcoCollection<PcoCalendarResourceFolder>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resource_folders' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceFolder.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResourceFolder Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder;
  static Future<PcoCollection<PcoCalendarResourceFolder>> getSingleFromResource(String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_folder' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceFolder.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
Future<PcoCollection<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  var url = '$apiEndpoint/resources';
  return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:apiVersion);
}
    


}
