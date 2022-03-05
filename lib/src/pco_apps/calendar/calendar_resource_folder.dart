/// This file was generated on 2022-03-04T20:00:53.866462


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceFolder Object
/// 
/// - Application:        calendar
/// - Id:                 resource_folder
/// - Type:               ResourceFolder
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_folders
/// 
/// Description:
/// An organizational folder containing rooms or resources.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceFolder",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "path_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resources: include associated resources 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `resource-resourcefolder-resources`: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
/// 
/// All Inbound Edges:
/// - `resourcefolder-organization-resource_folders`: https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - `resourcefolder-resource-resource_folder`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
/// 
/// All Actions:
/// NONE
///
class PcoCalendarResourceFolder extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceFolder';
  static const String kTypeId = 'resource_folder';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcefolder-organization-resource_folders';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';

  /// possible includes with parameter ?include=a,b
  /// - `resources`: include associated resources 
  static List<String> get canInclude => ['resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','path_name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kCreatedAt = 'created_at';
  static const kName = 'name';
  static const kUpdatedAt = 'updated_at';
  static const kKind = 'kind';
  static const kPathName = 'path_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get kind => attributes[kKind] ?? '';
  String get pathName => attributes[kPathName] ?? '';
  

  // setters for object attributes

  
  /// The folder name
  set name(String s) => attributes[kName] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarResourceFolder() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoCalendarResourceFolder] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/resource_folders`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoCalendarResourceFolder.create() {
    return PcoCalendarResourceFolder()
      .._apiPathOverride = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static Future<PcoCollection<PcoCalendarResourceFolder>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resource_folders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_folder`
  static Future<PcoCollection<PcoCalendarResourceFolder>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_folder';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources`
  Future<PcoCollection<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
