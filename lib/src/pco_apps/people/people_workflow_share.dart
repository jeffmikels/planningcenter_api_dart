/// This file was generated on 2021-11-25T00:07:20.643305


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
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @permission (URLParameter), query on a specific permission, example: ?where[permission]=value
/// possible orderings with parameter ?order=

///
class PcoPeopleWorkflowShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowShare';
  static const String kTypeId = 'workflow_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowshare-workflow-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/shares';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @permission (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery => ['permission'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleWorkflowShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleWorkflowShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares;
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getManyFromPeopleAndWorkflowShare(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleWorkflowShare Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares;
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getManyFromWorkflowAndShare(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/workflows/$workflowId/shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleWorkflowShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares;
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getSingleFromPeopleAndWorkflowShare(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleWorkflowShare.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleWorkflowShare Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/workflows/1/shares;
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getSingleFromWorkflowAndShare(String workflowId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/workflows/$workflowId/shares' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleWorkflowShare.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
Future<PcoCollection<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    


}
