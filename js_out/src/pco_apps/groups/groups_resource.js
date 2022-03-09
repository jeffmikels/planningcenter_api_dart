/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.334119
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Resource Object
/// 
/// - Application:        groups
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Resource",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "last_updated": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "type": "string",
///     "visibility": "value"
///   },
///   "relationships": {
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `last_updated`: (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
/// 
/// All Inbound Edges:
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `resource-grouptype-resources`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// - `resource-resource-download`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download
/// - `resource-resource-visit`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsResource extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Resource';
  static kTypeId = 'resource';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'resource-group-resources';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/resources';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/group_types/1/resources';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `last_updated`: (URLParameter), prefix with a hyphen (-last_updated) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['last_updated','name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsResource.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsResource.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsResource.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDescription() { return 'description' }
  static get kLastUpdated() { return 'last_updated' }
  static get kName() { return 'name' }
  static get kType() { return 'type' }
  static get kVisibility() { return 'visibility' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get lastUpdated() { return Date.parse(attributes[this.constructor.kLastUpdated] ?? 0); }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get type() { return attributes[this.constructor.kType] ?? ''; }
  get visibility() { return attributes[this.constructor.kVisibility] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsResource._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsResource({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/resources`
  /// 
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  /// 
  static getFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/resources`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/${groupTypeId}/resources`
  static getFromGroupType(groupTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types/${groupTypeId}/resources`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/${groupTypeId}/resources/${resourceId}/download`
  static getDownloadFromGroupTypeAndResource(groupTypeId, resourceId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types/${groupTypeId}/resources/${resourceId}/download`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting one)
  /// using a path like this: `/groups/v2/group_types/${groupTypeId}/resources/${resourceId}/visit`
  static getVisitFromGroupTypeAndResource(groupTypeId, resourceId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types/${groupTypeId}/resources/${resourceId}/visit`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/download`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDownload({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let url = `${apiEndpoint}/download`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources/1/visit`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getVisit({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let url = `${apiEndpoint}/visit`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
