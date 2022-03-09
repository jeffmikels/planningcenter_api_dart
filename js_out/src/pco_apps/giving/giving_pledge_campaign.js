/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.280948
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving PledgeCampaign Object
/// 
/// - Application:        giving
/// - Id:                 pledge_campaign
/// - Type:               PledgeCampaign
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledge_campaigns
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "PledgeCampaign",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "description": "string",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "goal_cents": 1,
///     "goal_currency": "USD",
///     "show_goal_in_church_center": true,
///     "received_total_from_pledges_cents": 1,
///     "received_total_outside_of_pledges_cents": 1
///   },
///   "relationships": {
///     "fund": {
///       "data": {
///         "type": "Fund",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - fund: include associated fund 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
/// 
/// All Inbound Edges:
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
/// 
/// All Actions:
/// NONE
///
export class PcoGivingPledgeCampaign extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'PledgeCampaign';
  static kTypeId = 'pledge_campaign';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';

  /// possible includes with parameter ?include=a,b
  /// - `fund`: include associated fund 
  static get canInclude() { return ['fund'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['ends_at','starts_at'] }

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['ends_at','starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingPledgeCampaign.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingPledgeCampaign.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingPledgeCampaign.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kName() { return 'name' }
  static get kDescription() { return 'description' }
  static get kStartsAt() { return 'starts_at' }
  static get kEndsAt() { return 'ends_at' }
  static get kGoalCents() { return 'goal_cents' }
  static get kGoalCurrency() { return 'goal_currency' }
  static get kShowGoalInChurchCenter() { return 'show_goal_in_church_center' }
  static get kReceivedTotalFromPledgesCents() { return 'received_total_from_pledges_cents' }
  static get kReceivedTotalOutsideOfPledgesCents() { return 'received_total_outside_of_pledges_cents' }
  static get kFundId() { return 'fund_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id']; }

  // @override
  get updateAllowed() { return ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get goalCents() { return attributes[this.constructor.kGoalCents] ?? 0; }
  get goalCurrency() { return attributes[this.constructor.kGoalCurrency] ?? ''; }
  get isShowGoalInChurchCenter() { return attributes[this.constructor.kShowGoalInChurchCenter] == true; }
  get receivedTotalFromPledgesCents() { return attributes[this.constructor.kReceivedTotalFromPledgesCents] ?? 0; }
  get receivedTotalOutsideOfPledgesCents() { return attributes[this.constructor.kReceivedTotalOutsideOfPledgesCents] ?? 0; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set description(s) {attributes[this.constructor.kDescription] = s;}
  set startsAt(d) { attributes[this.constructor.kStartsAt] = d.toISOString(); }
  set endsAt(d) { attributes[this.constructor.kEndsAt] = d.toISOString(); }
  
  /// Optional. During the donation period of this campaign, the running total of donations will be tracked against this number
  set goalCents(n) { attributes[this.constructor.kGoalCents] = n; }
  
  /// In addition to seeing their personal pledge progress within their donor profile, this option allows donors to see the the collective progress towards the campaign’s overall goal (if set).
  set isShowGoalInChurchCenter(b) { attributes[this.constructor.kShowGoalInChurchCenter] = b; }
  

  // additional setters and getters for assignable values

  get fundId() { return attributes[this.constructor.kFundId] ?? ''; }
  set fundId(s) {attributes[this.constructor.kFundId] = s;}
  



  // Class Constructors
  // PcoGivingPledgeCampaign._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingPledgeCampaign({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGivingPledgeCampaign] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/pledge_campaigns`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoGivingPledgeCampaign.kPcoApplication, PcoGivingPledgeCampaign.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/giving/v2/pledge_campaigns`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/${pledgeId}/pledge_campaign`
  static getFromPledge(pledgeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledgeCampaign.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/pledges/${pledgeId}/pledge_campaign`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFund({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let url = `${apiEndpoint}/fund`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPledges({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    let url = `${apiEndpoint}/pledges`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
