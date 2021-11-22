/// This file was generated on 2021-11-22T16:57:41.650596


import '../../pco.dart';

/// This class represents a PCO People WorkflowStep Object
/// 
/// Application: people
/// Id:          workflow_step
/// Type:        WorkflowStep
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Step
/// 
/// Example:
/// 
/// {"type":"WorkflowStep","id":"1","attributes":{"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","sequence":1,"description":"string","auto_snooze_days":1,"auto_snooze_value":1,"auto_snooze_interval":"value","expected_response_time_in_days":1,"my_ready_card_count":1,"total_ready_card_count":1,"default_assignee_id":"primary_key"},"relationships":{"default_assignee":{"data":{"type":"Person","id":"1"}},"workflow":{"data":{"type":"Workflow","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// 
/// possible includes with parameter ?include=a,b
/// @default_assignee: include associated default_assignee 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleWorkflowStep extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStep';
  static const String kTypeId = 'workflow_step';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowstep-workflow-steps';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps';

  /// possible includes with parameter ?include=a,b
  /// @default_assignee: include associated default_assignee 
  static List<String> get canInclude => ['default_assignee'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','name','sequence','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
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

  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get description => attributes[kDescription] ?? '';
  int get autoSnoozeDays => attributes[kAutoSnoozeDays] ?? 0;
  int get autoSnoozeValue => attributes[kAutoSnoozeValue] ?? 0;

  /// Possible values: `day`, `week`, or `month`
  String get autoSnoozeInterval => attributes[kAutoSnoozeInterval] ?? '';
  int get expectedResponseTimeInDays => attributes[kExpectedResponseTimeInDays] ?? 0;
  int get myReadyCardCount => attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => attributes[kTotalReadyCardCount] ?? 0;
  String get defaultAssigneeId => attributes[kDefaultAssigneeId] ?? '';


  set name(String s) => attributes[kName] = s;
  set sequence(int n) => attributes[kSequence] = n;


  PcoPeopleWorkflowStep() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowStep.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflowStep Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step;
  static Future<List<PcoPeopleWorkflowStep>> getManyFromPeopleAndWorkflowCardAndCurrentStepIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowStep> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/current_step';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowStep.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflowStep Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps;
  static Future<List<PcoPeopleWorkflowStep>> getManyFromWorkflowAndStepIds(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowStep> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowStep.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowStep Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step;
  static Future<PcoPeopleWorkflowStep?> getSingleFromPeopleAndWorkflowCardAndCurrentStepIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowStep?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/current_step' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowStep.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflowStep Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps;
  static Future<PcoPeopleWorkflowStep?> getSingleFromWorkflowAndStepIds(String workflowId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowStep?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowStep.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleWorkflowStepAssigneeSummary objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
Future<List<PcoPeopleWorkflowStepAssigneeSummary>> getWorkflowStepAssigneeSummariesAssigneeSummaries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
  List<PcoPeopleWorkflowStepAssigneeSummary> retval = [];
  var url = '$apiEndpoint/assignee_summaries';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowStepAssigneeSummary.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee
Future<List<PcoPeoplePerson>> getPersonsDefaultAssignee({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/default_assignee';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
