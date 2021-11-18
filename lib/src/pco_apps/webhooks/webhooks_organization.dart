/// This file was generated on 2021-11-18T13:57:10.283891


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
  static const String pcoApplication = 'webhooks';
  static const String typeString = 'Organization';
  static const String typeId = 'organization';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoWebhooksOrganization() : super(pcoApplication, typeString);
  PcoWebhooksOrganization.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);





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
