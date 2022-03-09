/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.844402
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People ListShare Object
/// 
/// - Application:        people
/// - Id:                 list_share
/// - Type:               ListShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/shares
/// 
/// Description:
/// A list share indicates who has access to edit a list.
/// 
/// Example:
/// ```json
/// {
///   "type": "ListShare",
///   "id": "1",
///   "attributes": {
///     "permission": "value",
///     "group": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string"
///   },
///   "relationships": {
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
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `group`: (URLParameter), query on a specific group, example: ?where[group]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `group`: (URLParameter), prefix with a hyphen (-group) to reverse the order
///
/// All Outbound Edges:
/// - `person-listshare-person`: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
/// 
/// All Inbound Edges:
/// - `listshare-list-shares`: https://api.planningcenteronline.com/people/v2/lists/1/shares
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleListShare extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'ListShare';
  static kTypeId = 'list_share';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'listshare-list-shares';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `group`: (URLParameter), query on a specific group, example: ?where[group]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static get canQuery() { return ['created_at','group','name','permission'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `group`: (URLParameter), prefix with a hyphen (-group) to reverse the order
  static get canOrderBy() { return ['created_at','group'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleListShare.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleListShare.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleListShare.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kPermission() { return 'permission' }
  static get kGroup() { return 'group' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }


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

  get permission() { return attributes[this.constructor.kPermission] ?? ''; }
  get group() { return attributes[this.constructor.kGroup] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleListShare._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleListShare({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListShare] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/shares`
  static getSharesFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListShare.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/shares`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
