/// This file was generated on 2021-11-17T23:59:30.042498


import '../../pco.dart';

/// This class represents a PCO Giving RecurringDonationDesignation Object
/// 
/// Application: giving
/// Id:          recurring_donation_designation
/// Type:        RecurringDonationDesignation
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"RecurringDonationDesignation","id":"1","attributes":{"amount_cents":1,"amount_currency":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
/// 
class PcoGivingRecurringDonationDesignation extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'RecurringDonationDesignation';
  static const String typeId = 'recurring_donation_designation';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'recurringdonationdesignation-recurringdonation-designations';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations';

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




  PcoGivingRecurringDonationDesignation() : super(pcoApplication, typeString);
  PcoGivingRecurringDonationDesignation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingRecurringDonationDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations;
  static Future<List<PcoGivingRecurringDonationDesignation>> getManyFromRecurringDonationAndDesignationIds(String recurringDonationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingRecurringDonationDesignation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRecurringDonationDesignation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingRecurringDonationDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations;
  static Future<PcoGivingRecurringDonationDesignation?> getSingleFromRecurringDonationAndDesignationIds(String recurringDonationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingRecurringDonationDesignation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRecurringDonationDesignation.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/fund';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData));
    }
  }
  return retval;
}
    

}
