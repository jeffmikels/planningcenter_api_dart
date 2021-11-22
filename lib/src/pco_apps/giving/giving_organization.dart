/// This file was generated on 2021-11-22T16:37:09.359444


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
Future<List<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
  List<PcoGivingBatchGroup> retval = [];
  var url = '$apiEndpoint/batch_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatchGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches
Future<List<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingBatch.canInclude;
  List<PcoGivingBatch> retval = [];
  var url = '$apiEndpoint/batches';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatch.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingCampus objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses
Future<List<PcoGivingCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingCampus.canInclude;
  List<PcoGivingCampus> retval = [];
  var url = '$apiEndpoint/campuses';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/funds
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingFund.canInclude;
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/funds';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingLabel objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/labels
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
    
/// will get many PcoGivingPaymentSource objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources
Future<List<PcoGivingPaymentSource>> getPaymentSources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPaymentSource.canInclude;
  List<PcoGivingPaymentSource> retval = [];
  var url = '$apiEndpoint/payment_sources';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPaymentSource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people
Future<List<PcoGivingPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPerson.canInclude;
  List<PcoGivingPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations
Future<List<PcoGivingRecurringDonation>> getRecurringDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
  List<PcoGivingRecurringDonation> retval = [];
  var url = '$apiEndpoint/recurring_donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingRecurringDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
