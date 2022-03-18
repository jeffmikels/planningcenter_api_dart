/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-18T18:33:02.228156
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



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
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// A folder is a container used to organize multiple Service Types or other Folders.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (rw) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `container` (ro) -> PCO: `container`
/// - `parentId` (wo) -> PCO: `parent_id`
/// - `campusId` (wo) -> PCO: `campus_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `service_types`: include associated service_types 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `folder-folder-folders`: https://api.planningcenteronline.com/services/v2/folders/1/folders
/// - `servicetype-folder-service_types`: https://api.planningcenteronline.com/services/v2/folders/1/service_types
/// 
/// Inbound Edges:
/// - `folder-folder-folders`: https://api.planningcenteronline.com/services/v2/folders/1/folders
/// - `folder-organization-folders`: https://api.planningcenteronline.com/services/v2/folders
/// - `folder-taggroup-folder`: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesFolder extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Folder';
  static const String kTypeId = 'folder';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';
  static const String kCreatePathTemplate = 'null';

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
  String get createPathTemplate => kCreatePathTemplate;

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
  List<String> get createAllowed => ['name', 'parent_id', 'campus_id'];

  @override
  List<String> get updateAllowed => ['name', 'parent_id', 'campus_id'];

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
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;  
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set parentId(String? x) => (x == null) ? attributes.remove(kParentId) : attributes[kParentId] = x;
  String get parentId => attributes[kParentId] ?? '';
  
  /// pass `null` to remove key from attributes
  set campusId(String? x) => (x == null) ? attributes.remove(kCampusId) : attributes[kCampusId] = x;
  String get campusId => attributes[kCampusId] ?? '';

  // Class Constructors
  PcoServicesFolder._() : super(kPcoApplication, kTypeString);
  PcoServicesFolder.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



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
