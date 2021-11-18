/// This file was generated on 2021-11-17T23:59:29.924377


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
  static const String pcoApplication = 'people';
  static const String typeString = 'WorkflowCategory';
  static const String typeId = 'workflow_category';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflow_categories';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoPeopleWorkflowCategory() : super(pcoApplication, typeString);
  PcoPeopleWorkflowCategory.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleWorkflowCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/category;
  static Future<List<PcoPeopleWorkflowCategory>> getManyFromWorkflowAndCategoryIds(String workflowId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
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
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowCategory.fromJson(res.data);
    }
    return retval;
  }




}
