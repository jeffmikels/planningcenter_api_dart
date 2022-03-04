/// This file was generated on 2022-03-04T15:29:14.764845


import '../../pco.dart';

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
class PcoGivingDonation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Donation';
  static const String kTypeId = 'donation';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'donation-organization-donations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations';

  /// possible includes with parameter ?include=a,b
  /// - `designations`: include associated designations 
  /// - `labels`: include associated labels 
  /// - `refund`: include associated refund 
  static List<String> get canInclude => ['designations','labels','refund'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `completed_at`: (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `payment_method`: (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
  /// - `received_at`: (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['completed_at','created_at','payment_method','received_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `received_at`: (URLParameter), prefix with a hyphen (-received_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['completed_at','created_at','received_at','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kPaymentMethodSub = 'payment_method_sub';
  static const kPaymentLast4 = 'payment_last4';
  static const kPaymentBrand = 'payment_brand';
  static const kPaymentCheckNumber = 'payment_check_number';
  static const kPaymentCheckDatedAt = 'payment_check_dated_at';
  static const kFeeCents = 'fee_cents';
  static const kPaymentMethod = 'payment_method';
  static const kReceivedAt = 'received_at';
  static const kAmountCents = 'amount_cents';
  static const kPaymentStatus = 'payment_status';
  static const kCompletedAt = 'completed_at';
  static const kAmountCurrency = 'amount_currency';
  static const kFeeCurrency = 'fee_currency';
  static const kRefunded = 'refunded';
  static const kRefundable = 'refundable';
  static const kPersonId = 'person_id';
  static const kPaymentSourceId = 'payment_source_id';
  static const kCampusId = 'campus_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id'];

  @override
  List<String> get updateAllowed => ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get paymentMethodSub => attributes[kPaymentMethodSub] ?? '';
  String get paymentLast4 => attributes[kPaymentLast4] ?? '';
  String get paymentBrand => attributes[kPaymentBrand] ?? '';
  int get paymentCheckNumber => attributes[kPaymentCheckNumber] ?? 0;
  String get paymentCheckDatedAt => attributes[kPaymentCheckDatedAt] ?? '';
  int get feeCents => attributes[kFeeCents] ?? 0;
  String get paymentMethod => attributes[kPaymentMethod] ?? '';
  DateTime get receivedAt => DateTime.parse(attributes[kReceivedAt] ?? '');
  int get amountCents => attributes[kAmountCents] ?? 0;
  String get paymentStatus => attributes[kPaymentStatus] ?? '';
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  String get amountCurrency => attributes[kAmountCurrency] ?? '';
  String get feeCurrency => attributes[kFeeCurrency] ?? '';
  bool get isRefunded => attributes[kRefunded] == true;
  bool get isRefundable => attributes[kRefundable] == true;
  

  // setters for object attributes

  
  /// For cards only. Will be `null` for other payment method types.
  /// 
  /// Possible values: `credit`, `debit`, `prepaid`, or `unknown`
  set paymentMethodSub(String s) => attributes[kPaymentMethodSub] = s;
  set paymentLast4(String s) => attributes[kPaymentLast4] = s;
  
  /// For cards, this is the card brand (eg Visa, Mastercard, etc). For checks, this is the bank name
  set paymentBrand(String s) => attributes[kPaymentBrand] = s;
  set paymentCheckNumber(int n) => attributes[kPaymentCheckNumber] = n;
  set paymentCheckDatedAt(String s) => attributes[kPaymentCheckDatedAt] = s;
  set feeCents(int n) => attributes[kFeeCents] = n;
  
  /// Possible values: `ach`, `cash`, `check`, or `card`
  set paymentMethod(String s) => attributes[kPaymentMethod] = s;
  set receivedAt(DateTime d) => attributes[kReceivedAt] = d.toIso8601String();
  

  // additional setters and getters for assignable values

  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  String get paymentSourceId => attributes[kPaymentSourceId] ?? '';
  set paymentSourceId(String s) => attributes[kPaymentSourceId] = s;
  String get campusId => attributes[kCampusId] ?? '';
  set campusId(String s) => attributes[kCampusId] = s;
  



  // Class Constructors
  PcoGivingDonation() : super(kPcoApplication, kTypeString);
  PcoGivingDonation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations`
  /// 
  /// Available Query Filters:
  /// - `succeeded`
  static Future<PcoCollection<PcoGivingDonation>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/batches/$batcheId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromBatche(String batcheId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/batches/$batcheId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses/$campusId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromCampus(String campusId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/campuses/$campusId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources/$paymentSourceId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromPaymentSource(String paymentSourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/payment_sources/$paymentSourceId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/people/$peopleId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/campus`
  Future<PcoCollection<PcoGivingCampus>> getCampus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations`
  Future<PcoCollection<PcoGivingDesignation>> getDesignations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '$apiEndpoint/designations';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/labels`
  Future<PcoCollection<PcoGivingLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '$apiEndpoint/labels';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund`
  Future<PcoCollection<PcoGivingRefund>> getRefund({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRefund.canInclude;
    var url = '$apiEndpoint/refund';
    return PcoCollection.fromApiCall<PcoGivingRefund>(url, query: query, apiVersion: apiVersion);
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
  Future<PlanningCenterApiResponse> issueRefund(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/issue_refund';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
