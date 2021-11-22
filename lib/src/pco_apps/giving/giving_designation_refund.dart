/// This file was generated on 2021-11-22T16:37:09.348743


import '../../pco.dart';

/// This class represents a PCO Giving DesignationRefund Object
/// 
/// Application: giving
/// Id:          designation_refund
/// Type:        DesignationRefund
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"DesignationRefund","id":"1","attributes":{"amount_cents":1,"amount_currency":"string"},"relationships":{"designation":{"data":{"type":"Designation","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds
/// 
/// possible includes with parameter ?include=a,b
/// @designation: include associated designation 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingDesignationRefund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'DesignationRefund';
  static const String kTypeId = 'designation_refund';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';

  /// possible includes with parameter ?include=a,b
  /// @designation: include associated designation 
  static List<String> get canInclude => ['designation'];

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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';




  PcoGivingDesignationRefund() : super(kPcoApplication, kTypeString);
  PcoGivingDesignationRefund.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingDesignationRefund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds;
  static Future<List<PcoGivingDesignationRefund>> getManyFromDonationAndRefundAndDesignationRefundIds(String donationId,String refundId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingDesignationRefund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDesignationRefund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingDesignationRefund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds;
  static Future<PcoGivingDesignationRefund?> getSingleFromDonationAndRefundAndDesignationRefundIds(String donationId,String refundId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingDesignationRefund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignationRefund.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDesignationRefund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingDesignation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
Future<List<PcoGivingDesignation>> getDesignations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDesignation.canInclude;
  List<PcoGivingDesignation> retval = [];
  var url = '$apiEndpoint/designation';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDesignation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
