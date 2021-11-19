/// This file was generated on 2021-11-19T12:10:42.836195


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoWebhooksOrganization extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';

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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoWebhooksOrganization() : super(kPcoApplication, kTypeString);
  PcoWebhooksOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);





/// will get many PcoWebhooksAvailableEvent objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events
Future<List<PcoWebhooksAvailableEvent>> getAvailableEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
  List<PcoWebhooksAvailableEvent> retval = [];
  var url = '$apiEndpoint/available_events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksAvailableEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoWebhooksSubscription objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions
Future<List<PcoWebhooksSubscription>> getSubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
  List<PcoWebhooksSubscription> retval = [];
  var url = '$apiEndpoint/subscriptions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksSubscription.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
