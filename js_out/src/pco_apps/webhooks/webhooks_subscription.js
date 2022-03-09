/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.365204
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Webhooks Subscription Object
/// 
/// - Application:        webhooks
/// - Id:                 subscription
/// - Type:               Subscription
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Subscription",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "url": "string",
///     "active": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "authenticity_secret": "string",
///     "application_id": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `application_id`: (URLParameter), query on a specific application_id, example: ?where[application_id]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// 
/// All Inbound Edges:
/// - `subscription-organization-subscriptions`: https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// All Actions:
/// - `rotate_secret`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/rotate_secret
///
export class PcoWebhooksSubscription extends PcoResource {
  static kPcoApplication = 'webhooks';
  static kTypeString = 'Subscription';
  static kTypeId = 'subscription';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'subscription-organization-subscriptions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `application_id`: (URLParameter), query on a specific application_id, example: ?where[application_id]=string
  static get canQuery() { return ['application_id'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoWebhooksSubscription.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoWebhooksSubscription.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoWebhooksSubscription.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kUrl() { return 'url' }
  static get kActive() { return 'active' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAuthenticitySecret() { return 'authenticity_secret' }
  static get kApplicationId() { return 'application_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','url','active']; }

  // @override
  get updateAllowed() { return ['active']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  get isActive() { return attributes[this.constructor.kActive] == true; }
  get authenticitySecret() { return attributes[this.constructor.kAuthenticitySecret] ?? ''; }
  get applicationId() { return attributes[this.constructor.kApplicationId] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set url(s) {attributes[this.constructor.kUrl] = s;}
  set isActive(b) { attributes[this.constructor.kActive] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoWebhooksSubscription._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoWebhooksSubscription({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoWebhooksSubscription] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/webhooks/v2/subscriptions`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoWebhooksSubscription.kPcoApplication, PcoWebhooksSubscription.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/webhooks/v2/subscriptions`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/webhooks/v2/subscriptions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `rotate_secret`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/rotate_secret`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  rotateSecret(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/rotate_secret`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
