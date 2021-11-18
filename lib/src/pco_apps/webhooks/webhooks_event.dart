/// This file was generated on 2021-11-17T23:59:30.074764


import '../../pco.dart';

/// This class represents a PCO Webhooks Event Object
/// 
/// Application: webhooks
/// Id:          event
/// Type:        Event
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Event","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","uuid":"string","payload":"string"},"relationships":{"subscription":{"data":{"type":"Subscription","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// 
class PcoWebhooksEvent extends PcoResource {
  static const String pcoApplication = 'webhooks';
  static const String typeString = 'Event';
  static const String typeId = 'event';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'event-subscription-events';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kUuid = 'uuid';
  static const kPayload = 'payload';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get uuid => attributes[kUuid] ?? '';
  String get payload => attributes[kPayload] ?? '';




  PcoWebhooksEvent() : super(pcoApplication, typeString);
  PcoWebhooksEvent.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoWebhooksEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events;
  static Future<List<PcoWebhooksEvent>> getManyFromSubscriptionAndEventIds(String subscriptionId, {PlanningCenterApiQuery? query}) async {
    List<PcoWebhooksEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksEvent.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksEvent Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events;
  static Future<PcoWebhooksEvent?> getSingleFromSubscriptionAndEventIds(String subscriptionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoWebhooksEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksEvent.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoWebhooksDelivery objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
Future<List<PcoWebhooksDelivery>> getDeliveries({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoWebhooksDelivery> retval = [];
  var url = '$apiEndpoint/deliveries';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksDelivery.fromJson(itemData));
    }
  }
  return retval;
}
    

}
