/// This file was generated on 2021-11-18T13:57:10.034780


import '../../pco.dart';

/// This class represents a PCO People Workflow Object
/// 
/// Application: people
/// Id:          workflow
/// Type:        Workflow
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Workflow
/// 
/// Example:
/// 
/// {"type":"Workflow","id":"1","attributes":{"name":"string","my_ready_card_count":1,"total_ready_card_count":1,"completed_card_count":1,"total_cards_count":1,"total_ready_and_snoozed_card_count":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","campus_id":"primary_key","workflow_category_id":"primary_key"},"relationships":{"workflow_category":{"data":{"type":"WorkflowCategory","id":"1"}},"campus":{"data":{"type":"Campus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/workflows
/// 
class PcoPeopleWorkflow extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Workflow';
  static const String typeId = 'workflow';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'workflow-organization-workflows';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kMyReadyCardCount = 'my_ready_card_count';
  static const kTotalReadyCardCount = 'total_ready_card_count';
  static const kCompletedCardCount = 'completed_card_count';
  static const kTotalCardsCount = 'total_cards_count';
  static const kTotalReadyAndSnoozedCardCount = 'total_ready_and_snoozed_card_count';
  static const kDeletedAt = 'deleted_at';
  static const kCampusId = 'campus_id';
  static const kWorkflowCategoryId = 'workflow_category_id';
  static const kMyOverdueCardCount = 'my_overdue_card_count';
  static const kMyDueSoonCardCount = 'my_due_soon_card_count';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','campus_id','workflow_category_id'];
  @override
  List<String> get updateAllowed => ['name','campus_id','workflow_category_id'];

  String get name => attributes[kName] ?? '';
  int get myReadyCardCount => attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => attributes[kTotalReadyCardCount] ?? 0;
  int get completedCardCount => attributes[kCompletedCardCount] ?? 0;
  int get totalCardsCount => attributes[kTotalCardsCount] ?? 0;
  int get totalReadyAndSnoozedCardCount => attributes[kTotalReadyAndSnoozedCardCount] ?? 0;
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get campusId => attributes[kCampusId] ?? '';
  String get workflowCategoryId => attributes[kWorkflowCategoryId] ?? '';

  /// Only available when requested with the `?fields` param
  int get myOverdueCardCount => attributes[kMyOverdueCardCount] ?? 0;

  /// Only available when requested with the `?fields` param
  int get myDueSoonCardCount => attributes[kMyDueSoonCardCount] ?? 0;


  set name(String s) => attributes[kName] = s;
  set campusId(String s) => attributes[kCampusId] = s;
  set workflowCategoryId(String s) => attributes[kWorkflowCategoryId] = s;


  PcoPeopleWorkflow() : super(pcoApplication, typeString);
  PcoPeopleWorkflow.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleWorkflow Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows;
  static Future<List<PcoPeopleWorkflow>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflow> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflow.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflow Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow;
  static Future<List<PcoPeopleWorkflow>> getManyFromPeopleAndWorkflowCardAndWorkflowIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflow> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflow.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflow Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows;
  static Future<PcoPeopleWorkflow?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflow?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflow.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflow Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow;
  static Future<PcoPeopleWorkflow?> getSingleFromPeopleAndWorkflowCardAndWorkflowIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflow?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflow.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleWorkflowCard objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards
Future<List<PcoPeopleWorkflowCard>> getWorkflowCardsCards({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowCard> retval = [];
  var url = '$apiEndpoint/cards';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCard.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/category
Future<List<PcoPeopleWorkflowCategory>> getWorkflowCategoriesCategory({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowCategory> retval = [];
  var url = '$apiEndpoint/category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCategory.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
Future<List<PcoPeoplePerson>> getPersonsSharedPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/shared_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares
Future<List<PcoPeopleWorkflowShare>> getWorkflowSharesShares({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowShare> retval = [];
  var url = '$apiEndpoint/shares';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowShare.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowStep objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps
Future<List<PcoPeopleWorkflowStep>> getWorkflowStepsSteps({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleWorkflowStep> retval = [];
  var url = '$apiEndpoint/steps';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowStep.fromJson(itemData));
    }
  }
  return retval;
}
    

}
