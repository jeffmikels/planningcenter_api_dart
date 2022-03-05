/// This file was generated on 2022-03-04T20:00:53.358390


import '../../pco.dart';

/// This class represents a PCO Services Folder Object
/// 
/// - Application:        services
/// - Id:                 folder
/// - Type:               Folder
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/folders
/// 
/// Description:
/// A folder is a container used to organize multiple Service Types or other Folders.
/// 
/// Example:
/// ```json
/// {
///   "type": "Folder",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "container": "string"
///   },
///   "relationships": {
///     "ancestors": {
///       "data": {
///         "type": "Folder",
///         "id": "1"
///       }
///     },
///     "parent": {
///       "data": {
///         "type": "Folder",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - service_types: include associated service_types 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `folder-folder-folders`: https://api.planningcenteronline.com/services/v2/folders/1/folders
/// - `servicetype-folder-service_types`: https://api.planningcenteronline.com/services/v2/folders/1/service_types
/// 
/// All Inbound Edges:
/// - `folder-folder-folders`: https://api.planningcenteronline.com/services/v2/folders/1/folders
/// - `folder-organization-folders`: https://api.planningcenteronline.com/services/v2/folders
/// - `folder-taggroup-folder`: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
/// 
/// All Actions:
/// NONE
///
class PcoServicesFolder extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Folder';
  static const String kTypeId = 'folder';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'folder-organization-folders';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';

  /// possible includes with parameter ?include=a,b
  /// - `service_types`: include associated service_types 
  static List<String> get canInclude => ['service_types'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kContainer = 'container';
  static const kParentId = 'parent_id';
  static const kCampusId = 'campus_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','parent_id','campus_id'];

  @override
  List<String> get updateAllowed => ['name','parent_id','campus_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get container => attributes[kContainer] ?? '';
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  

  // additional setters and getters for assignable values

  String get parentId => attributes[kParentId] ?? '';
  set parentId(String s) => attributes[kParentId] = s;
  String get campusId => attributes[kCampusId] ?? '';
  set campusId(String s) => attributes[kCampusId] = s;
  



  // Class Constructors
  PcoServicesFolder() : super(kPcoApplication, kTypeString);
  PcoServicesFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesFolder] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/folders`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesFolder.create() {
    return PcoServicesFolder()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/folders';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `/services/v2/folders`
  static Future<PcoCollection<PcoServicesFolder>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `/services/v2/folders/$folderId/folders`
  static Future<PcoCollection<PcoServicesFolder>> getFromFolder(String folderId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/folders/$folderId/folders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesFolder] objects (expecting one)
  /// using a path like this: `/services/v2/tag_groups/$tagGroupId/folder`
  static Future<PcoCollection<PcoServicesFolder>> getFromTagGroup(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '/services/v2/tag_groups/$tagGroupId/folder';
    
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders/1/folders`
  Future<PcoCollection<PcoServicesFolder>> getFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    var url = '$apiEndpoint/folders';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders/1/service_types`
  Future<PcoCollection<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '$apiEndpoint/service_types';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
