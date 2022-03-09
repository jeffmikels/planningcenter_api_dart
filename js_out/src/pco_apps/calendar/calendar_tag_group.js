/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.211563
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar TagGroup Object
/// 
/// - Application:        calendar
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/tag_groups
/// 
/// Description:
/// A grouping of tags for organizational purposes.
/// 
/// Example:
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "required": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - events: include associated events 
/// - tags: include associated tags 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
/// 
/// All Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - `taggroup-tag-tag_group`: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarTagGroup extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'TagGroup';
  static kTypeId = 'tag_group';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'taggroup-organization-tag_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tag_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// - `events`: include associated events 
  /// - `tags`: include associated tags 
  static get canInclude() { return ['events','tags'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarTagGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarTagGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarTagGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kRequired() { return 'required' }


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

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isRequired() { return attributes[this.constructor.kRequired] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarTagGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarTagGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups`
  /// 
  /// Available Query Filters:
  /// - `required`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tag_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/${tagId}/tag_group`
  static getFromTag(tagId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tags/${tagId}/tag_group`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
