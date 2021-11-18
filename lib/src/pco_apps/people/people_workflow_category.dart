/// This file was generated on 2021-11-18T15:28:02.111614


import '../../pco.dart';

/// This class represents a PCO People WorkflowCategory Object
/// 
/// Application: people
/// Id:          workflow_category
/// Type:        WorkflowCategory
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Workflow Category
/// 
/// Example:
/// 
/// {"type":"WorkflowCategory","id":"1","attributes":{"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/workflow_categories
/// 
class PcoPeopleWorkflowCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCategory';
  static const String kTypeId = 'workflow_category';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflow_categories';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoPeopleWorkflowCategory() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowCategory.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleWorkflowCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/category;
  static Future<List<PcoPeopleWorkflowCategory>> getManyFromWorkflowAndCategoryIds(String workflowId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowCategory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/category;
  static Future<PcoPeopleWorkflowCategory?> getSingleFromWorkflowAndCategoryIds(String workflowId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCategory.fromJson(res.data);
    }
    return retval;
  }




}
