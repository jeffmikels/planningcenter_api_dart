/// This file was generated on 2021-11-22T16:37:09.450914


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
class PcoWebhooksDelivery extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Delivery';
  static const String kTypeId = 'delivery';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'delivery-event-deliveries';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoWebhooksDelivery() : super(kPcoApplication, kTypeString);
  PcoWebhooksDelivery.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoWebhooksDelivery Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries;
  static Future<List<PcoWebhooksDelivery>> getManyFromSubscriptionAndEventAndDeliveriesIds(String subscriptionId,String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoWebhooksDelivery> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksDelivery.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksDelivery Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries;
  static Future<PcoWebhooksDelivery?> getSingleFromSubscriptionAndEventAndDeliveriesIds(String subscriptionId,String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoWebhooksDelivery?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksDelivery.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
