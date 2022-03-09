/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.203741
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoCalendarResourceFolder extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ResourceFolder';
  static kTypeId = 'resource_folder';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resourcefolder-organization-resource_folders';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_folders';

  /// possible includes with parameter ?include=a,b
  /// - `resources`: include associated resources 
  static get canInclude() { return ['resources'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','path_name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarResourceFolder.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResourceFolder.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResourceFolder.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kKind() { return 'kind' }
  static get kPathName() { return 'path_name' }


  // getters and setters
  // @override
  get createAllowed() { return ['name']; }

  // @override
  get updateAllowed() { return ['name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get pathName() { return attributes[this.constructor.kPathName] ?? ''; }
  

  // setters for object attributes

  
  /// The folder name
  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResourceFolder._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResourceFolder({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoCalendarResourceFolder] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/resource_folders`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoCalendarResourceFolder.kPcoApplication, PcoCalendarResourceFolder.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/calendar/v2/resource_folders`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_folders`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/resource_folder`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/resource_folder`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResources({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resources`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
