/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.076608
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowStep Object
/// 
/// - Application:        people
/// - Id:                 workflow_step
/// - Type:               WorkflowStep
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// 
/// Description:
/// A Step
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowStep",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "sequence": 1,
///     "description": "string",
///     "auto_snooze_days": 1,
///     "auto_snooze_value": 1,
///     "auto_snooze_interval": "value",
///     "expected_response_time_in_days": 1,
///     "my_ready_card_count": 1,
///     "total_ready_card_count": 1,
///     "default_assignee_id": "primary_key"
///   },
///   "relationships": {
///     "default_assignee": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "workflow": {
///       "data": {
///         "type": "Workflow",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - default_assignee: include associated default_assignee 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// - `person-workflowstep-default_assignee`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee
/// 
/// All Inbound Edges:
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
/// - `workflowstep-workflow-steps`: https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflowStep extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowStep';
  static kTypeId = 'workflow_step';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowstep-workflow-steps';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps';

  /// possible includes with parameter ?include=a,b
  /// - `default_assignee`: include associated default_assignee 
  static get canInclude() { return ['default_assignee'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','name','sequence','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowStep.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowStep.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowStep.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kSequence() { return 'sequence' }
  static get kDescription() { return 'description' }
  static get kAutoSnoozeDays() { return 'auto_snooze_days' }
  static get kAutoSnoozeValue() { return 'auto_snooze_value' }
  static get kAutoSnoozeInterval() { return 'auto_snooze_interval' }
  static get kExpectedResponseTimeInDays() { return 'expected_response_time_in_days' }
  static get kMyReadyCardCount() { return 'my_ready_card_count' }
  static get kTotalReadyCardCount() { return 'total_ready_card_count' }
  static get kDefaultAssigneeId() { return 'default_assignee_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['sequence','name']; }

  // @override
  get updateAllowed() { return ['sequence','name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get autoSnoozeDays() { return attributes[this.constructor.kAutoSnoozeDays] ?? 0; }
  get autoSnoozeValue() { return attributes[this.constructor.kAutoSnoozeValue] ?? 0; }
  get autoSnoozeInterval() { return attributes[this.constructor.kAutoSnoozeInterval] ?? ''; }
  get expectedResponseTimeInDays() { return attributes[this.constructor.kExpectedResponseTimeInDays] ?? 0; }
  get myReadyCardCount() { return attributes[this.constructor.kMyReadyCardCount] ?? 0; }
  get totalReadyCardCount() { return attributes[this.constructor.kTotalReadyCardCount] ?? 0; }
  get defaultAssigneeId() { return attributes[this.constructor.kDefaultAssigneeId] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleWorkflowStep._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowStep({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleWorkflowStep] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows/${workflowId}/steps`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(workflowId) {
    super(PcoPeopleWorkflowStep.kPcoApplication, PcoPeopleWorkflowStep.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/workflows/${workflowId}/steps`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/current_step`
  static getCurrentStepFromPeopleAndWorkflowCard(peopleId, workflowCardId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/home_workflow_cards/${workflowCardId}/current_step`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/steps`
  static getStepsFromWorkflow(workflowId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/steps`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAssigneeSummaries({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    let url = `${apiEndpoint}/assignee_summaries`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDefaultAssignee({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/default_assignee`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
