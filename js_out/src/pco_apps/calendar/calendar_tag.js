/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.210820
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Tag Object
/// 
/// - Application:        calendar
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/tags
/// 
/// Description:
/// An organizational tag that can be applied to events.
/// 
/// Applied tags can be used to filter events on the calendar or
/// filter events for reports, iCal feeds, kiosk, and the widget.
/// 
/// Example:
/// ```json
/// {
///   "type": "Tag",
///   "id": "1",
///   "attributes": {
///     "color": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "position": 1.42,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - tag_group: include associated tag_group 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `color`: (URLParameter), query on a specific color, example: ?where[color]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `position`: (URLParameter), query on a specific position, example: ?where[position]=1.42
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
///
/// All Outbound Edges:
/// - `eventinstance-tag-event_instances`: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
/// - `event-tag-events`: https://api.planningcenteronline.com/calendar/v2/tags/1/events
/// - `taggroup-tag-tag_group`: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
/// 
/// All Inbound Edges:
/// - `tag-eventinstance-tags`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
/// - `tag-event-tags`: https://api.planningcenteronline.com/calendar/v2/events/1/tags
/// - `tag-organization-tags`: https://api.planningcenteronline.com/calendar/v2/tags
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarTag extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Tag';
  static kTypeId = 'tag';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'tag-organization-tags';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tags';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tags';

  /// possible includes with parameter ?include=a,b
  /// - `tag_group`: include associated tag_group 
  static get canInclude() { return ['tag_group'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `color`: (URLParameter), query on a specific color, example: ?where[color]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `position`: (URLParameter), query on a specific position, example: ?where[position]=1.42
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['color','created_at','id','name','position','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
  static get canOrderBy() { return ['name','position'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarTag.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarTag.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarTag.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kColor() { return 'color' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kPosition() { return 'position' }
  static get kUpdatedAt() { return 'updated_at' }


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

  get color() { return attributes[this.constructor.kColor] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get position() { return attributes[this.constructor.kPosition] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarTag._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarTag({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags`
  /// 
  /// Available Query Filters:
  /// - `individual`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tags`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/${eventInstanceId}/tags`
  static getFromEventInstance(eventInstanceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances/${eventInstanceId}/tags`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/tags`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/tags`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/${tagGroupId}/tags`
  static getFromTagGroup(tagGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tag_groups/${tagGroupId}/tags`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventInstances({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let url = `${apiEndpoint}/event_instances`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTagGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    let url = `${apiEndpoint}/tag_group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
