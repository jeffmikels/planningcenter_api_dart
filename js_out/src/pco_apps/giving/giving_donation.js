/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.266772
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Giving Donation Object
/// 
/// - Application:        giving
/// - Id:                 donation
/// - Type:               Donation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Donation",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "payment_method_sub": "value",
///     "payment_last4": "string",
///     "payment_brand": "string",
///     "payment_check_number": 1,
///     "payment_check_dated_at": "2000-01-01",
///     "fee_cents": 1,
///     "payment_method": "value",
///     "received_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "payment_status": "value",
///     "completed_at": "2000-01-01T12:00:00Z",
///     "amount_currency": "USD",
///     "fee_currency": "USD",
///     "refunded": true,
///     "refundable": true
///   },
///   "relationships": {
///     "batch": {
///       "data": {
///         "type": "Batch",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "payment_source": {
///       "data": {
///         "type": "PaymentSource",
///         "id": "1"
///       }
///     },
///     "labels": {
///       "data": [
///         {
///           "type": "Labels",
///           "id": "1"
///         }
///       ]
///     },
///     "recurring_donation": {
///       "data": {
///         "type": "RecurringDonation",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - designations: include associated designations 
/// - labels: include associated labels 
/// - refund: include associated refund 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `completed_at`: (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `payment_method`: (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
/// - `received_at`: (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `received_at`: (URLParameter), prefix with a hyphen (-received_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `campus-donation-campus`: https://api.planningcenteronline.com/giving/v2/donations/1/campus
/// - `designation-donation-designations`: https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
/// - `refund-donation-refund`: https://api.planningcenteronline.com/giving/v2/donations/1/refund
/// 
/// All Inbound Edges:
/// - `donation-batch-donations`: https://api.planningcenteronline.com/giving/v2/batches/1/donations
/// - `donation-campus-donations`: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
/// - `donation-organization-donations`: https://api.planningcenteronline.com/giving/v2/donations
/// - `donation-paymentsource-donations`: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations
/// - `donation-person-donations`: https://api.planningcenteronline.com/giving/v2/people/1/donations
/// 
/// All Actions:
/// - `issue_refund`: https://api.planningcenteronline.com/giving/v2/donations/1/issue_refund
///
export class PcoGivingDonation extends PcoResource {
  static kPcoApplication = 'giving';
  static kTypeString = 'Donation';
  static kTypeId = 'donation';
  static kApiVersion = '2019-10-18';
  static kShortestEdgeId = 'donation-organization-donations';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations';

  /// possible includes with parameter ?include=a,b
  /// - `designations`: include associated designations 
  /// - `labels`: include associated labels 
  /// - `refund`: include associated refund 
  static get canInclude() { return ['designations','labels','refund'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `completed_at`: (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `payment_method`: (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
  /// - `received_at`: (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['completed_at','created_at','payment_method','received_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `received_at`: (URLParameter), prefix with a hyphen (-received_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['completed_at','created_at','received_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGivingDonation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGivingDonation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGivingDonation.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kPaymentMethodSub() { return 'payment_method_sub' }
  static get kPaymentLast4() { return 'payment_last4' }
  static get kPaymentBrand() { return 'payment_brand' }
  static get kPaymentCheckNumber() { return 'payment_check_number' }
  static get kPaymentCheckDatedAt() { return 'payment_check_dated_at' }
  static get kFeeCents() { return 'fee_cents' }
  static get kPaymentMethod() { return 'payment_method' }
  static get kReceivedAt() { return 'received_at' }
  static get kAmountCents() { return 'amount_cents' }
  static get kPaymentStatus() { return 'payment_status' }
  static get kCompletedAt() { return 'completed_at' }
  static get kAmountCurrency() { return 'amount_currency' }
  static get kFeeCurrency() { return 'fee_currency' }
  static get kRefunded() { return 'refunded' }
  static get kRefundable() { return 'refundable' }
  static get kPersonId() { return 'person_id' }
  static get kPaymentSourceId() { return 'payment_source_id' }
  static get kCampusId() { return 'campus_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id']; }

  // @override
  get updateAllowed() { return ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get paymentMethodSub() { return attributes[this.constructor.kPaymentMethodSub] ?? ''; }
  get paymentLast4() { return attributes[this.constructor.kPaymentLast4] ?? ''; }
  get paymentBrand() { return attributes[this.constructor.kPaymentBrand] ?? ''; }
  get paymentCheckNumber() { return attributes[this.constructor.kPaymentCheckNumber] ?? 0; }
  get paymentCheckDatedAt() { return attributes[this.constructor.kPaymentCheckDatedAt] ?? ''; }
  get feeCents() { return attributes[this.constructor.kFeeCents] ?? 0; }
  get paymentMethod() { return attributes[this.constructor.kPaymentMethod] ?? ''; }
  get receivedAt() { return Date.parse(attributes[this.constructor.kReceivedAt] ?? 0); }
  get amountCents() { return attributes[this.constructor.kAmountCents] ?? 0; }
  get paymentStatus() { return attributes[this.constructor.kPaymentStatus] ?? ''; }
  get completedAt() { return Date.parse(attributes[this.constructor.kCompletedAt] ?? 0); }
  get amountCurrency() { return attributes[this.constructor.kAmountCurrency] ?? ''; }
  get feeCurrency() { return attributes[this.constructor.kFeeCurrency] ?? ''; }
  get isRefunded() { return attributes[this.constructor.kRefunded] == true; }
  get isRefundable() { return attributes[this.constructor.kRefundable] == true; }
  

  // setters for object attributes

  
  /// For cards only. Will be `null` for other payment method types.
  /// 
  /// Possible values: `credit`, `debit`, `prepaid`, or `unknown`
  set paymentMethodSub(s) {attributes[this.constructor.kPaymentMethodSub] = s;}
  set paymentLast4(s) {attributes[this.constructor.kPaymentLast4] = s;}
  
  /// For cards, this is the card brand (eg Visa, Mastercard, etc). For checks, this is the bank name
  set paymentBrand(s) {attributes[this.constructor.kPaymentBrand] = s;}
  set paymentCheckNumber(n) { attributes[this.constructor.kPaymentCheckNumber] = n; }
  set paymentCheckDatedAt(s) {attributes[this.constructor.kPaymentCheckDatedAt] = s;}
  set feeCents(n) { attributes[this.constructor.kFeeCents] = n; }
  
  /// Possible values: `ach`, `cash`, `check`, or `card`
  set paymentMethod(s) {attributes[this.constructor.kPaymentMethod] = s;}
  set receivedAt(d) { attributes[this.constructor.kReceivedAt] = d.toISOString(); }
  

  // additional setters and getters for assignable values

  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  get paymentSourceId() { return attributes[this.constructor.kPaymentSourceId] ?? ''; }
  set paymentSourceId(s) {attributes[this.constructor.kPaymentSourceId] = s;}
  get campusId() { return attributes[this.constructor.kCampusId] ?? ''; }
  set campusId(s) {attributes[this.constructor.kCampusId] = s;}
  



  // Class Constructors
  // PcoGivingDonation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGivingDonation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGivingDonation] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/donations`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoGivingDonation.kPcoApplication, PcoGivingDonation.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/giving/v2/donations`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations`
  /// 
  /// Available Query Filters:
  /// - `succeeded`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/batches/${batcheId}/donations`
  static getFromBatche(batcheId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/batches/${batcheId}/donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses/${campusId}/donations`
  static getFromCampus(campusId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/campuses/${campusId}/donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources/${paymentSourceId}/donations`
  static getFromPaymentSource(paymentSourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/payment_sources/${paymentSourceId}/donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/${peopleId}/donations`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/giving/v2/people/${peopleId}/donations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/campus`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCampus({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    let url = `${apiEndpoint}/campus`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDesignations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    let url = `${apiEndpoint}/designations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    let url = `${apiEndpoint}/labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRefund({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGivingRefund.canInclude;
    let url = `${apiEndpoint}/refund`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `issue_refund`
  /// 
  /// Used to refund a batch donation
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/issue_refund`
  /// 
  /// Details:
  /// This action refunds a batch donation.
  /// It will respond with `unprocessable_entity` if the donation cannot be refunded, or if the donation is not part of a batch.
  /// 
  /// `refunded_at` is optional, but recommended for data accuracy.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "attributes": {
  ///       "refunded_at": "1959-02-03"
  ///     }
  ///   }
  /// }
  /// ```
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  issueRefund(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/issue_refund`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
