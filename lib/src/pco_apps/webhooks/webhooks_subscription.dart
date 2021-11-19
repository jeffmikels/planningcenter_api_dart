/// This file was generated on 2021-11-19T12:10:42.836855


import '../../pco.dart';

/// This class represents a PCO Webhooks Subscription Object
/// 
/// Application: webhooks
/// Id:          subscription
/// Type:        Subscription
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Subscription","id":"1","attributes":{"name":"string","url":"string","active":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","authenticity_secret":"string","application_id":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @application_id (URLParameter), query on a specific application_id, example: ?where[application_id]=string
/// possible orderings with parameter ?order=

///
class PcoWebhooksSubscription extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Subscription';
  static const String kTypeId = 'subscription';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'subscription-organization-subscriptions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @application_id (URLParameter), query on a specific application_id, example: ?where[application_id]=string
  static List<String> get canQuery => ['application_id'];

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
  static const kUrl = 'url';
  static const kActive = 'active';
  static const kAuthenticitySecret = 'authenticity_secret';
  static const kApplicationId = 'application_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','url','active'];
  @override
  List<String> get updateAllowed => ['active'];

  String get name => attributes[kName] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isActive => attributes[kActive] == true;

  /// Every delivery will include a header `X-PCO-Webhooks-Authenticity`.
  ///This header will be the `HMAC-SHA256` value of this the `authenticity_secret` used as the key,
  ///and the message as the webhook body.
  ///`hmac_sha256(authenticity_secret, webhook_body)`
  String get authenticitySecret => attributes[kAuthenticitySecret] ?? '';
  String get applicationId => attributes[kApplicationId] ?? '';


  set name(String s) => attributes[kName] = s;
  set url(String s) => attributes[kUrl] = s;
  set isActive(bool b) => attributes[kActive] = b;


  PcoWebhooksSubscription() : super(kPcoApplication, kTypeString);
  PcoWebhooksSubscription.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoWebhooksSubscription Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions;
  static Future<List<PcoWebhooksSubscription>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoWebhooksSubscription> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    var url = '/webhooks/v2/subscriptions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksSubscription.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksSubscription Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions;
  static Future<PcoWebhooksSubscription?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoWebhooksSubscription?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    var url = '/webhooks/v2/subscriptions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksSubscription.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoWebhooksEvent objects
/// using a path like this: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
Future<List<PcoWebhooksEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
  List<PcoWebhooksEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoWebhooksEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
