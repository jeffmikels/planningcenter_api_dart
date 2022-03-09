/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.863295
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People NoteCategoryShare Object
/// 
/// - Application:        people
/// - Id:                 note_category_share
/// - Type:               NoteCategoryShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// Description:
/// A note category share defines who can view notes in a category.
/// 
/// Example:
/// ```json
/// {
///   "type": "NoteCategoryShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "person_id": "primary_key"
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
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNoteCategoryShare extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'NoteCategoryShare';
  static kTypeId = 'note_category_share';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'notecategoryshare-notecategory-shares';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/note_categories/1/shares';

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
  get shortestEdgePath() { return PcoPeopleNoteCategoryShare.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNoteCategoryShare.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNoteCategoryShare.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kGroup() { return 'group' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['group','person_id']; }

  // @override
  get updateAllowed() { return ['group','person_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get group() { return attributes[this.constructor.kGroup] ?? ''; }
  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  

  // setters for object attributes

  
  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  set group(s) {attributes[this.constructor.kGroup] = s;}
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleNoteCategoryShare._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNoteCategoryShare({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleNoteCategoryShare] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/note_categories/${noteCategoryId}/shares`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(noteCategoryId) {
    super(PcoPeopleNoteCategoryShare.kPcoApplication, PcoPeopleNoteCategoryShare.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/note_categories/${noteCategoryId}/shares`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNoteCategoryShare] objects (expecting one)
  /// using a path like this: `/people/v2/note_categories/${noteCategoryId}/shares`
  static getSharesFromNoteCategory(noteCategoryId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNoteCategoryShare.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/note_categories/${noteCategoryId}/shares`;
    
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
