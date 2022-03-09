/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.895124
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PersonMerger Object
/// 
/// - Application:        people
/// - Id:                 person_merger
/// - Type:               PersonMerger
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/person_mergers
/// 
/// Description:
/// A Person Merger is the history of profiles that were merged into other profiles.
/// 
/// Example:
/// ```json
/// {
///   "type": "PersonMerger",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "person_to_keep_id": "primary_key",
///     "person_to_remove_id": "primary_key"
///   },
///   "relationships": {
///     "person_to_keep": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "person_to_remove": {
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
/// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `personmerger-organization-person_mergers`: https://api.planningcenteronline.com/people/v2/person_mergers
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePersonMerger extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PersonMerger';
  static kTypeId = 'person_merger';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'personmerger-organization-person_mergers';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
  /// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
  static get canQuery() { return ['created_at','person_to_keep_id','person_to_remove_id'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static get canOrderBy() { return ['created_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePersonMerger.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePersonMerger.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePersonMerger.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kPersonToKeepId() { return 'person_to_keep_id' }
  static get kPersonToRemoveId() { return 'person_to_remove_id' }


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

  get personToKeepId() { return attributes[this.constructor.kPersonToKeepId] ?? ''; }
  get personToRemoveId() { return attributes[this.constructor.kPersonToRemoveId] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeoplePersonMerger._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePersonMerger({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `/people/v2/person_mergers`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/person_mergers`;
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
