/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.160461
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Conflict Object
/// 
/// - Application:        calendar
/// - Id:                 conflict
/// - Type:               Conflict
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/conflicts
/// 
/// Description:
/// A conflict between two events caused by overlapping event resource
/// requests.
/// 
/// If the conflict has been resolved, `resolved_at` will be present.
/// 
/// Example:
/// ```json
/// {
///   "type": "Conflict",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "note": "string",
///     "resolved_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "resolved_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "winner": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resolved_by: include associated resolved_by 
/// - resource: include associated resource 
/// - winner: include associated winner 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `resolved_at`: (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `resource-conflict-resource`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
/// 
/// All Inbound Edges:
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `conflict-organization-conflicts`: https://api.planningcenteronline.com/calendar/v2/conflicts
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarConflict extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Conflict';
  static kTypeId = 'conflict';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'conflict-organization-conflicts';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';

  /// possible includes with parameter ?include=a,b
  /// - `resolved_by`: include associated resolved_by 
  /// - `resource`: include associated resource 
  /// - `winner`: include associated winner 
  static get canInclude() { return ['resolved_by','resource','winner'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `resolved_at`: (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
  static get canOrderBy() { return ['resolved_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarConflict.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarConflict.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarConflict.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kNote() { return 'note' }
  static get kResolvedAt() { return 'resolved_at' }
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

  get note() { return attributes[this.constructor.kNote] ?? ''; }
  get resolvedAt() { return Date.parse(attributes[this.constructor.kResolvedAt] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarConflict._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarConflict({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `resolved`
  /// - `unresolved`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/conflicts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/conflicts`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/conflicts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/conflicts`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/conflicts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResolvedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let url = `${apiEndpoint}/resolved_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResource({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resource`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWinner({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/winner`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
