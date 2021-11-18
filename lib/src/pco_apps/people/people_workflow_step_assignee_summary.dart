/// This file was generated on 2021-11-18T15:28:02.113843


import '../../pco.dart';

/// This class represents a PCO People WorkflowStepAssigneeSummary Object
/// 
/// Application: people
/// Id:          workflow_step_assignee_summary
/// Type:        WorkflowStepAssigneeSummary
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// The ready and snoozed count for an assignee & step
/// 
/// Example:
/// 
/// {"type":"WorkflowStepAssigneeSummary","id":"1","attributes":{"ready_count":1,"snoozed_count":1},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"step":{"data":{"type":"Step","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// 
class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStepAssigneeSummary';
  static const String kTypeId = 'workflow_step_assignee_summary';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowstepassigneesummary-workflowstep-assignee_summaries';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kReadyCount = 'ready_count';
  static const kSnoozedCount = 'snoozed_count';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get readyCount => attributes[kReadyCount] ?? 0;
  int get snoozedCount => attributes[kSnoozedCount] ?? 0;




  PcoPeopleWorkflowStepAssigneeSummary() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowStepAssigneeSummary.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleWorkflowStepAssigneeSummary Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries;
  static Future<List<PcoPeopleWorkflowStepAssigneeSummary>> getManyFromWorkflowAndStepAndAssigneeSummaryIds(String workflowId,String stepId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowStepAssigneeSummary> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowStepAssigneeSummary.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowStepAssigneeSummary Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries;
  static Future<PcoPeopleWorkflowStepAssigneeSummary?> getSingleFromWorkflowAndStepAndAssigneeSummaryIds(String workflowId,String stepId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowStepAssigneeSummary?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowStepAssigneeSummary.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
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
    

}
