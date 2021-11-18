/// This file was generated on 2021-11-18T13:57:10.201401


import '../../pco.dart';

/// This class represents a PCO Giving Designation Object
/// 
/// Application: giving
/// Id:          designation
/// Type:        Designation
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Designation","id":"1","attributes":{"amount_cents":1,"amount_currency":"string"},"relationships":{"fund":{"data":{"type":"Fund","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// 
class PcoGivingDesignation extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'Designation';
  static const String typeId = 'designation';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'designation-donation-designations';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/designations';

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




  PcoGivingDesignation() : super(pcoApplication, typeString);
  PcoGivingDesignation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation;
  static Future<List<PcoGivingDesignation>> getManyFromDonationAndRefundAndDesignationRefundAndDesignationIds(String donationId,String designationRefundId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingDesignation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDesignation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations;
  static Future<List<PcoGivingDesignation>> getManyFromDonationAndDesignationIds(String donationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingDesignation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/designations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingDesignation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation;
  static Future<PcoGivingDesignation?> getSingleFromDonationAndRefundAndDesignationRefundAndDesignationIds(String donationId,String designationRefundId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingDesignation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDesignation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations;
  static Future<PcoGivingDesignation?> getSingleFromDonationAndDesignationIds(String donationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingDesignation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/designations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingDesignation.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/fund';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData));
    }
  }
  return retval;
}
    

}
