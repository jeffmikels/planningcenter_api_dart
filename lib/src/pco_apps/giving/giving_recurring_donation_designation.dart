/// This file was generated on 2021-11-22T16:37:09.368405


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
/// possible includes with parameter ?include=a,b
/// @fund: include associated fund 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingRecurringDonationDesignation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'RecurringDonationDesignation';
  static const String kTypeId = 'recurring_donation_designation';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'recurringdonationdesignation-recurringdonation-designations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations';

  /// possible includes with parameter ?include=a,b
  /// @fund: include associated fund 
  static List<String> get canInclude => ['fund'];

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




  PcoGivingRecurringDonationDesignation() : super(kPcoApplication, kTypeString);
  PcoGivingRecurringDonationDesignation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingRecurringDonationDesignation Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations;
  static Future<List<PcoGivingRecurringDonationDesignation>> getManyFromRecurringDonationAndDesignationIds(String recurringDonationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingRecurringDonationDesignation> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonationDesignation.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingRecurringDonationDesignation.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingRecurringDonationDesignation Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations;
  static Future<PcoGivingRecurringDonationDesignation?> getSingleFromRecurringDonationAndDesignationIds(String recurringDonationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingRecurringDonationDesignation?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonationDesignation.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingRecurringDonationDesignation.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingFund.canInclude;
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/fund';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
