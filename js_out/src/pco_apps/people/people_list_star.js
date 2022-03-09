/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.845276
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People ListStar Object
/// 
/// - Application:        people
/// - Id:                 list_star
/// - Type:               ListStar
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/star
/// 
/// Description:
/// A starred list for a person indicates it is special in some way
/// 
/// Example:
/// ```json
/// {
///   "type": "ListStar",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `liststar-list-star`: https://api.planningcenteronline.com/people/v2/lists/1/star
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleListStar extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'ListStar';
  static kTypeId = 'list_star';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'liststar-list-star';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleListStar.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleListStar.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleListStar.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleListStar._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleListStar({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleListStar] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/lists/${listId}/star`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(listId) {
    super(PcoPeopleListStar.kPcoApplication, PcoPeopleListStar.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/lists/${listId}/star`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleListStar] objects (expecting many)
  /// using a path like this: `/people/v2/lists/${listId}/star`
  static getStarFromList(listId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleListStar.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/star`;
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
