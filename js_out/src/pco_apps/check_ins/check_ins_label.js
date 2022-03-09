/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.563626
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Label Object
/// 
/// - Application:        check-ins
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/labels
/// 
/// Description:
/// Labels can be set to print for events (through `EventLabel`s),
/// locations (through `LocationLabel`s) or options.
/// Label type (security label / name label) is expressed with the
/// `prints_for` attribute. `prints_for="Person"` is a name label,
/// `prints_for="Group"` is a security label.
/// 
/// Example:
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "xml": "string",
///     "prints_for": "string",
///     "roll": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
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
/// NONE
///
/// All Outbound Edges:
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
/// - `locationlabel-label-location_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
/// 
/// All Inbound Edges:
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
/// - `label-locationlabel-label`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
/// - `label-organization-labels`: https://api.planningcenteronline.com/check-ins/v2/labels
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsLabel extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Label';
  static kTypeId = 'label';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'label-organization-labels';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/labels';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsLabel.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsLabel.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsLabel.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kXml() { return 'xml' }
  static get kPrintsFor() { return 'prints_for' }
  static get kRoll() { return 'roll' }
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

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get xml() { return attributes[this.constructor.kXml] ?? ''; }
  get printsFor() { return attributes[this.constructor.kPrintsFor] ?? ''; }
  get roll() { return attributes[this.constructor.kRoll] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsLabel._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsLabel({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/labels`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/event_labels/${eventLabelId}/label`
  static getFromEventAndEventLabel(eventId, eventLabelId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/event_labels/${eventLabelId}/label`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/${labelId}/location_labels/${locationLabelId}/label`
  static getFromLabelAndLocationLabel(labelId, locationLabelId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/labels/${labelId}/location_labels/${locationLabelId}/label`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/options/${optionId}/label`
  static getFromOption(optionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/options/${optionId}/label`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    let url = `${apiEndpoint}/event_labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocationLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    let url = `${apiEndpoint}/location_labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
