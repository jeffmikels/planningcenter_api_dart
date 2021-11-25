/// This file was generated on 2021-11-25T00:07:20.785769


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingDesignation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Designation';
  static const String kTypeId = 'designation';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'designation-donation-designations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/donations/1/designations';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

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




  PcoGivingDesignation() : super(kPcoApplication, kTypeString);
  PcoGivingDesignation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation;
  static Future<PcoCollection<PcoGivingDesignation>> getManyFromDonationAndRefundAndDesignationRefund(String donationId,String designationRefundId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations;
  static Future<PcoCollection<PcoGivingDesignation>> getManyFromDonationAndDesignation(String donationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/designations';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGivingDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation;
  static Future<PcoCollection<PcoGivingDesignation>> getSingleFromDonationAndRefundAndDesignationRefund(String donationId,String designationRefundId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingDesignation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations;
  static Future<PcoCollection<PcoGivingDesignation>> getSingleFromDonationAndDesignation(String donationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDesignation.canInclude;
    var url = '/giving/v2/donations/$donationId/designations' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingDesignation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
Future<PcoCollection<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingFund.canInclude;
  var url = '$apiEndpoint/fund';
  return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:apiVersion);
}
    


}
