/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.361345
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Webhooks Delivery Object
/// 
/// - Application:        webhooks
/// - Id:                 delivery
/// - Type:               Delivery
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Delivery",
///   "id": "1",
///   "attributes": {
///     "status": 1,
///     "request_headers": "string",
///     "request_body": "string",
///     "response_headers": "string",
///     "response_body": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "timing": 1.42
///   },
///   "relationships": {
///     "event": {
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// 
/// All Actions:
/// NONE
///
export class PcoWebhooksDelivery extends PcoResource {
  static kPcoApplication = 'webhooks';
  static kTypeString = 'Delivery';
  static kTypeId = 'delivery';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'delivery-event-deliveries';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static get canOrderBy() { return ['created_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoWebhooksDelivery.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoWebhooksDelivery.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoWebhooksDelivery.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStatus() { return 'status' }
  static get kRequestHeaders() { return 'request_headers' }
  static get kRequestBody() { return 'request_body' }
  static get kResponseHeaders() { return 'response_headers' }
  static get kResponseBody() { return 'response_body' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kTiming() { return 'timing' }


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

  get status() { return attributes[this.constructor.kStatus] ?? 0; }
  get requestHeaders() { return attributes[this.constructor.kRequestHeaders] ?? ''; }
  get requestBody() { return attributes[this.constructor.kRequestBody] ?? ''; }
  get responseHeaders() { return attributes[this.constructor.kResponseHeaders] ?? ''; }
  get responseBody() { return attributes[this.constructor.kResponseBody] ?? ''; }
  get timing() { return attributes[this.constructor.kTiming] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoWebhooksDelivery._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoWebhooksDelivery({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/${subscriptionId}/events/${eventId}/deliveries`
  static getFromSubscriptionAndEvent(subscriptionId, eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/webhooks/v2/subscriptions/${subscriptionId}/events/${eventId}/deliveries`;
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
