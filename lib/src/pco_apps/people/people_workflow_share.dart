/// This file was generated on 2021-11-18T15:28:02.112238


import '../../pco.dart';

/// This class represents a PCO People WorkflowShare Object
/// 
/// Application: people
/// Id:          workflow_share
/// Type:        WorkflowShare
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A workflow share defines who can access a workflow.
/// 
/// Example:
/// 
/// {"type":"WorkflowShare","id":"1","attributes":{"group":"value","permission":"value","person_id":"primary_key"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"workflow":{"data":{"type":"Workflow","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// 
class PcoPeopleWorkflowShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowShare';
  static const String kTypeId = 'workflow_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowshare-workflow-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/shares';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kGroup = 'group';
  static const kPermission = 'permission';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['group','permission','person_id'];
  @override
  List<String> get updateAllowed => ['group','permission'];


  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  String get group => attributes[kGroup] ?? '';

  /// Possible values: `view`, `manage_cards`, or `manage`
  String get permission => attributes[kPermission] ?? '';
  String get personId => attributes[kPersonId] ?? '';



  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  set group(String s) => attributes[kGroup] = s;

  /// Possible values: `view`, `manage_cards`, or `manage`
  set permission(String s) => attributes[kPermission] = s;
  set personId(String s) => attributes[kPersonId] = s;


  PcoPeopleWorkflowShare() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowShare.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleWorkflowShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares;
  static Future<List<PcoPeopleWorkflowShare>> getManyFromPeopleAndWorkflowShareIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowShare> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_shares';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowShare.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleWorkflowShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares;
  static Future<List<PcoPeopleWorkflowShare>> getManyFromWorkflowAndShareIds(String workflowId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleWorkflowShare> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/shares';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleWorkflowShare.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleWorkflowShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares;
  static Future<PcoPeopleWorkflowShare?> getSingleFromPeopleAndWorkflowShareIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowShare?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/workflow_shares' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowShare.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleWorkflowShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares;
  static Future<PcoPeopleWorkflowShare?> getSingleFromWorkflowAndShareIds(String workflowId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleWorkflowShare?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/workflows/$workflowId/shares' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleWorkflowShare.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
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
