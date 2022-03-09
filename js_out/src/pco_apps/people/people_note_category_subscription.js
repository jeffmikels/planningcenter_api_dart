/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.865369
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People NoteCategorySubscription Object
/// 
/// - Application:        people
/// - Id:                 note_category_subscription
/// - Type:               NoteCategorySubscription
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_category_subscriptions
/// 
/// Description:
/// A subscription for note categories
/// 
/// Example:
/// ```json
/// {
///   "type": "NoteCategorySubscription",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
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
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `notecategorysubscription-person-`: https://api.planningcenteronline.com/people/v2/people/1/
/// - `notecategorysubscription-notecategory-subscriptions`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
/// - `notecategorysubscription-organization-note_category_subscriptions`: https://api.planningcenteronline.com/people/v2/note_category_subscriptions
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNoteCategorySubscription extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'NoteCategorySubscription';
  static kTypeId = 'note_category_subscription';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'notecategorysubscription-person-';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/note_category_subscriptions';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleNoteCategorySubscription.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNoteCategorySubscription.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNoteCategorySubscription.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


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

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleNoteCategorySubscription._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNoteCategorySubscription({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `/people/v2/note_category_subscriptions`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/note_category_subscriptions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategorySubscription] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/${noteCategoryId}/subscriptions`
  static getSubscriptionsFromNoteCategory(noteCategoryId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/note_categories/${noteCategoryId}/subscriptions`;
    
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
