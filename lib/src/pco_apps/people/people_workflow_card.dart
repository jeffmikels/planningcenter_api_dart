/// This file was generated on 2021-11-18T13:57:10.035766


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
class PcoPeopleWorkflowCard extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'WorkflowCard';
  static const String typeId = 'workflow_card';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'workflowcard-workflow-cards';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/cards';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoPeopleWorkflowCard() : super(pcoApplication, typeString);
  PcoPeopleWorkflowCard.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleWorkflowCard Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards;
  static Future<List<PcoPeopleWorkflowCard>> getManyFromPeopleAndWorkflowCardIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCard> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_cards';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCard.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflowCard Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards;
  static Future<List<PcoPeopleWorkflowCard>> getManyFromWorkflowAndCardIds(String workflowId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCard> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/cards';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCard.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCard Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards;
  static Future<PcoPeopleWorkflowCard?> getSingleFromPeopleAndWorkflowCardIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowCard?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_cards' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCard.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflowCard Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards;
  static Future<PcoPeopleWorkflowCard?> getSingleFromWorkflowAndCardIds(String workflowId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowCard?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/cards' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCard.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleWorkflowCardActivity objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
Future<List<PcoPeopleWorkflowCardActivity>> getWorkflowCardActivitiesActivities({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowCardActivity> retval = [];
  var url = '$apiEndpoint/activities';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCardActivity.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
Future<List<PcoPeoplePerson>> getPersonsAssignee({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/assignee';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowStep objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
Future<List<PcoPeopleWorkflowStep>> getWorkflowStepsCurrentStep({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowStep> retval = [];
  var url = '$apiEndpoint/current_step';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowStep.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCardNote objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
Future<List<PcoPeopleWorkflowCardNote>> getWorkflowCardNotesNotes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowCardNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCardNote.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflow objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
Future<List<PcoPeopleWorkflow>> getWorkflows({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflow> retval = [];
  var url = '$apiEndpoint/workflow';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflow.fromJson(itemData));
    }
  }
  return retval;
}
    

}
