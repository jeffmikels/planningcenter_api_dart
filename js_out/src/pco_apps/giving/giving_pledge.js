/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.277770
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Pledge Object
/// 
/// - Application:        giving
/// - Id:                 pledge
/// - Type:               Pledge
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledges
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Pledge",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "amount_currency": "USD",
///     "joint_giver_amount_cents": 1,
///     "donated_total_cents": 1,
///     "joint_giver_donated_total_cents": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "pledge_campaign": {
///       "data": {
///         "type": "PledgeCampaign",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - joint_giver: include associated joint_giver 
/// - pledge_campaign: include associated pledge_campaign 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
/// 
/// All Inbound Edges:
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
/// 
/// All Actions:
/// NONE
///
export class PcoGivingPledge extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Pledge';
  static kTypeId = 'pledge';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';

  /// possible includes with parameter ?include=a,b
  /// - `joint_giver`: include associated joint_giver 
  /// - `pledge_campaign`: include associated pledge_campaign 
  static get canInclude() { return ['joint_giver','pledge_campaign'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingPledge.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingPledge.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingPledge.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAmountCents() { return 'amount_cents' }
  static get kAmountCurrency() { return 'amount_currency' }
  static get kJointGiverAmountCents() { return 'joint_giver_amount_cents' }
  static get kDonatedTotalCents() { return 'donated_total_cents' }
  static get kJointGiverDonatedTotalCents() { return 'joint_giver_donated_total_cents' }
  static get kPersonId() { return 'person_id' }
  static get kPledgeCampaignId() { return 'pledge_campaign_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['amount_cents','person_id','pledge_campaign_id']; }

  // @override
  get updateAllowed() { return ['amount_cents']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get amountCents() { return attributes[this.constructor.kAmountCents] ?? 0; }
  get amountCurrency() { return attributes[this.constructor.kAmountCurrency] ?? ''; }
  get jointGiverAmountCents() { return attributes[this.constructor.kJointGiverAmountCents] ?? 0; }
  get donatedTotalCents() { return attributes[this.constructor.kDonatedTotalCents] ?? 0; }
  get jointGiverDonatedTotalCents() { return attributes[this.constructor.kJointGiverDonatedTotalCents] ?? 0; }
  

  // setters for object attributes

  
  /// The amount pledged
  set amountCents(n) { attributes[this.constructor.kAmountCents] = n; }
  

  // additional setters and getters for assignable values

  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  get pledgeCampaignId() { return attributes[this.constructor.kPledgeCampaignId] ?? ''; }
  set pledgeCampaignId(s) {attributes[this.constructor.kPledgeCampaignId] = s;}
  



  // Class Constructors
  // PcoGivingPledge._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingPledge({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGivingPledge] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/pledges`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoGivingPledge.kPcoApplication, PcoGivingPledge.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/giving/v2/pledges`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/people/${peopleId}/pledges`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/pledges`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/${pledgeCampaignId}/pledges`
  static getFromPledgeCampaign(pledgeCampaignId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/pledge_campaigns/${pledgeCampaignId}/pledges`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getJointGiver({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    let url = `${apiEndpoint}/joint_giver`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPledgeCampaign({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledgeCampaign.canInclude;
    let url = `${apiEndpoint}/pledge_campaign`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
