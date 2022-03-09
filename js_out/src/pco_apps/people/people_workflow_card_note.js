/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.068366
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowCardNote Object
/// 
/// - Application:        people
/// - Id:                 workflow_card_note
/// - Type:               WorkflowCardNote
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// 
/// Description:
/// Workflow Note is a note that has been made on a Workflow Card
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowCardNote",
///   "id": "1",
///   "attributes": {
///     "note": "string",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflowCardNote extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowCardNote';
  static kTypeId = 'workflow_card_note';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowcardnote-workflowcard-notes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static get canOrderBy() { return ['created_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowCardNote.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowCardNote.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowCardNote.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kNote() { return 'note' }
  static get kCreatedAt() { return 'created_at' }
  static get kNoteCategoryId() { return 'note_category_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['note','note_category_id']; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get note() { return attributes[this.constructor.kNote] ?? ''; }
  

  // setters for object attributes

  set note(s) {attributes[this.constructor.kNote] = s;}
  

  // additional setters and getters for assignable values

  get noteCategoryId() { return attributes[this.constructor.kNoteCategoryId] ?? ''; }
  set noteCategoryId(s) {attributes[this.constructor.kNoteCategoryId] = s;}
  



  // Class Constructors
  // PcoPeopleWorkflowCardNote._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowCardNote({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleWorkflowCardNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId,workflowCardId) {
    super(PcoPeopleWorkflowCardNote.kPcoApplication, PcoPeopleWorkflowCardNote.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/notes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCardNote] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/notes`
  static getNotesFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCardNote.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/notes`;
    
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
