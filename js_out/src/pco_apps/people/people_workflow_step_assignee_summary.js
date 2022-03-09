/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.077532
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People WorkflowStepAssigneeSummary Object
/// 
/// - Application:        people
/// - Id:                 workflow_step_assignee_summary
/// - Type:               WorkflowStepAssigneeSummary
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// 
/// Description:
/// The ready and snoozed count for an assignee & step
/// 
/// Example:
/// ```json
/// {
///   "type": "WorkflowStepAssigneeSummary",
///   "id": "1",
///   "attributes": {
///     "ready_count": 1,
///     "snoozed_count": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "step": {
///       "data": {
///         "type": "Step",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-workflowstepassigneesummary-person`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
/// 
/// All Inbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'WorkflowStepAssigneeSummary';
  static kTypeId = 'workflow_step_assignee_summary';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'workflowstepassigneesummary-workflowstep-assignee_summaries';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleWorkflowStepAssigneeSummary.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleWorkflowStepAssigneeSummary.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleWorkflowStepAssigneeSummary.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kReadyCount() { return 'ready_count' }
  static get kSnoozedCount() { return 'snoozed_count' }


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

  get readyCount() { return attributes[this.constructor.kReadyCount] ?? 0; }
  get snoozedCount() { return attributes[this.constructor.kSnoozedCount] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleWorkflowStepAssigneeSummary._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleWorkflowStepAssigneeSummary({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/${workflowId}/steps/${stepId}/assignee_summaries`
  static getAssigneeSummariesFromWorkflowAndStep(workflowId, stepId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/workflows/${workflowId}/steps/${stepId}/assignee_summaries`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person`
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
