/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:21.980019
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People App Object
/// 
/// - Application:        people
/// - Id:                 app
/// - Type:               App
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/apps
/// 
/// Description:
/// An app is one of the handful of apps that Planning Center offers that organizations can subscribe to, e.g. Services, Registrations, etc.
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `url` (ro) -> PCO: `url`
/// 
/// Example:
/// ```json
/// {
///   "type": "App",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "url": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `app-messagegroup-app`: https://api.planningcenteronline.com/people/v2/message_groups/1/app
/// - `app-organization-apps`: https://api.planningcenteronline.com/people/v2/apps
/// - `app-personapp-app`: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app
/// - `app-person-apps`: https://api.planningcenteronline.com/people/v2/people/1/apps
/// 
/// All Actions:
/// NONE
///
class PcoPeopleApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'App';
  static const String kTypeId = 'app';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'app-organization-apps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  static List<String> get canQuery => ['name','url'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  static List<String> get canOrderBy => ['name','url'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kUrl = 'url';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get url => attributes[kUrl] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleApp._() : super(kPcoApplication, kTypeString);
  PcoPeopleApp.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/apps`
  static Future<PcoCollection<PcoPeopleApp>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/$messageGroupId/app`
  static Future<PcoCollection<PcoPeopleApp>> getFromMessageGroup(String messageGroupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/message_groups/$messageGroupId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/person_apps/$personAppId/app`
  static Future<PcoCollection<PcoPeopleApp>> getFromPeopleAndPersonApp(String peopleId,String personAppId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/person_apps/$personAppId/app';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/apps`
  static Future<PcoCollection<PcoPeopleApp>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '/people/v2/people/$peopleId/apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
