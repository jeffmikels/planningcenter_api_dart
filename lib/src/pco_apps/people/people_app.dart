/// This file was generated on 2021-11-18T15:28:02.025315


import '../../pco.dart';

/// This class represents a PCO People App Object
/// 
/// Application: people
/// Id:          app
/// Type:        App
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An app is one of the handful of apps that Planning Center offers that organizations can subscribe to, e.g. Services, Registrations, etc.
/// 
/// Example:
/// 
/// {"type":"App","id":"1","attributes":{"name":"string","url":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/apps
/// 
class PcoPeopleApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'App';
  static const String kTypeId = 'app';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'app-organization-apps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';
  static const kUrl = 'url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get url => attributes[kUrl] ?? '';




  PcoPeopleApp() : super(kPcoApplication, kTypeString);
  PcoPeopleApp.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app;
  static Future<List<PcoPeopleApp>> getManyFromMessageGroupAndAppIds(String messageGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleApp> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/app';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleApp.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/apps;
  static Future<List<PcoPeopleApp>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleApp> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/apps';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleApp.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app;
  static Future<List<PcoPeopleApp>> getManyFromPeopleAndPersonAppAndAppIds(String peopleId,String personAppId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleApp> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/person_apps/$personAppId/app';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleApp.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps;
  static Future<List<PcoPeopleApp>> getManyFromPeopleAndAppIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleApp> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/apps';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleApp.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app;
  static Future<PcoPeopleApp?> getSingleFromMessageGroupAndAppIds(String messageGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleApp?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/message_groups/$messageGroupId/app' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleApp.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/apps;
  static Future<PcoPeopleApp?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleApp?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/apps' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleApp.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app;
  static Future<PcoPeopleApp?> getSingleFromPeopleAndPersonAppAndAppIds(String peopleId,String personAppId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleApp?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/person_apps/$personAppId/app' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleApp.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps;
  static Future<PcoPeopleApp?> getSingleFromPeopleAndAppIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleApp?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/apps' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleApp.fromJson(res.data);
    }
    return retval;
  }




}
