/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.362165
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Webhooks Event Object
/// 
/// - Application:        webhooks
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "uuid": "string",
///     "payload": "string"
///   },
///   "relationships": {
///     "subscription": {
///       "data": {
///         "type": "Subscription",
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
/// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// 
/// All Inbound Edges:
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// 
/// All Actions:
/// - `redeliver`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver
///
export class PcoWebhooksEvent extends PcoResource {
  static kPcoApplication = 'webhooks';
  static kTypeString = 'Event';
  static kTypeId = 'event';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'event-subscription-events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static get canQuery() { return ['uuid'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static get canOrderBy() { return ['created_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoWebhooksEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoWebhooksEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoWebhooksEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kUuid() { return 'uuid' }
  static get kPayload() { return 'payload' }


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

  get uuid() { return attributes[this.constructor.kUuid] ?? ''; }
  get payload() { return attributes[this.constructor.kPayload] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoWebhooksEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoWebhooksEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/${subscriptionId}/events`
  static getFromSubscription(subscriptionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/webhooks/v2/subscriptions/${subscriptionId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDeliveries({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    let url = `${apiEndpoint}/deliveries`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `redeliver`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  redeliver(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/redeliver`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
