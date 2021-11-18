/// This file was generated on 2021-11-17T23:59:30.034774


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
class PcoGivingOrganization extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'Organization';
  static const String typeId = 'organization';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';




  PcoGivingOrganization() : super(pcoApplication, typeString);
  PcoGivingOrganization.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);





/// will get many PcoGivingBatchGroup objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batch_groups
Future<List<PcoGivingBatchGroup>> getBatchGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingBatchGroup> retval = [];
  var url = '$apiEndpoint/batch_groups';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatchGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingBatch objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/batches
Future<List<PcoGivingBatch>> getBatchsBatches({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingBatch> retval = [];
  var url = '$apiEndpoint/batches';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingBatch.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingCampu objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses
Future<List<PcoGivingCampu>> getCampusCampuses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingCampu> retval = [];
  var url = '$apiEndpoint/campuses';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingCampu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/funds
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/funds';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingLabel objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/labels
Future<List<PcoGivingLabel>> getLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingLabel> retval = [];
  var url = '$apiEndpoint/labels';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingLabel.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPaymentSource objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/payment_sources
Future<List<PcoGivingPaymentSource>> getPaymentSources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPaymentSource> retval = [];
  var url = '$apiEndpoint/payment_sources';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPaymentSource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/people
Future<List<PcoGivingPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingRecurringDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations
Future<List<PcoGivingRecurringDonation>> getRecurringDonations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingRecurringDonation> retval = [];
  var url = '$apiEndpoint/recurring_donations';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingRecurringDonation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
