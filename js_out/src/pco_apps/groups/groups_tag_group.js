/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.335536
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups TagGroup Object
/// 
/// - Application:        groups
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/tag_groups
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "display_publicly": true,
///     "multiple_options_enabled": true,
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
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
///
/// All Outbound Edges:
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
/// 
/// All Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/groups/v2/tag_groups
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsTagGroup extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'TagGroup';
  static kTypeId = 'tag_group';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'taggroup-organization-tag_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/tag_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['name'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
  static get canOrderBy() { return ['name','position'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsTagGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsTagGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsTagGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDisplayPublicly() { return 'display_publicly' }
  static get kMultipleOptionsEnabled() { return 'multiple_options_enabled' }
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

  get isDisplayPublicly() { return attributes[this.constructor.kDisplayPublicly] == true; }
  get isMultipleOptionsEnabled() { return attributes[this.constructor.kMultipleOptionsEnabled] == true; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get position() { return attributes[this.constructor.kPosition] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsTagGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsTagGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsTagGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `public`
  /// Filter tag groups that are visible on public pages
  /// 
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsTagGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/tag_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
