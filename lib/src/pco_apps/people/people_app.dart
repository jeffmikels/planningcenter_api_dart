/// This file was generated on 2021-11-25T00:07:20.545021


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @url (URLParameter), query on a specific url, example: ?where[url]=string
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @url (URLParameter), prefix with a hyphen (-url) to reverse the order
///
class PcoPeopleApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'App';
  static const String kTypeId = 'app';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'app-organization-apps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @url (URLParameter), query on a specific url, example: ?where[url]=string
  static List<String> get canQuery => ['name','url'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @url (URLParameter), prefix with a hyphen (-url) to reverse the order
  static List<String> get canOrderBy => ['name','url'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleApp.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app;
  static Future<PcoCollection<PcoPeopleApp>> getManyFromMessageGroup(String messageGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/apps;
  static Future<PcoCollection<PcoPeopleApp>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app;
  static Future<PcoCollection<PcoPeopleApp>> getManyFromPeopleAndPersonApp(String peopleId,String personAppId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/person_apps/$personAppId/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleApp Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps;
  static Future<PcoCollection<PcoPeopleApp>> getManyFromPeopleAndApp(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/apps';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/message_groups/1/app;
  static Future<PcoCollection<PcoPeopleApp>> getSingleFromMessageGroup(String messageGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/app' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleApp.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/apps;
  static Future<PcoCollection<PcoPeopleApp>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/apps' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleApp.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app;
  static Future<PcoCollection<PcoPeopleApp>> getSingleFromPeopleAndPersonApp(String peopleId,String personAppId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/person_apps/$personAppId/app' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleApp.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleApp Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/apps;
  static Future<PcoCollection<PcoPeopleApp>> getSingleFromPeopleAndApp(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/apps' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleApp.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
