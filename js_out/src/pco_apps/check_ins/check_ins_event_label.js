/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.557772
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns EventLabel Object
/// 
/// - Application:        check-ins
/// - Id:                 event_label
/// - Type:               EventLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// 
/// Description:
/// Says how many of a given label to print for this event and
/// whether to print it for regulars, guests, and/or volunteers.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventLabel",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "for_regular": true,
///     "for_guest": true,
///     "for_volunteer": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - label: include associated label 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
/// 
/// All Inbound Edges:
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsEventLabel extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'EventLabel';
  static kTypeId = 'event_label';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'eventlabel-label-event_labels';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `label`: include associated label 
  static get canInclude() { return ['event','label'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsEventLabel.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsEventLabel.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsEventLabel.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kQuantity() { return 'quantity' }
  static get kForRegular() { return 'for_regular' }
  static get kForGuest() { return 'for_guest' }
  static get kForVolunteer() { return 'for_volunteer' }
  static get kCreatedAt() { return 'created_at' }
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

  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  get isForRegular() { return attributes[this.constructor.kForRegular] == true; }
  get isForGuest() { return attributes[this.constructor.kForGuest] == true; }
  get isForVolunteer() { return attributes[this.constructor.kForVolunteer] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsEventLabel._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsEventLabel({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/event_labels`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/event_labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/${labelId}/event_labels`
  static getFromLabel(labelId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/labels/${labelId}/event_labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLabel({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let url = `${apiEndpoint}/label`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
