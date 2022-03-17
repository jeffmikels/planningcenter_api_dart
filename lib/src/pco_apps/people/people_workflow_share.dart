/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:10.025616
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People WorkflowShare Object
/// 
/// - Application:        people
/// - Id:                 workflow_share
/// - Type:               WorkflowShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// 
/// ## Description
/// A workflow share defines who can access a workflow.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `group` (rw) -> PCO: `group`
/// - `permission` (rw) -> PCO: `permission`
/// - `personId` (rw) -> PCO: `person_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `person`: include associated person 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `person-workflowshare-person`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person
/// 
/// Inbound Edges:
/// - `workflowshare-person-workflow_shares`: https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowShare",
///   "id": "1",
///   "attributes": {
///     "group": "value",
///     "permission": "value",
///     "person_id": "primary_key"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "workflow": {
///       "data": {
///         "type": "Workflow",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowShare';
  static const String kTypeId = 'workflow_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'workflowshare-workflow-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows/1/shares';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/workflow_shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery => ['permission'];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kGroup = 'group';
  static const kPermission = 'permission';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['group','permission','person_id'];

  @override
  List<String> get updateAllowed => ['group','permission'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get group => attributes[kGroup] ?? '';
  String get permission => attributes[kPermission] ?? '';
  String get personId => attributes[kPersonId] ?? '';
  

  // setters for object attributes

  
  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  set group(String s) => attributes[kGroup] = s;
  
  /// Possible values: `view`, `manage_cards`, or `manage`
  set permission(String s) => attributes[kPermission] = s;
  set personId(String s) => attributes[kPersonId] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleWorkflowShare._() : super(kPcoApplication, kTypeString);
  PcoPeopleWorkflowShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleWorkflowShare] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/workflow_shares`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowShare(String peopleId) {
    return PcoPeopleWorkflowShare._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/people/$peopleId/workflow_shares';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/workflow_shares`
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/people/$peopleId/workflow_shares';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/shares`
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getSharesFromWorkflow(String workflowId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '/people/v2/workflows/$workflowId/shares';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
