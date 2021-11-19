/// This file was generated on 2021-11-19T12:10:42.658830


import '../../pco.dart';

/// This class represents a PCO People WorkflowCard Object
/// 
/// Application: people
/// Id:          workflow_card
/// Type:        WorkflowCard
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Card
/// 
/// Example:
/// 
/// {"type":"WorkflowCard","id":"1","attributes":{"snooze_until":"2000-01-01T12:00:00Z","overdue":true,"stage":"string","calculated_due_at_in_days_ago":1,"sticky_assignment":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","completed_at":"2000-01-01T12:00:00Z","flagged_for_notification_at":"2000-01-01T12:00:00Z","removed_at":"2000-01-01T12:00:00Z","moved_to_step_at":"2000-01-01T12:00:00Z"},"relationships":{"assignee":{"data":{"type":"Assignee","id":"1"}},"person":{"data":{"type":"Person","id":"1"}},"workflow":{"data":{"type":"Workflow","id":"1"}},"current_step":{"data":{"type":"WorkflowStep","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards
/// 
/// possible includes with parameter ?include=a,b
/// @assignee: include associated assignee 
/// @current_step: include associated current_step 
/// @person: include associated person 
/// @workflow: include associated workflow 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @stage (URLParameter), query on a specific stage, example: ?where[stage]=string
/// possible orderings with parameter ?order=
/// @completed_at (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @flagged_for_notification_at (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
/// @moved_to_step_at (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
/// @removed_at (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
/// @stage (URLParameter), prefix with a hyphen (-stage) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleWorkflowCard extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCard';
  static const String kTypeId = 'workflow_card';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowcard-workflow-cards';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/cards';

  /// possible includes with parameter ?include=a,b
  /// @assignee: include associated assignee 
  /// @current_step: include associated current_step 
  /// @person: include associated person 
  /// @workflow: include associated workflow 
  static List<String> get canInclude => ['assignee','current_step','person','workflow'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @stage (URLParameter), query on a specific stage, example: ?where[stage]=string
  static List<String> get canQuery => ['stage'];

  /// possible orderings with parameter ?order=
  /// @completed_at (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @flagged_for_notification_at (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
  /// @moved_to_step_at (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
  /// @removed_at (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
  /// @stage (URLParameter), prefix with a hyphen (-stage) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['completed_at','created_at','flagged_for_notification_at','moved_to_step_at','removed_at','stage','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kSnoozeUntil = 'snooze_until';
  static const kOverdue = 'overdue';
  static const kStage = 'stage';
  static const kCalculatedDueAtInDaysAgo = 'calculated_due_at_in_days_ago';
  static const kStickyAssignment = 'sticky_assignment';
  static const kCompletedAt = 'completed_at';
  static const kFlaggedForNotificationAt = 'flagged_for_notification_at';
  static const kRemovedAt = 'removed_at';
  static const kMovedToStepAt = 'moved_to_step_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['sticky_assignment','assignee_id','person_id'];
  @override
  List<String> get updateAllowed => ['sticky_assignment','assignee_id','person_id'];

  DateTime get snoozeUntil => DateTime.parse(attributes[kSnoozeUntil] ?? '');
  bool get isOverdue => attributes[kOverdue] == true;
  String get stage => attributes[kStage] ?? '';
  int get calculatedDueAtInDaysAgo => attributes[kCalculatedDueAtInDaysAgo] ?? 0;
  bool get isStickyAssignment => attributes[kStickyAssignment] == true;
  DateTime get completedAt => DateTime.parse(attributes[kCompletedAt] ?? '');
  DateTime get flaggedForNotificationAt => DateTime.parse(attributes[kFlaggedForNotificationAt] ?? '');
  DateTime get removedAt => DateTime.parse(attributes[kRemovedAt] ?? '');
  DateTime get movedToStepAt => DateTime.parse(attributes[kMovedToStepAt] ?? '');


  set isStickyAssignment(bool b) => attributes[kStickyAssignment] = b;


  PcoPeopleWorkflowCard() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowCard.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflowCard Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards;
  static Future<List<PcoPeopleWorkflowCard>> getManyFromPeopleAndWorkflowCardIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowCard> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_cards';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCard.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflowCard Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards;
  static Future<List<PcoPeopleWorkflowCard>> getManyFromWorkflowAndCardIds(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowCard> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/workflows/$workflowId/cards';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCard.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCard Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards;
  static Future<PcoPeopleWorkflowCard?> getSingleFromPeopleAndWorkflowCardIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowCard?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_cards' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCard.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflowCard Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards;
  static Future<PcoPeopleWorkflowCard?> getSingleFromWorkflowAndCardIds(String workflowId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowCard?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '/people/v2/workflows/$workflowId/cards' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCard.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleWorkflowCardActivity objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
Future<List<PcoPeopleWorkflowCardActivity>> getWorkflowCardActivitiesActivities({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCardActivity.canInclude;
  List<PcoPeopleWorkflowCardActivity> retval = [];
  var url = '$apiEndpoint/activities';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCardActivity.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
Future<List<PcoPeoplePerson>> getPersonsAssignee({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/assignee';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowStep objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
Future<List<PcoPeopleWorkflowStep>> getWorkflowStepsCurrentStep({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
  List<PcoPeopleWorkflowStep> retval = [];
  var url = '$apiEndpoint/current_step';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowStep.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCardNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
Future<List<PcoPeopleWorkflowCardNote>> getWorkflowCardNotesNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCardNote.canInclude;
  List<PcoPeopleWorkflowCardNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCardNote.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflow objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
Future<List<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
  List<PcoPeopleWorkflow> retval = [];
  var url = '$apiEndpoint/workflow';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflow.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
