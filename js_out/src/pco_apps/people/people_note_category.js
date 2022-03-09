/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.861512
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People NoteCategory Object
/// 
/// - Application:        people
/// - Id:                 note_category
/// - Type:               NoteCategory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories
/// 
/// Description:
/// A Note Category
/// 
/// Example:
/// ```json
/// {
///   "type": "NoteCategory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "locked": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - shares: include associated shares 
/// - subscribers: include associated subscribers 
/// - subscriptions: include associated subscriptions 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `locked`: (URLParameter), query on a specific locked, example: ?where[locked]=true
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `locked`: (URLParameter), prefix with a hyphen (-locked) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// - `person-notecategory-subscribers`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
/// - `notecategorysubscription-notecategory-subscriptions`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
/// 
/// All Inbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `notecategory-organization-note_categories`: https://api.planningcenteronline.com/people/v2/note_categories
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNoteCategory extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'NoteCategory';
  static kTypeId = 'note_category';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'notecategory-organization-note_categories';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories';

  /// possible includes with parameter ?include=a,b
  /// - `shares`: include associated shares 
  /// - `subscribers`: include associated subscribers 
  /// - `subscriptions`: include associated subscriptions 
  static get canInclude() { return ['shares','subscribers','subscriptions'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `locked`: (URLParameter), query on a specific locked, example: ?where[locked]=true
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','locked','name','organization_id','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `locked`: (URLParameter), prefix with a hyphen (-locked) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','locked','name','organization_id','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleNoteCategory.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNoteCategory.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNoteCategory.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kLocked() { return 'locked' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kOrganizationId() { return 'organization_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name']; }

  // @override
  get updateAllowed() { return ['name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isLocked() { return attributes[this.constructor.kLocked] == true; }
  get organizationId() { return attributes[this.constructor.kOrganizationId] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleNoteCategory._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNoteCategory({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleNoteCategory] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/note_categories`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleNoteCategory.kPcoApplication, PcoPeopleNoteCategory.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/note_categories`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `/people/v2/note_categories`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/note_categories`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategory] objects (expecting one)
  /// using a path like this: `/people/v2/notes/${noteId}/category`
  static getCategoryFromNote(noteId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/notes/${noteId}/category`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategoryShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/shares`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getShares({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    let url = `${apiEndpoint}/shares`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSubscribers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/subscribers`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSubscriptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategorySubscription.canInclude;
    let url = `${apiEndpoint}/subscriptions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
