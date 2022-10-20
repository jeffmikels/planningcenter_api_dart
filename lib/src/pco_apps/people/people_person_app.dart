/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.423659
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoPeoplePersonAppOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeoplePersonAppFilter { none }

/// Creates a [PcoPeoplePersonAppQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeApp`: include associated app 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoPeoplePersonAppQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePersonAppQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePersonAppOrder, String> _orderMap = {
    
  };
  static String orderString(PcoPeoplePersonAppOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePersonAppFilter, String> _filterMap = {
    
  };
  static String filterString(PcoPeoplePersonAppFilter filter) => _filterMap[filter]!;

  PcoPeoplePersonAppQuery({
    /// include associated app
    /// when true, adds `?include=app` to url
    bool includeApp = false,
    



    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeApp) include.add('app');}
}

/// This class represents a PCO People PersonApp Object
/// 
/// - Application:        people
/// - Id:                 person_app
/// - Type:               PersonApp
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoPeoplePersonApp()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeoplePersonApp.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  static const String kApiVersion = '2022-07-14';
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
  bool get isAllowPcoLogin => _attributes[kAllowPcoLogin] == true;
  String get peoplePermissions => _attributes[kPeoplePermissions] ?? '';
  
  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set appId(String? x) => (x == null) ? _attributes.remove(kAppId) : _attributes[kAppId] = x;
  String get appId => _attributes[kAppId] ?? '';
  
  // typed getters for each relationship
  
  PcoPeopleApp? get includedApp => _firstOrNull<PcoPeopleApp>(relationships['app']);

  // Class Constructors
  PcoPeoplePersonApp.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoPeoplePersonApp.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePersonApp] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/person_apps`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `appId`
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePersonApp({required String personId, String? id, bool? isAllowPcoLogin, String? peoplePermissions, String? appId, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeoplePersonApp.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$personId/person_apps';
    if (isAllowPcoLogin != null) obj._attributes['allow_pco_login'] = isAllowPcoLogin;
    if (peoplePermissions != null) obj._attributes['people_permissions'] = peoplePermissions;
    if (appId != null) obj._attributes['app_id'] = appId;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoPeoplePersonApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/person_apps`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePersonApp>> getFromPerson(String personId, {String? id, PcoPeoplePersonAppQuery? query, bool includeApp = false,}) async {
    query ??= PcoPeoplePersonAppQuery();
    
    if (includeApp) query.include.add('app');
    var url = '/people/v2/people/$personId/person_apps';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePersonApp>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleApp] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app`
  Future<PcoCollection<PcoPeopleApp>> getApp({PcoPeopleAppQuery? query}) async {
    query ??= PcoPeopleAppQuery();
    var url = '$apiEndpoint/app';
    return PcoCollection.fromApiCall<PcoPeopleApp>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
