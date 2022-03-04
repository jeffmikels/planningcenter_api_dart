/// This file was generated on 2022-03-04T15:29:14.564787


import '../../pco.dart';

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
class PcoPeopleWorkflowStep extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStep';
  static const String kTypeId = 'workflow_step';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowstep-workflow-steps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps';

  /// possible includes with parameter ?include=a,b
  /// - `default_assignee`: include associated default_assignee 
  static List<String> get canInclude => ['default_assignee'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','name','sequence','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kSequence = 'sequence';
  static const kDescription = 'description';
  static const kAutoSnoozeDays = 'auto_snooze_days';
  static const kAutoSnoozeValue = 'auto_snooze_value';
  static const kAutoSnoozeInterval = 'auto_snooze_interval';
  static const kExpectedResponseTimeInDays = 'expected_response_time_in_days';
  static const kMyReadyCardCount = 'my_ready_card_count';
  static const kTotalReadyCardCount = 'total_ready_card_count';
  static const kDefaultAssigneeId = 'default_assignee_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['sequence','name'];

  @override
  List<String> get updateAllowed => ['sequence','name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get description => attributes[kDescription] ?? '';
  int get autoSnoozeDays => attributes[kAutoSnoozeDays] ?? 0;
  int get autoSnoozeValue => attributes[kAutoSnoozeValue] ?? 0;
  String get autoSnoozeInterval => attributes[kAutoSnoozeInterval] ?? '';
  int get expectedResponseTimeInDays => attributes[kExpectedResponseTimeInDays] ?? 0;
  int get myReadyCardCount => attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => attributes[kTotalReadyCardCount] ?? 0;
  String get defaultAssigneeId => attributes[kDefaultAssigneeId] ?? '';
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  set sequence(int n) => attributes[kSequence] = n;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleWorkflowStep() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowStep.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/current_step`
  static Future<PcoCollection<PcoPeopleWorkflowStep>> getCurrentStepFromPeopleAndWorkflowCard(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/current_step';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps`
  static Future<PcoCollection<PcoPeopleWorkflowStep>> getStepsFromWorkflow(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries`
  Future<PcoCollection<PcoPeopleWorkflowStepAssigneeSummary>> getAssigneeSummaries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    var url = '$apiEndpoint/assignee_summaries';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee`
  Future<PcoCollection<PcoPeoplePerson>> getDefaultAssignee({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/default_assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
