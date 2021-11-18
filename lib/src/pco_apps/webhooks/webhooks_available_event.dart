/// This file was generated on 2021-11-17T23:59:30.073463


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
  static const String pcoApplication = 'webhooks';
  static const String typeString = 'AvailableEvent';
  static const String typeId = 'available_event';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'availableevent-organization-available_events';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/available_events';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoWebhooksAvailableEvent() : super(pcoApplication, typeString);
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoWebhooksAvailableEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/webhooks/v2/available_events;
  static Future<List<PcoWebhooksAvailableEvent>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoWebhooksAvailableEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/webhooks/v2/available_events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoWebhooksAvailableEvent.fromJson(res.data);
    }
    return retval;
  }




}
