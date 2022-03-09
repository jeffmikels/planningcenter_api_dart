/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.268342
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Fund Object
/// 
/// - Application:        giving
/// - Id:                 fund
/// - Type:               Fund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/funds
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Fund",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "ledger_code": "string",
///     "description": "string",
///     "visibility": "value",
///     "default": true,
///     "color": "string",
///     "deletable": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `fund-designation-fund`: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
/// - `fund-organization-funds`: https://api.planningcenteronline.com/giving/v2/funds
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `fund-recurringdonationdesignation-fund`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
/// 
/// All Actions:
/// NONE
///
export class PcoGivingFund extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Fund';
  static kTypeId = 'fund';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'fund-organization-funds';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
  static get canQuery() { return ['default','id','name','visibility'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingFund.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingFund.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingFund.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kName() { return 'name' }
  static get kLedgerCode() { return 'ledger_code' }
  static get kDescription() { return 'description' }
  static get kVisibility() { return 'visibility' }
  static get kColorIdentifier() { return 'color_identifier' }
  static get kDefault() { return 'default' }
  static get kColor() { return 'color' }
  static get kDeletable() { return 'deletable' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','ledger_code','description','visibility','color_identifier']; }

  // @override
  get updateAllowed() { return ['name','ledger_code','description','visibility','color_identifier']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get ledgerCode() { return attributes[this.constructor.kLedgerCode] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get visibility() { return attributes[this.constructor.kVisibility] ?? ''; }
  get colorIdentifier() { return attributes[this.constructor.kColorIdentifier] ?? 0; }
  get isDefault() { return attributes[this.constructor.kDefault] == true; }
  get color() { return attributes[this.constructor.kColor] ?? ''; }
  get isDeletable() { return attributes[this.constructor.kDeletable] == true; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set ledgerCode(s) {attributes[this.constructor.kLedgerCode] = s;}
  set description(s) {attributes[this.constructor.kDescription] = s;}
  
  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`
  set visibility(s) {attributes[this.constructor.kVisibility] = s;}
  set colorIdentifier(n) { attributes[this.constructor.kColorIdentifier] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingFund._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingFund({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGivingFund] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/funds`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoGivingFund.kPcoApplication, PcoGivingFund.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/giving/v2/funds`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/funds`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/funds`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/${donationId}/designations/${designationId}/fund`
  static getFromDonationAndDesignation(donationId, designationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/donations/${donationId}/designations/${designationId}/fund`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/${pledgeCampaignId}/fund`
  static getFromPledgeCampaign(pledgeCampaignId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/pledge_campaigns/${pledgeCampaignId}/fund`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/${recurringDonationId}/designations/${designationId}/fund`
  static getFromRecurringDonationAndDesignation(recurringDonationId, designationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/recurring_donations/${recurringDonationId}/designations/${designationId}/fund`;
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
