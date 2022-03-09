/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.811339
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoPeopleApp extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'App';
  static kTypeId = 'app';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'app-organization-apps';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/apps';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  static get canQuery() { return ['name','url'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  static get canOrderBy() { return ['name','url'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleApp.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleApp.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleApp.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kUrl() { return 'url' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get url() { return attributes[this.constructor.kUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleApp._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleApp({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/apps`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/apps`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/message_groups/${messageGroupId}/app`
  static getFromMessageGroup(messageGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/message_groups/${messageGroupId}/app`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/person_apps/${personAppId}/app`
  static getFromPeopleAndPersonApp(peopleId, personAppId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/person_apps/${personAppId}/app`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleApp] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/apps`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleApp.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/apps`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
