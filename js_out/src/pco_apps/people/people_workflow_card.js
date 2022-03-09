/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.059723
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowCard Object
/// 
/// - Application:        people
/// - Id:                 workflow_card
/// - Type:               WorkflowCard
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards
/// 
/// Description:
/// A Card
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowCard",
///   "id": "1",
///   "attributes": {
///     "snooze_until": "2000-01-01T12:00:00Z",
///     "overdue": true,
///     "stage": "string",
///     "calculated_due_at_in_days_ago": 1,
///     "sticky_assignment": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "completed_at": "2000-01-01T12:00:00Z",
///     "flagged_for_notification_at": "2000-01-01T12:00:00Z",
///     "removed_at": "2000-01-01T12:00:00Z",
///     "moved_to_step_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "assignee": {
///       "data": {
///         "type": "Assignee",
///         "id": "1"
///       }
///     },
///     "person": {
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
///     },
///     "current_step": {
///       "data": {
///         "type": "WorkflowStep",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - assignee: include associated assignee 
/// - current_step: include associated current_step 
/// - person: include associated person 
/// - workflow: include associated workflow 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
/// 
/// Possible orderings with parameter ?order=
/// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
/// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
/// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
/// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// - `person-workflowcard-assignee`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// - `person-workflowcard-person`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
/// 
/// All Inbound Edges:
/// - `workflowcard-person-workflow_cards`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// 
/// All Actions:
/// - `go_back`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back
/// - `promote`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote
/// - `remove`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove
/// - `restore`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore
/// - `send_email`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email
/// - `skip_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step
/// - `snooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze
/// - `unsnooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze
///
export class PcoPeopleWorkflowCard extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowCard';
  static kTypeId = 'workflow_card';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowcard-workflow-cards';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/cards';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards';

  /// possible includes with parameter ?include=a,b
  /// - `assignee`: include associated assignee 
  /// - `current_step`: include associated current_step 
  /// - `person`: include associated person 
  /// - `workflow`: include associated workflow 
  static get canInclude() { return ['assignee','current_step','person','workflow'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
  static get canQuery() { return ['stage'] }

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
  /// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
  /// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
  /// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['completed_at','created_at','flagged_for_notification_at','moved_to_step_at','removed_at','stage','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowCard.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowCard.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowCard.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSnoozeUntil() { return 'snooze_until' }
  static get kOverdue() { return 'overdue' }
  static get kStage() { return 'stage' }
  static get kCalculatedDueAtInDaysAgo() { return 'calculated_due_at_in_days_ago' }
  static get kStickyAssignment() { return 'sticky_assignment' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCompletedAt() { return 'completed_at' }
  static get kFlaggedForNotificationAt() { return 'flagged_for_notification_at' }
  static get kRemovedAt() { return 'removed_at' }
  static get kMovedToStepAt() { return 'moved_to_step_at' }
  static get kAssigneeId() { return 'assignee_id' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['sticky_assignment','assignee_id','person_id']; }

  // @override
  get updateAllowed() { return ['sticky_assignment','assignee_id','person_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get snoozeUntil() { return Date.parse(attributes[this.constructor.kSnoozeUntil] ?? 0); }
  get isOverdue() { return attributes[this.constructor.kOverdue] == true; }
  get stage() { return attributes[this.constructor.kStage] ?? ''; }
  get calculatedDueAtInDaysAgo() { return attributes[this.constructor.kCalculatedDueAtInDaysAgo] ?? 0; }
  get isStickyAssignment() { return attributes[this.constructor.kStickyAssignment] == true; }
  get completedAt() { return Date.parse(attributes[this.constructor.kCompletedAt] ?? 0); }
  get flaggedForNotificationAt() { return Date.parse(attributes[this.constructor.kFlaggedForNotificationAt] ?? 0); }
  get removedAt() { return Date.parse(attributes[this.constructor.kRemovedAt] ?? 0); }
  get movedToStepAt() { return Date.parse(attributes[this.constructor.kMovedToStepAt] ?? 0); }
  

  // setters for object attributes

  set isStickyAssignment(b) { attributes[this.constructor.kStickyAssignment] = b; }
  

  // additional setters and getters for assignable values

  get assigneeId() { return attributes[this.constructor.kAssigneeId] ?? ''; }
  set assigneeId(s) {attributes[this.constructor.kAssigneeId] = s;}
  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  



  // Class Constructors
  // PcoPeopleWorkflowCard._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowCard({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleWorkflowCard] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/${peopleId}/home_workflow_cards`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoPeopleWorkflowCard.kPcoApplication, PcoPeopleWorkflowCard.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people/${peopleId}/home_workflow_cards`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/workflow_cards`
  /// 
  /// Available Query Filters:
  /// - `assigned`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/workflow_cards`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/cards`
  static getCardsFromWorkflow(workflowId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/cards`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCardActivity] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getActivities({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
    let url = `${apiEndpoint}/activities`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAssignee({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/assignee`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCurrentStep({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    let url = `${apiEndpoint}/current_step`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCardNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowCardNote.canInclude;
    let url = `${apiEndpoint}/notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWorkflow({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    let url = `${apiEndpoint}/workflow`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `go_back`
  /// 
  /// Move a Workflow Card back to the previous step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  goBack(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/go_back`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `promote`
  /// 
  /// Move a Workflow Card to the next step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  promote(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/promote`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `remove`
  /// 
  /// Removes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  remove(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/remove`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `restore`
  /// 
  /// Restore a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  restore(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/restore`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `send_email`
  /// 
  /// Sends an email to the subject of the card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email`
  /// 
  /// Details:
  /// Pass in a subject and note.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  sendEmail(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/send_email`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `skip_step`
  /// 
  /// Move a Workflow Card to the next step without completing the current step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  skipStep(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/skip_step`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `snooze`
  /// 
  /// Snoozes a card for a specific duration
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze`
  /// 
  /// Details:
  /// Pass in a duration in days.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  snooze(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/snooze`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `unsnooze`
  /// 
  /// Unsnoozes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  unsnooze(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/unsnooze`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
