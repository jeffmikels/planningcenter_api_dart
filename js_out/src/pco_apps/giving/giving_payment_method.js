/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.271510
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving PaymentMethod Object
/// 
/// - Application:        giving
/// - Id:                 payment_method
/// - Type:               PaymentMethod
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "PaymentMethod",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "method_type": "value",
///     "method_subtype": "string",
///     "last4": "string",
///     "brand": "string",
///     "expiration": "2000-01-01",
///     "verified": true
///   },
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
/// - `recurringdonation-paymentmethod-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations
/// 
/// All Inbound Edges:
/// - `paymentmethod-person-payment_methods`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// - `paymentmethod-recurringdonation-payment_method`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method
/// 
/// All Actions:
/// NONE
///
export class PcoGivingPaymentMethod extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'PaymentMethod';
  static kTypeId = 'payment_method';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'paymentmethod-person-payment_methods';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/people/1/payment_methods';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/people/1/payment_methods';

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
  get shortestEdgePath() { return PcoGivingPaymentMethod.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingPaymentMethod.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingPaymentMethod.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kMethodType() { return 'method_type' }
  static get kMethodSubtype() { return 'method_subtype' }
  static get kLast4() { return 'last4' }
  static get kBrand() { return 'brand' }
  static get kExpiration() { return 'expiration' }
  static get kVerified() { return 'verified' }


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

  get methodType() { return attributes[this.constructor.kMethodType] ?? ''; }
  get methodSubtype() { return attributes[this.constructor.kMethodSubtype] ?? ''; }
  get last4() { return attributes[this.constructor.kLast4] ?? ''; }
  get brand() { return attributes[this.constructor.kBrand] ?? ''; }
  get expiration() { return attributes[this.constructor.kExpiration] ?? ''; }
  get isVerified() { return attributes[this.constructor.kVerified] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGivingPaymentMethod._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingPaymentMethod({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/people/${peopleId}/payment_methods`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/payment_methods`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/${recurringDonationId}/payment_method`
  static getFromRecurringDonation(recurringDonationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/recurring_donations/${recurringDonationId}/payment_method`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRecurringDonations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    let url = `${apiEndpoint}/recurring_donations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
