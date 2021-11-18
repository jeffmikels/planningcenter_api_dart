/// This file was generated on 2021-11-18T15:28:02.250297


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
class PcoWebhooksAvailableEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'AvailableEvent';
  static const String kTypeId = 'available_event';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'availableevent-organization-available_events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoWebhooksAvailableEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events;
  static Future<List<PcoWebhooksAvailableEvent>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoWebhooksAvailableEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/available_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoWebhooksAvailableEvent.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoWebhooksAvailableEvent Object
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events;
  static Future<PcoWebhooksAvailableEvent?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoWebhooksAvailableEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/available_events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksAvailableEvent.fromJson(res.data);
    }
    return retval;
  }




}
