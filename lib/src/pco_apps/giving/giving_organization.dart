/// This file was generated on 2021-11-25T00:07:20.789895


import '../../pco.dart';

/// This class represents a PCO Giving Organization Object
/// 
/// Application: giving
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingOrganization extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2';

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
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';




  PcoGivingOrganization() : super(kPcoApplication, kTypeString);
  PcoGivingOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);





/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups
Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
  var url = '$apiEndpoint/batch_groups';
  return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches
Future<PcoCollection<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatch.canInclude;
  var url = '$apiEndpoint/batches';
  return PcoCollection.fromApiCall<PcoGivingBatch>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingCampus objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses
Future<PcoCollection<PcoGivingCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingCampus.canInclude;
  var url = '$apiEndpoint/campuses';
  return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations
Future<PcoCollection<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  var url = '$apiEndpoint/donations';
  return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/funds
Future<PcoCollection<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingFund.canInclude;
  var url = '$apiEndpoint/funds';
  return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingLabel objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/labels
Future<PcoCollection<PcoGivingLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingLabel.canInclude;
  var url = '$apiEndpoint/labels';
  return PcoCollection.fromApiCall<PcoGivingLabel>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingPaymentSource objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources
Future<PcoCollection<PcoGivingPaymentSource>> getPaymentSources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPaymentSource.canInclude;
  var url = '$apiEndpoint/payment_sources';
  return PcoCollection.fromApiCall<PcoGivingPaymentSource>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people
Future<PcoCollection<PcoGivingPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations
Future<PcoCollection<PcoGivingRecurringDonation>> getRecurringDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
  var url = '$apiEndpoint/recurring_donations';
  return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url, query: query, apiVersion:apiVersion);
}
    


}
