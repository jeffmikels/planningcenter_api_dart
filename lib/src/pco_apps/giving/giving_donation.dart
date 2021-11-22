/// This file was generated on 2021-11-22T16:57:41.821837


import '../../pco.dart';

/// This class represents a PCO Giving Donation Object
/// 
/// Application: giving
/// Id:          donation
/// Type:        Donation
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Donation","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","payment_method_sub":"value","payment_last4":"string","payment_brand":"string","payment_check_number":1,"payment_check_dated_at":"2000-01-01","fee_cents":1,"payment_method":"value","received_at":"2000-01-01T12:00:00Z","amount_cents":1,"payment_status":"value","completed_at":"2000-01-01T12:00:00Z","amount_currency":"USD","fee_currency":"USD","refunded":true,"refundable":true},"relationships":{"batch":{"data":{"type":"Batch","id":"1"}},"campus":{"data":{"type":"Campus","id":"1"}},"person":{"data":{"type":"Person","id":"1"}},"payment_source":{"data":{"type":"PaymentSource","id":"1"}},"labels":{"data":[{"type":"Labels","id":"1"}]},"recurring_donation":{"data":{"type":"RecurringDonation","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/donations
/// 
/// possible includes with parameter ?include=a,b
/// @designations: include associated designations 
/// @labels: include associated labels 
/// @refund: include associated refund 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @completed_at (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @payment_method (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
/// @received_at (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @completed_at (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @received_at (URLParameter), prefix with a hyphen (-received_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoGivingDonation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Donation';
  static const String kTypeId = 'donation';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'donation-organization-donations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations';

  /// possible includes with parameter ?include=a,b
  /// @designations: include associated designations 
  /// @labels: include associated labels 
  /// @refund: include associated refund 
  static List<String> get canInclude => ['designations','labels','refund'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @completed_at (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @payment_method (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
  /// @received_at (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['completed_at','created_at','payment_method','received_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @completed_at (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @received_at (URLParameter), prefix with a hyphen (-received_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['completed_at','created_at','received_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
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


  // getters and setters
  @override
  List<String> get createAllowed => ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id'];
  @override
  List<String> get updateAllowed => ['payment_method_sub','payment_last4','payment_brand','payment_check_number','payment_check_dated_at','fee_cents','payment_method','received_at','person_id','payment_source_id','campus_id'];


  /// For cards only. Will be `null` for other payment method types.
  ///Possible values: `credit`, `debit`, `prepaid`, or `unknown`
  String get paymentMethodSub => attributes[kPaymentMethodSub] ?? '';
  String get paymentLast4 => attributes[kPaymentLast4] ?? '';

  /// For cards, this is the card brand (eg Visa, Mastercard, etc). For checks, this is the bank name
  String get paymentBrand => attributes[kPaymentBrand] ?? '';
  int get paymentCheckNumber => attributes[kPaymentCheckNumber] ?? 0;
  String get paymentCheckDatedAt => attributes[kPaymentCheckDatedAt] ?? '';
  int get feeCents => attributes[kFeeCents] ?? 0;

  /// Possible values: `ach`, `cash`, `check`, or `card`
  String get paymentMethod => attributes[kPaymentMethod] ?? '';
  DateTime get receivedAt => DateTime.parse(attributes[kReceivedAt] ?? '');
  int get amountCents => attributes[kAmountCents] ?? 0;

  /// Read only. One of `pending`, `succeeded`, `failed`, or `unknown`.For Stripe donations, this is the payment status. For batch donations, `pending` and `succeeded` values are dependent on whether the batch has been committed.
  ///Possible values: `pending`, `succeeded`, or `failed`
  String get paymentStatus => attributes[kPaymentStatus] ?? '';
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  String get amountCurrency => attributes[kAmountCurrency] ?? '';
  String get feeCurrency => attributes[kFeeCurrency] ?? '';
  bool get isRefunded => attributes[kRefunded] == true;

  /// Read only. A boolean indicating whether this donation can be refunded via the API. Note that for some donations, this may be false, even though the donation _can_ be refunded in the UI.
  bool get isRefundable => attributes[kRefundable] == true;



  /// For cards only. Will be `null` for other payment method types.
  ///Possible values: `credit`, `debit`, `prepaid`, or `unknown`
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


  PcoGivingDonation() : super(kPcoApplication, kTypeString);
  PcoGivingDonation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/donations;
  static Future<List<PcoGivingDonation>> getManyFromBatcheAndDonationIds(String batcheId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/batches/$batcheId/donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses/1/donations;
  static Future<List<PcoGivingDonation>> getManyFromCampusAndDonationIds(String campusId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/campuses/$campusId/donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations;
  static Future<List<PcoGivingDonation>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations;
  static Future<List<PcoGivingDonation>> getManyFromPaymentSourceAndDonationIds(String paymentSourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/payment_sources/$paymentSourceId/donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingDonation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/donations;
  static Future<List<PcoGivingDonation>> getManyFromPeopleAndDonationIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDonation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/people/$peopleId/donations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/batches/1/donations;
  static Future<PcoGivingDonation?> getSingleFromBatcheAndDonationIds(String batcheId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDonation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/batches/$batcheId/donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDonation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses/1/donations;
  static Future<PcoGivingDonation?> getSingleFromCampusAndDonationIds(String campusId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDonation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/campuses/$campusId/donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDonation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations;
  static Future<PcoGivingDonation?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDonation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDonation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations;
  static Future<PcoGivingDonation?> getSingleFromPaymentSourceAndDonationIds(String paymentSourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDonation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/payment_sources/$paymentSourceId/donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDonation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingDonation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/donations;
  static Future<PcoGivingDonation?> getSingleFromPeopleAndDonationIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDonation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '/giving/v2/people/$peopleId/donations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDonation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingCampus objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus
Future<List<PcoGivingCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingCampus.canInclude;
  List<PcoGivingCampus> retval = [];
  var url = '$apiEndpoint/campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDesignation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations
Future<List<PcoGivingDesignation>> getDesignations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDesignation.canInclude;
  List<PcoGivingDesignation> retval = [];
  var url = '$apiEndpoint/designations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDesignation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingLabel objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/labels
Future<List<PcoGivingLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingLabel.canInclude;
  List<PcoGivingLabel> retval = [];
  var url = '$apiEndpoint/labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingRefund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund
Future<List<PcoGivingRefund>> getRefunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingRefund.canInclude;
  List<PcoGivingRefund> retval = [];
  var url = '$apiEndpoint/refund';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingRefund.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: issue_refund
/// Used to refund a batch donation
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/issue_refund
/// 
/// Details:
/// This action refunds a batch donation.
/// It will respond with `unprocessable_entity` if the donation cannot be refunded, or if the donation is not part of a batch.
/// `refunded_at` is optional, but recommended for data accuracy.
/// ```json
/// {
///   "data": {
///     "attributes": {
///       "refunded_at": "1959-02-03"
///     }
///   }
/// }
/// ```
/// 
Future<PlanningCenterApiResponse> issueRefund(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/issue_refund';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
