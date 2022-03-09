/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.282426
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving RecurringDonation Object
/// 
/// - Application:        giving
/// - Id:                 recurring_donation
/// - Type:               RecurringDonation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/recurring_donations
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "RecurringDonation",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "release_hold_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "status": "string",
///     "last_donation_received_at": "2000-01-01T12:00:00Z",
///     "next_occurrence": "2000-01-01T12:00:00Z",
///     "schedule": {
///       "day_in_month": {
///         "day": 1
///       }
///     },
///     "amount_currency": "USD"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - designations: include associated designations 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `paymentmethod-recurringdonation-payment_method`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method
/// - `recurringdonationdesignation-recurringdonation-designations`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
/// 
/// All Inbound Edges:
/// - `recurringdonation-organization-recurring_donations`: https://api.planningcenteronline.com/giving/v2/recurring_donations
/// - `recurringdonation-paymentmethod-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations
/// - `recurringdonation-person-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
/// 
/// All Actions:
/// NONE
///
export class PcoGivingRecurringDonation extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'RecurringDonation';
  static kTypeId = 'recurring_donation';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'recurringdonation-organization-recurring_donations';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations';

  /// possible includes with parameter ?include=a,b
  /// - `designations`: include associated designations 
  static get canInclude() { return ['designations'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingRecurringDonation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingRecurringDonation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingRecurringDonation.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kReleaseHoldAt() { return 'release_hold_at' }
  static get kAmountCents() { return 'amount_cents' }
  static get kStatus() { return 'status' }
  static get kLastDonationReceivedAt() { return 'last_donation_received_at' }
  static get kNextOccurrence() { return 'next_occurrence' }
  static get kSchedule() { return 'schedule' }
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

  get releaseHoldAt() { return Date.parse(attributes[this.constructor.kReleaseHoldAt] ?? 0); }
  get amountCents() { return attributes[this.constructor.kAmountCents] ?? 0; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get lastDonationReceivedAt() { return Date.parse(attributes[this.constructor.kLastDonationReceivedAt] ?? 0); }
  get nextOccurrence() { return Date.parse(attributes[this.constructor.kNextOccurrence] ?? 0); }
  get schedule() { return attributes[this.constructor.kSchedule] ?? ''; }
  get amountCurrency() { return attributes[this.constructor.kAmountCurrency] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingRecurringDonation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingRecurringDonation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/recurring_donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/${peopleId}/payment_methods/${paymentMethodId}/recurring_donations`
  static getFromPeopleAndPaymentMethod(peopleId, paymentMethodId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/payment_methods/${paymentMethodId}/recurring_donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/${peopleId}/recurring_donations`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/recurring_donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPaymentMethod({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    let url = `${apiEndpoint}/payment_method`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonationDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDesignations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonationDesignation.canInclude;
    let url = `${apiEndpoint}/designations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
