/// This file was generated on 2021-11-22T16:37:09.369175


import '../../pco.dart';

/// This class represents a PCO Giving Refund Object
/// 
/// Application: giving
/// Id:          refund
/// Type:        Refund
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Refund","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","amount_cents":1,"amount_currency":"string","fee_cents":1,"refunded_at":"2000-01-01T12:00:00Z","fee_currency":"USD"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/donations/1/refund
/// 
/// possible includes with parameter ?include=a,b
/// @designation_refunds: include associated designation_refunds 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingRefund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Refund';
  static const String kTypeId = 'refund';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'refund-donation-refund';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund';

  /// possible includes with parameter ?include=a,b
  /// @designation_refunds: include associated designation_refunds 
  static List<String> get canInclude => ['designation_refunds'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';
  static const kFeeCents = 'fee_cents';
  static const kRefundedAt = 'refunded_at';
  static const kFeeCurrency = 'fee_currency';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';
  int get feeCents => attributes[kFeeCents] ?? 0;
  DateTime get refundedAt => DateTime.parse(attributes[kRefundedAt] ?? '');
  String get feeCurrency => attributes[kFeeCurrency] ?? '';




  PcoGivingRefund() : super(kPcoApplication, kTypeString);
  PcoGivingRefund.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingRefund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund;
  static Future<List<PcoGivingRefund>> getManyFromDonationAndRefundIds(String donationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingRefund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRefund.canInclude;
    var url = '/giving/v2/donations/$donationId/refund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRefund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingRefund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund;
  static Future<PcoGivingRefund?> getSingleFromDonationAndRefundIds(String donationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingRefund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRefund.canInclude;
    var url = '/giving/v2/donations/$donationId/refund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRefund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingDesignationRefund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
Future<List<PcoGivingDesignationRefund>> getDesignationRefunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
  List<PcoGivingDesignationRefund> retval = [];
  var url = '$apiEndpoint/designation_refunds';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDesignationRefund.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
