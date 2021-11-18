/// This file was generated on 2021-11-17T23:59:30.031330


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
class PcoGivingDesignationRefund extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'DesignationRefund';
  static const String typeId = 'designation_refund';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGivingDesignationRefund() : super(pcoApplication, typeString);
  PcoGivingDesignationRefund.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingDesignationRefund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds;
  static Future<List<PcoGivingDesignationRefund>> getManyFromDonationAndRefundAndDesignationRefundIds(String donationId,String refundId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingDesignationRefund> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDesignationRefund.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingDesignationRefund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds;
  static Future<PcoGivingDesignationRefund?> getSingleFromDonationAndRefundAndDesignationRefundIds(String donationId,String refundId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingDesignationRefund?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDesignationRefund.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingDesignation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
Future<List<PcoGivingDesignation>> getDesignations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingDesignation> retval = [];
  var url = '$apiEndpoint/designation';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDesignation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
