/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.284077
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving RecurringDonationDesignation Object
/// 
/// - Application:        giving
/// - Id:                 recurring_donation_designation
/// - Type:               RecurringDonationDesignation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "RecurringDonationDesignation",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - fund: include associated fund 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `fund-recurringdonationdesignation-fund`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
/// 
/// All Inbound Edges:
/// - `recurringdonationdesignation-recurringdonation-designations`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
/// 
/// All Actions:
/// NONE
///
export class PcoGivingRecurringDonationDesignation extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'RecurringDonationDesignation';
  static kTypeId = 'recurring_donation_designation';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'recurringdonationdesignation-recurringdonation-designations';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations';

  /// possible includes with parameter ?include=a,b
  /// - `fund`: include associated fund 
  static get canInclude() { return ['fund'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingRecurringDonationDesignation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingRecurringDonationDesignation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingRecurringDonationDesignation.kApiVersion; }

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
  // PcoGivingRecurringDonationDesignation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingRecurringDonationDesignation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonationDesignation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/${recurringDonationId}/designations`
  static getDesignationsFromRecurringDonation(recurringDonationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonationDesignation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/recurring_donations/${recurringDonationId}/designations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFund({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    let url = `${apiEndpoint}/fund`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
