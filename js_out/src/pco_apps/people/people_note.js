/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.851394
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Note Object
/// 
/// - Application:        people
/// - Id:                 note
/// - Type:               Note
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/notes
/// 
/// Description:
/// A note is text with a category connected to a person’s profile.
/// 
/// Example:
/// ```json
/// {
///   "type": "Note",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "display_date": "2000-01-01T12:00:00Z",
///     "note_category_id": "primary_key",
///     "organization_id": "primary_key",
///     "person_id": "primary_key",
///     "created_by_id": "primary_key"
///   },
///   "relationships": {
///     "note_category": {
///       "data": {
///         "type": "NoteCategory",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "created_by": {
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
/// - category: include associated category 
/// - created_by: include associated created_by 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
/// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
/// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
/// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
/// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `person-note-created_by`: https://api.planningcenteronline.com/people/v2/notes/1/created_by
/// - `person-note-person`: https://api.planningcenteronline.com/people/v2/notes/1/person
/// 
/// All Inbound Edges:
/// - `note-organization-notes`: https://api.planningcenteronline.com/people/v2/notes
/// - `note-person-notes`: https://api.planningcenteronline.com/people/v2/people/1/notes
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNote extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Note';
  static kTypeId = 'note';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'note-organization-notes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/notes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/notes';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category 
  /// - `created_by`: include associated created_by 
  /// - `person`: include associated person 
  static get canInclude() { return ['category','created_by','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `note`: (URLParameter), query on a specific note, example: ?where[note]=string
  /// - `note_category_id`: (URLParameter), query on a specific note_category_id, example: ?where[note_category_id]=primary_key
  static get canQuery() { return ['note','note_category_id'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `display_date`: (URLParameter), prefix with a hyphen (-display_date) to reverse the order
  /// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
  /// - `note`: (URLParameter), prefix with a hyphen (-note) to reverse the order
  /// - `note_category_id`: (URLParameter), prefix with a hyphen (-note_category_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','display_date','id','note','note_category_id','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleNote.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNote.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNote.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kNote() { return 'note' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDisplayDate() { return 'display_date' }
  static get kNoteCategoryId() { return 'note_category_id' }
  static get kOrganizationId() { return 'organization_id' }
  static get kPersonId() { return 'person_id' }
  static get kCreatedById() { return 'created_by_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['note','created_at','updated_at','display_date','note_category_id']; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get note() { return attributes[this.constructor.kNote] ?? ''; }
  get displayDate() { return Date.parse(attributes[this.constructor.kDisplayDate] ?? 0); }
  get noteCategoryId() { return attributes[this.constructor.kNoteCategoryId] ?? ''; }
  get organizationId() { return attributes[this.constructor.kOrganizationId] ?? ''; }
  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  get createdById() { return attributes[this.constructor.kCreatedById] ?? ''; }
  

  // setters for object attributes

  set note(s) {attributes[this.constructor.kNote] = s;}
  set createdAt(d) { attributes[this.constructor.kCreatedAt] = d.toISOString(); }
  set updatedAt(d) { attributes[this.constructor.kUpdatedAt] = d.toISOString(); }
  set displayDate(d) { attributes[this.constructor.kDisplayDate] = d.toISOString(); }
  set noteCategoryId(s) {attributes[this.constructor.kNoteCategoryId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleNote._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNote({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleNote.kPcoApplication, PcoPeopleNote.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/notes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/notes`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/notes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNote] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/notes`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/notes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/category`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCategory({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategory.canInclude;
    let url = `${apiEndpoint}/category`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/created_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCreatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/created_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/notes/1/person`
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
