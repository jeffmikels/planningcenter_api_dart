/// This file was generated on 2021-11-22T16:57:41.644949


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
/// possible includes with parameter ?include=a,b
/// @category: include associated category 
/// @shares: include associated shares 
/// @steps: include associated steps 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @campus_id (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @deleted_at (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// @workflow_category_id (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
/// possible orderings with parameter ?order=
/// @campus_id (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// @workflow_category_id (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
///
class PcoPeopleWorkflow extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Workflow';
  static const String kTypeId = 'workflow';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflow-organization-workflows';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';

  /// possible includes with parameter ?include=a,b
  /// @category: include associated category 
  /// @shares: include associated shares 
  /// @steps: include associated steps 
  static List<String> get canInclude => ['category','shares','steps'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @campus_id (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @deleted_at (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// @workflow_category_id (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
  static List<String> get canQuery => ['campus_id','created_at','deleted_at','id','name','updated_at','workflow_category_id'];

  /// possible orderings with parameter ?order=
  /// @campus_id (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// @workflow_category_id (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
  static List<String> get canOrderBy => ['campus_id','created_at','deleted_at','name','updated_at','workflow_category_id'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleWorkflow() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflow.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflow Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows;
  static Future<List<PcoPeopleWorkflow>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflow> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/workflows';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflow.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflow Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow;
  static Future<List<PcoPeopleWorkflow>> getManyFromPeopleAndWorkflowCardAndWorkflowIds(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleWorkflow> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflow.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflow Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows;
  static Future<PcoPeopleWorkflow?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflow?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/workflows' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflow.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflow Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow;
  static Future<PcoPeopleWorkflow?> getSingleFromPeopleAndWorkflowCardAndWorkflowIds(String peopleId,String workflowCardId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleWorkflow?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflow.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleWorkflowCard objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/cards
Future<List<PcoPeopleWorkflowCard>> getWorkflowCardsCards({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
  List<PcoPeopleWorkflowCard> retval = [];
  var url = '$apiEndpoint/cards';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCard.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/category
Future<List<PcoPeopleWorkflowCategory>> getWorkflowCategoriesCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowCategory.canInclude;
  List<PcoPeopleWorkflowCategory> retval = [];
  var url = '$apiEndpoint/category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
Future<List<PcoPeoplePerson>> getPersonsSharedPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/shared_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares
Future<List<PcoPeopleWorkflowShare>> getWorkflowSharesShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
  List<PcoPeopleWorkflowShare> retval = [];
  var url = '$apiEndpoint/shares';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowShare.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleWorkflowStep objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/steps
Future<List<PcoPeopleWorkflowStep>> getWorkflowStepsSteps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
  List<PcoPeopleWorkflowStep> retval = [];
  var url = '$apiEndpoint/steps';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleWorkflowStep.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
