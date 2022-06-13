/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.753878
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO People PersonApp Object
/// 
/// - Application:        people
/// - Id:                 person_app
/// - Type:               PersonApp
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
/// ## Description
/// A Person App is the relationship between a Person and an App.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isAllowPcoLogin` (ro) -> PCO: `allow_pco_login`
/// - `peoplePermissions` (ro) -> PCO: `people_permissions`
/// - `appId` (wo) -> PCO: `app_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `app`: include associated app 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `app-personapp-app`: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app
/// 
/// Inbound Edges:
/// - `personapp-person-person_apps`: https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PersonApp",
///   "id": "1",
///   "attributes": {
///     "allow_pco_login": true,
///     "people_permissions": "value"
///   },
///   "relationships": {
///     "app": {
///       "data": {
///         "type": "App",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeoplePersonApp extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonApp';
  static const String kTypeId = 'person_app';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/person_apps';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/person_apps';

  /// possible includes with parameter ?include=a,b
  /// - `app`: include associated app 
  static List<String> get canInclude => ['app'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kAllowPcoLogin = 'allow_pco_login';
  static const kPeoplePermissions = 'people_permissions';
  static const kAppId = 'app_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['app_id'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  bool get isAllowPcoLogin => attributes[kAllowPcoLogin] == true;
  String get peoplePermissions => attributes[kPeoplePermissions] ?? '';    
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set appId(String? x) => (x == null) ? attributes.remove(kAppId) : attributes[kAppId] = x;
  String get appId => attributes[kAppId] ?? '';


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  List<T> includedApp<T extends PcoResource>() => relationships['app']?.cast<T>() ?? [];




  // Class Constructors
  PcoPeoplePersonApp.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeoplePersonApp.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePersonApp] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/person_apps`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeoplePersonApp(String peopleId, ) {
    var obj = PcoPeoplePersonApp.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$peopleId/person_apps';
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePersonApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/person_apps`
  static Future<PcoCollection<PcoPeoplePersonApp>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonApp.canInclude;
    var url = '/people/v2/people/$peopleId/person_apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePersonApp>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleApp] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app`
  Future<PcoCollection<PcoPeopleApp>> getApp({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    var url = '$apiEndpoint/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
