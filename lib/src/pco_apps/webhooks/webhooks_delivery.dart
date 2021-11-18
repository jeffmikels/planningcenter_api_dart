/// This file was generated on 2021-11-17T23:59:30.074172


import '../../pco.dart';

/// This class represents a PCO Webhooks Delivery Object
/// 
/// Application: webhooks
/// Id:          delivery
/// Type:        Delivery
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Delivery","id":"1","attributes":{"status":1,"request_headers":"string","request_body":"string","response_headers":"string","response_body":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","timing":1.42},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// 
class PcoWebhooksDelivery extends PcoResource {
  static const String pcoApplication = 'webhooks';
  static const String typeString = 'Delivery';
  static const String typeId = 'delivery';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'delivery-event-deliveries';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kStatus = 'status';
  static const kRequestHeaders = 'request_headers';
  static const kRequestBody = 'request_body';
  static const kResponseHeaders = 'response_headers';
  static const kResponseBody = 'response_body';
  static const kTiming = 'timing';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get status => attributes[kStatus] ?? 0;
  String get requestHeaders => attributes[kRequestHeaders] ?? '';
  String get requestBody => attributes[kRequestBody] ?? '';
  String get responseHeaders => attributes[kResponseHeaders] ?? '';
  String get responseBody => attributes[kResponseBody] ?? '';
  double get timing => attributes[kTiming] ?? 0;




  PcoWebhooksDelivery() : super(pcoApplication, typeString);
  PcoWebhooksDelivery.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoWebhooksDelivery Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries;
  static Future<List<PcoWebhooksDelivery>> getManyFromSubscriptionAndEventAndDeliveriesIds(String subscriptionId,String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoWebhooksDelivery> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksDelivery.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksDelivery Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries;
  static Future<PcoWebhooksDelivery?> getSingleFromSubscriptionAndEventAndDeliveriesIds(String subscriptionId,String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoWebhooksDelivery?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksDelivery.fromJson(res.data);
    }
    return retval;
  }




}
