/// This file was generated on 2021-11-18T15:28:02.251816


import '../../pco.dart';

/// This class represents a PCO Webhooks Organization Object
/// 
/// Application: webhooks
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/webhooks/v2
/// 
class PcoWebhooksOrganization extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoWebhooksOrganization() : super(kPcoApplication, kTypeString);
  PcoWebhooksOrganization.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);





/// will get many PcoWebhooksAvailableEvent objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events
Future<List<PcoWebhooksAvailableEvent>> getAvailableEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoWebhooksAvailableEvent> retval = [];
  var url = '$apiEndpoint/available_events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksAvailableEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoWebhooksSubscription objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions
Future<List<PcoWebhooksSubscription>> getSubscriptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoWebhooksSubscription> retval = [];
  var url = '$apiEndpoint/subscriptions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksSubscription.fromJson(itemData));
    }
  }
  return retval;
}
    

}
