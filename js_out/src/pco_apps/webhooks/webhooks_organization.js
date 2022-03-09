/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.363045
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Webhooks Organization Object
/// 
/// - Application:        webhooks
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {},
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
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
/// - `subscription-organization-subscriptions`: https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// All Inbound Edges:
/// NONE
/// 
/// All Actions:
/// NONE
///
export class PcoWebhooksOrganization extends PcoResource {
  static kPcoApplication = 'webhooks';
  static kTypeString = 'Organization';
  static kTypeId = 'organization';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';

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
  get shortestEdgePath() { return PcoWebhooksOrganization.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoWebhooksOrganization.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoWebhooksOrganization.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }


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

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoWebhooksOrganization._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoWebhooksOrganization({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/available_events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAvailableEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    let url = `${apiEndpoint}/available_events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSubscriptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    let url = `${apiEndpoint}/subscriptions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
