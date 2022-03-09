/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.262433
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving DesignationRefund Object
/// 
/// - Application:        giving
/// - Id:                 designation_refund
/// - Type:               DesignationRefund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "DesignationRefund",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
///   },
///   "relationships": {
///     "designation": {
///       "data": {
///         "type": "Designation",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - designation: include associated designation 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `designation-designationrefund-designation`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
/// 
/// All Inbound Edges:
/// - `designationrefund-refund-designation_refunds`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
/// 
/// All Actions:
/// NONE
///
export class PcoGivingDesignationRefund extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'DesignationRefund';
  static kTypeId = 'designation_refund';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';

  /// possible includes with parameter ?include=a,b
  /// - `designation`: include associated designation 
  static get canInclude() { return ['designation'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingDesignationRefund.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingDesignationRefund.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingDesignationRefund.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAmountCents() { return 'amount_cents' }
  static get kAmountCurrency() { return 'amount_currency' }


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
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingDesignationRefund._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingDesignationRefund({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDesignationRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/${donationId}/refund/${refundId}/designation_refunds`
  static getFromDonationAndRefund(donationId, refundId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/donations/${donationId}/refund/${refundId}/designation_refunds`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDesignation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDesignation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    let url = `${apiEndpoint}/designation`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
