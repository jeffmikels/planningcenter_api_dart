/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.062322
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowCardActivity Object
/// 
/// - Application:        people
/// - Id:                 workflow_card_activity
/// - Type:               WorkflowCardActivity
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// 
/// Description:
/// Workflow Card Activity is a record of an action performed on a card
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowCardActivity",
///   "id": "1",
///   "attributes": {
///     "comment": "string",
///     "content": "string",
///     "form_submission_url": "string",
///     "person_avatar_url": "string",
///     "person_name": "string",
///     "reassigned_to_avatar_url": "string",
///     "reassigned_to_name": "string",
///     "subject": "string",
///     "type": "string",
///     "content_is_html": true,
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "workflow_card": {
///       "data": {
///         "type": "WorkflowCard",
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
/// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflowCardActivity extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowCardActivity';
  static kTypeId = 'workflow_card_activity';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowcardactivity-workflowcard-activities';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `id`: (URLParameter), prefix with a hyphen (-id) to reverse the order
  static get canOrderBy() { return ['id'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowCardActivity.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowCardActivity.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowCardActivity.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kComment() { return 'comment' }
  static get kContent() { return 'content' }
  static get kFormSubmissionUrl() { return 'form_submission_url' }
  static get kPersonAvatarUrl() { return 'person_avatar_url' }
  static get kPersonName() { return 'person_name' }
  static get kReassignedToAvatarUrl() { return 'reassigned_to_avatar_url' }
  static get kReassignedToName() { return 'reassigned_to_name' }
  static get kSubject() { return 'subject' }
  static get kType() { return 'type' }
  static get kContentIsHtml() { return 'content_is_html' }
  static get kCreatedAt() { return 'created_at' }


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
  get canDestroy() { return true; }

  // getters for object attributes

  get comment() { return attributes[this.constructor.kComment] ?? ''; }
  get content() { return attributes[this.constructor.kContent] ?? ''; }
  get formSubmissionUrl() { return attributes[this.constructor.kFormSubmissionUrl] ?? ''; }
  get personAvatarUrl() { return attributes[this.constructor.kPersonAvatarUrl] ?? ''; }
  get personName() { return attributes[this.constructor.kPersonName] ?? ''; }
  get reassignedToAvatarUrl() { return attributes[this.constructor.kReassignedToAvatarUrl] ?? ''; }
  get reassignedToName() { return attributes[this.constructor.kReassignedToName] ?? ''; }
  get subject() { return attributes[this.constructor.kSubject] ?? ''; }
  get type() { return attributes[this.constructor.kType] ?? ''; }
  get isContentIsHtml() { return attributes[this.constructor.kContentIsHtml] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleWorkflowCardActivity._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowCardActivity({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCardActivity] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/activities`
  static getActivitiesFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/activities`;
    
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
