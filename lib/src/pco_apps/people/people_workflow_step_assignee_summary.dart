/// This file was generated on 2021-11-19T12:10:42.667264


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
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStepAssigneeSummary';
  static const String kTypeId = 'workflow_step_assignee_summary';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowstepassigneesummary-workflowstep-assignee_summaries';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleWorkflowStepAssigneeSummary.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflowStepAssigneeSummary Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries;
  static Future<List<PcoPeopleWorkflowStepAssigneeSummary>> getManyFromWorkflowAndStepAndAssigneeSummaryIds(String workflowId,String stepId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflowStepAssigneeSummary> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowStepAssigneeSummary.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowStepAssigneeSummary Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries;
  static Future<PcoPeopleWorkflowStepAssigneeSummary?> getSingleFromWorkflowAndStepAndAssigneeSummaryIds(String workflowId,String stepId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflowStepAssigneeSummary?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStepAssigneeSummary.canInclude;
    var url = '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowStepAssigneeSummary.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
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
    

}
