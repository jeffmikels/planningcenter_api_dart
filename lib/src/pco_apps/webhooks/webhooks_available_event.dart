/// This file was generated on 2021-11-19T12:10:42.833620


import '../../pco.dart';

/// This class represents a PCO Webhooks AvailableEvent Object
/// 
/// Application: webhooks
/// Id:          available_event
/// Type:        AvailableEvent
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// An event supported by webhooks
/// 
/// Example:
/// 
/// {"type":"AvailableEvent","id":"1","attributes":{"name":"string","app":"string","version":"string","type":"string","resource":"string","action":"string"},"relationships":{}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/webhooks/v2/available_events
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoWebhooksAvailableEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'AvailableEvent';
  static const String kTypeId = 'available_event';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'availableevent-organization-available_events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';

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
  static const kApp = 'app';
  static const kVersion = 'version';
  static const kType = 'type';
  static const kResource = 'resource';
  static const kAction = 'action';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get app => attributes[kApp] ?? '';
  String get version => attributes[kVersion] ?? '';
  String get type => attributes[kType] ?? '';
  String get resource => attributes[kResource] ?? '';
  String get action => attributes[kAction] ?? '';




  PcoWebhooksAvailableEvent() : super(kPcoApplication, kTypeString);
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoWebhooksAvailableEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events;
  static Future<List<PcoWebhooksAvailableEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoWebhooksAvailableEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    var url = '/webhooks/v2/available_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksAvailableEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksAvailableEvent Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events;
  static Future<PcoWebhooksAvailableEvent?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoWebhooksAvailableEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    var url = '/webhooks/v2/available_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksAvailableEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
