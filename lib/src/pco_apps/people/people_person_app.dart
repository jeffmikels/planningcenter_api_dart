/// This file was generated on 2021-11-18T15:28:02.071209


import '../../pco.dart';

/// This class represents a PCO People PersonApp Object
/// 
/// Application: people
/// Id:          person_app
/// Type:        PersonApp
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Person App is the relationship between a Person and an App.
/// 
/// Example:
/// 
/// {"type":"PersonApp","id":"1","attributes":{"allow_pco_login":true,"people_permissions":"value"},"relationships":{"app":{"data":{"type":"App","id":"1"}},"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
class PcoPeoplePersonApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonApp';
  static const String kTypeId = 'person_app';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'personapp-person-person_apps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/person_apps';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kAllowPcoLogin = 'allow_pco_login';
  static const kPeoplePermissions = 'people_permissions';


  // getters and setters
  @override
  List<String> get createAllowed => ['app_id'];
  @override
  List<String> get updateAllowed => [];

  bool get isAllowPcoLogin => attributes[kAllowPcoLogin] == true;

  /// Possible values: `no_access`, `viewer`, or `editor`
  String get peoplePermissions => attributes[kPeoplePermissions] ?? '';




  PcoPeoplePersonApp() : super(kPcoApplication, kTypeString);
  PcoPeoplePersonApp.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeoplePersonApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps;
  static Future<List<PcoPeoplePersonApp>> getManyFromPeopleAndPersonAppIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePersonApp> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/person_apps';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePersonApp.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePersonApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps;
  static Future<PcoPeoplePersonApp?> getSingleFromPeopleAndPersonAppIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePersonApp?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/person_apps' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePersonApp.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleApp objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app
Future<List<PcoPeopleApp>> getApps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleApp> retval = [];
  var url = '$apiEndpoint/app';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleApp.fromJson(itemData));
    }
  }
  return retval;
}
    

}
