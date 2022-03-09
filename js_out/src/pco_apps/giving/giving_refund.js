/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.284884
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Refund Object
/// 
/// - Application:        giving
/// - Id:                 refund
/// - Type:               Refund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/refund
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Refund",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "amount_currency": "string",
///     "fee_cents": 1,
///     "refunded_at": "2000-01-01T12:00:00Z",
///     "fee_currency": "USD"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - designation_refunds: include associated designation_refunds 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `designationrefund-refund-designation_refunds`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
/// 
/// All Inbound Edges:
/// - `refund-donation-refund`: https://api.planningcenteronline.com/giving/v2/donations/1/refund
/// 
/// All Actions:
/// NONE
///
export class PcoGivingRefund extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Refund';
  static kTypeId = 'refund';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'refund-donation-refund';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund';

  /// possible includes with parameter ?include=a,b
  /// - `designation_refunds`: include associated designation_refunds 
  static get canInclude() { return ['designation_refunds'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingRefund.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingRefund.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingRefund.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAmountCents() { return 'amount_cents' }
  static get kAmountCurrency() { return 'amount_currency' }
  static get kFeeCents() { return 'fee_cents' }
  static get kRefundedAt() { return 'refunded_at' }
  static get kFeeCurrency() { return 'fee_currency' }


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

  get amountCents() { return attributes[this.constructor.kAmountCents] ?? 0; }
  get amountCurrency() { return attributes[this.constructor.kAmountCurrency] ?? ''; }
  get feeCents() { return attributes[this.constructor.kFeeCents] ?? 0; }
  get refundedAt() { return Date.parse(attributes[this.constructor.kRefundedAt] ?? 0); }
  get feeCurrency() { return attributes[this.constructor.kFeeCurrency] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingRefund._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingRefund({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/${donationId}/refund`
  static getFromDonation(donationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRefund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/donations/${donationId}/refund`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDesignationRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDesignationRefunds({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
    let url = `${apiEndpoint}/designation_refunds`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
