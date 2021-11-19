/// This file was generated on 2021-11-19T12:10:42.835567


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @uuid (URLParameter), query on a specific uuid, example: ?where[uuid]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
class PcoWebhooksEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'event-subscription-events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @uuid (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => ['uuid'];

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
  static const kUuid = 'uuid';
  static const kPayload = 'payload';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get uuid => attributes[kUuid] ?? '';
  String get payload => attributes[kPayload] ?? '';




  PcoWebhooksEvent() : super(kPcoApplication, kTypeString);
  PcoWebhooksEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoWebhooksEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events;
  static Future<List<PcoWebhooksEvent>> getManyFromSubscriptionAndEventIds(String subscriptionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoWebhooksEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksEvent Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events;
  static Future<PcoWebhooksEvent?> getSingleFromSubscriptionAndEventIds(String subscriptionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoWebhooksEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoWebhooksDelivery objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
Future<List<PcoWebhooksDelivery>> getDeliveries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
  List<PcoWebhooksDelivery> retval = [];
  var url = '$apiEndpoint/deliveries';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksDelivery.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
