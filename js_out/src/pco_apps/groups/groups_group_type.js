/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.328766
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups GroupType Object
/// 
/// - Application:        groups
/// - Id:                 group_type
/// - Type:               GroupType
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/group_types
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "GroupType",
///   "id": "1",
///   "attributes": {
///     "church_center_visible": true,
///     "church_center_map_visible": true,
///     "color": "string",
///     "default_group_settings": "string",
///     "description": "string",
///     "name": "string",
///     "position": 1
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
///
/// All Outbound Edges:
/// - `event-grouptype-events`: https://api.planningcenteronline.com/groups/v2/group_types/1/events
/// - `group-grouptype-groups`: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
/// - `resource-grouptype-resources`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
/// 
/// All Inbound Edges:
/// - `grouptype-group-group_type`: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
/// - `grouptype-organization-group_types`: https://api.planningcenteronline.com/groups/v2/group_types
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsGroupType extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'GroupType';
  static kTypeId = 'group_type';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'grouptype-organization-group_types';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/group_types';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/group_types';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  static get canQuery() { return ['id'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
  static get canOrderBy() { return ['name','position'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsGroupType.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsGroupType.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsGroupType.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kChurchCenterVisible() { return 'church_center_visible' }
  static get kChurchCenterMapVisible() { return 'church_center_map_visible' }
  static get kColor() { return 'color' }
  static get kDefaultGroupSettings() { return 'default_group_settings' }
  static get kDescription() { return 'description' }
  static get kName() { return 'name' }
  static get kPosition() { return 'position' }


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

  get isChurchCenterVisible() { return attributes[this.constructor.kChurchCenterVisible] == true; }
  get isChurchCenterMapVisible() { return attributes[this.constructor.kChurchCenterMapVisible] == true; }
  get color() { return attributes[this.constructor.kColor] ?? ''; }
  get defaultGroupSettings() { return attributes[this.constructor.kDefaultGroupSettings] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get position() { return attributes[this.constructor.kPosition] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsGroupType._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsGroupType({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types`
  /// 
  /// Available Query Filters:
  /// - `church_center_visible`
  /// - `not_church_center_visible`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/group_type`
  static getFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/group_type`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let url = `${apiEndpoint}/groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResources({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let url = `${apiEndpoint}/resources`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
