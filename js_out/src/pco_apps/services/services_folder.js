/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.340390
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoServicesFolder extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Folder';
  static kTypeId = 'folder';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'folder-organization-folders';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/folders';

  /// possible includes with parameter ?include=a,b
  /// - `service_types`: include associated service_types 
  static get canInclude() { return ['service_types'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesFolder.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesFolder.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesFolder.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kContainer() { return 'container' }
  static get kParentId() { return 'parent_id' }
  static get kCampusId() { return 'campus_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','parent_id','campus_id']; }

  // @override
  get updateAllowed() { return ['name','parent_id','campus_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get container() { return attributes[this.constructor.kContainer] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  get parentId() { return attributes[this.constructor.kParentId] ?? ''; }
  set parentId(s) {attributes[this.constructor.kParentId] = s;}
  get campusId() { return attributes[this.constructor.kCampusId] ?? ''; }
  set campusId(s) {attributes[this.constructor.kCampusId] = s;}
  



  // Class Constructors
  // PcoServicesFolder._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesFolder({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesFolder] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/folders`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesFolder.kPcoApplication, PcoServicesFolder.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/folders`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `/services/v2/folders`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/folders`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `/services/v2/folders/${folderId}/folders`
  static getFromFolder(folderId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/folders/${folderId}/folders`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting one)
  /// using a path like this: `/services/v2/tag_groups/${tagGroupId}/folder`
  static getFromTagGroup(tagGroupId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/tag_groups/${tagGroupId}/folder`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders/1/folders`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFolders({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesFolder.canInclude;
    let url = `${apiEndpoint}/folders`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/folders/1/service_types`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getServiceTypes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let url = `${apiEndpoint}/service_types`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
