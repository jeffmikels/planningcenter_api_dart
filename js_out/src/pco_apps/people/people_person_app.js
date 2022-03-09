/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.893792
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PersonApp Object
/// 
/// - Application:        people
/// - Id:                 person_app
/// - Type:               PersonApp
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
/// Description:
/// A Person App is the relationship between a Person and an App.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - app: include associated app 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `app-personapp-app`: https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app
/// 
/// All Inbound Edges:
/// - `personapp-person-person_apps`: https://api.planningcenteronline.com/people/v2/people/1/person_apps
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePersonApp extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PersonApp';
  static kTypeId = 'person_app';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'personapp-person-person_apps';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/person_apps';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/person_apps';

  /// possible includes with parameter ?include=a,b
  /// - `app`: include associated app 
  static get canInclude() { return ['app'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePersonApp.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePersonApp.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePersonApp.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAllowPcoLogin() { return 'allow_pco_login' }
  static get kPeoplePermissions() { return 'people_permissions' }
  static get kAppId() { return 'app_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['app_id']; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get isAllowPcoLogin() { return attributes[this.constructor.kAllowPcoLogin] == true; }
  get peoplePermissions() { return attributes[this.constructor.kPeoplePermissions] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  get appId() { return attributes[this.constructor.kAppId] ?? ''; }
  set appId(s) {attributes[this.constructor.kAppId] = s;}
  



  // Class Constructors
  // PcoPeoplePersonApp._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePersonApp({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeoplePersonApp] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/${peopleId}/person_apps`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoPeoplePersonApp.kPcoApplication, PcoPeoplePersonApp.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people/${peopleId}/person_apps`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePersonApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/person_apps`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePersonApp.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/person_apps`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/person_apps/1/app`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getApp({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let url = `${apiEndpoint}/app`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
