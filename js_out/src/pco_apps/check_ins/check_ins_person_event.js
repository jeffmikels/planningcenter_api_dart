/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.599721
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns PersonEvent Object
/// 
/// - Application:        check-ins
/// - Id:                 person_event
/// - Type:               PersonEvent
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// 
/// Description:
/// Counts a person's attendence for a given event.
/// 
/// Example:
/// ```json
/// {
///   "type": "PersonEvent",
///   "id": "1",
///   "attributes": {
///     "check_in_count": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - first_check_in: include associated first_check_in 
/// - last_check_in: include associated last_check_in 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-personevent-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
/// - `checkin-personevent-first_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
/// - `checkin-personevent-last_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
/// - `person-personevent-person`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
/// 
/// All Inbound Edges:
/// - `personevent-event-person_events`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// - `personevent-person-person_events`: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsPersonEvent extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'PersonEvent';
  static kTypeId = 'person_event';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'personevent-person-person_events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people/1/person_events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/person_events';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `first_check_in`: include associated first_check_in 
  /// - `last_check_in`: include associated last_check_in 
  /// - `person`: include associated person 
  static get canInclude() { return ['event','first_check_in','last_check_in','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsPersonEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsPersonEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsPersonEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCheckInCount() { return 'check_in_count' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCreatedAt() { return 'created_at' }


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

  get checkInCount() { return attributes[this.constructor.kCheckInCount] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsPersonEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsPersonEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/person_events`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/person_events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/${peopleId}/person_events`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/people/${peopleId}/person_events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFirstCheckIn({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/first_check_in`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLastCheckIn({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/last_check_in`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
