/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.357354
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Webhooks AvailableEvent Object
/// 
/// - Application:        webhooks
/// - Id:                 available_event
/// - Type:               AvailableEvent
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/available_events
/// 
/// Description:
/// An event supported by webhooks
/// 
/// Example:
/// ```json
/// {
///   "type": "AvailableEvent",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "app": "string",
///     "version": "string",
///     "type": "string",
///     "resource": "string",
///     "action": "string"
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
/// NONE
/// 
/// All Inbound Edges:
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
/// 
/// All Actions:
/// NONE
///
export class PcoWebhooksAvailableEvent extends PcoResource {
  static kPcoApplication = 'webhooks';
  static kTypeString = 'AvailableEvent';
  static kTypeId = 'available_event';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'availableevent-organization-available_events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';

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
  get shortestEdgePath() { return PcoWebhooksAvailableEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoWebhooksAvailableEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoWebhooksAvailableEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kApp() { return 'app' }
  static get kVersion() { return 'version' }
  static get kType() { return 'type' }
  static get kResource() { return 'resource' }
  static get kAction() { return 'action' }


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
  get app() { return attributes[this.constructor.kApp] ?? ''; }
  get version() { return attributes[this.constructor.kVersion] ?? ''; }
  get type() { return attributes[this.constructor.kType] ?? ''; }
  get resource() { return attributes[this.constructor.kResource] ?? ''; }
  get action() { return attributes[this.constructor.kAction] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoWebhooksAvailableEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoWebhooksAvailableEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/available_events`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/webhooks/v2/available_events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
