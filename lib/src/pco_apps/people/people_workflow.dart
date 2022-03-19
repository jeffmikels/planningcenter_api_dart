/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:05.380923
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People Workflow Object
/// 
/// - Application:        people
/// - Id:                 workflow
/// - Type:               Workflow
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows
/// 
/// ## Description
/// A Workflow
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `myReadyCardCount` (ro) -> PCO: `my_ready_card_count`
/// - `totalReadyCardCount` (ro) -> PCO: `total_ready_card_count`
/// - `completedCardCount` (ro) -> PCO: `completed_card_count`
/// - `totalCardsCount` (ro) -> PCO: `total_cards_count`
/// - `totalReadyAndSnoozedCardCount` (ro) -> PCO: `total_ready_and_snoozed_card_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `campusId` (rw) -> PCO: `campus_id`
/// - `workflowCategoryId` (rw) -> PCO: `workflow_category_id`
/// - `myOverdueCardCount` (ro) -> PCO: `my_overdue_card_count`
/// - `myDueSoonCardCount` (ro) -> PCO: `my_due_soon_card_count`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `category`: include associated category 
/// - `shares`: include associated shares 
/// - `steps`: include associated steps 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// - `workflowcategory-workflow-category`: https://api.planningcenteronline.com/people/v2/workflows/1/category
/// - `person-workflow-shared_people`: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
/// - `workflowstep-workflow-steps`: https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// 
/// Inbound Edges:
/// - `workflow-organization-workflows`: https://api.planningcenteronline.com/people/v2/workflows
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Workflow",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "my_ready_card_count": 1,
///     "total_ready_card_count": 1,
///     "completed_card_count": 1,
///     "total_cards_count": 1,
///     "total_ready_and_snoozed_card_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "campus_id": "primary_key",
///     "workflow_category_id": "primary_key"
///   },
///   "relationships": {
///     "workflow_category": {
///       "data": {
///         "type": "WorkflowCategory",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflow extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Workflow';
  static const String kTypeId = 'workflow';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/workflows';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category 
  /// - `shares`: include associated shares 
  /// - `steps`: include associated steps 
  static List<String> get canInclude => ['category','shares','steps'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
  static List<String> get canQuery => ['campus_id','created_at','deleted_at','id','name','updated_at','workflow_category_id'];

  /// possible orderings with parameter ?order=
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
  static List<String> get canOrderBy => ['campus_id','created_at','deleted_at','name','updated_at','workflow_category_id'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kMyReadyCardCount = 'my_ready_card_count';
  static const kTotalReadyCardCount = 'total_ready_card_count';
  static const kCompletedCardCount = 'completed_card_count';
  static const kTotalCardsCount = 'total_cards_count';
  static const kTotalReadyAndSnoozedCardCount = 'total_ready_and_snoozed_card_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDeletedAt = 'deleted_at';
  static const kCampusId = 'campus_id';
  static const kWorkflowCategoryId = 'workflow_category_id';
  static const kMyOverdueCardCount = 'my_overdue_card_count';
  static const kMyDueSoonCardCount = 'my_due_soon_card_count';


  // getters and setters
  @override
  List<String> get createAllowed => ['name', 'campus_id', 'workflow_category_id'];

  @override
  List<String> get updateAllowed => ['name', 'campus_id', 'workflow_category_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => attributes[kName] ?? '';
  int get myReadyCardCount => attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => attributes[kTotalReadyCardCount] ?? 0;
  int get completedCardCount => attributes[kCompletedCardCount] ?? 0;
  int get totalCardsCount => attributes[kTotalCardsCount] ?? 0;
  int get totalReadyAndSnoozedCardCount => attributes[kTotalReadyAndSnoozedCardCount] ?? 0;
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get campusId => attributes[kCampusId] ?? '';
  String get workflowCategoryId => attributes[kWorkflowCategoryId] ?? '';
  int get myOverdueCardCount => attributes[kMyOverdueCardCount] ?? 0;
  int get myDueSoonCardCount => attributes[kMyDueSoonCardCount] ?? 0;  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;
  
  /// pass `null` to remove key from attributes
  set campusId(String? x) => (x == null) ? attributes.remove(kCampusId) : attributes[kCampusId] = x;
  
  /// pass `null` to remove key from attributes
  set workflowCategoryId(String? x) => (x == null) ? attributes.remove(kWorkflowCategoryId) : attributes[kWorkflowCategoryId] = x;  

  // Class Constructors
  PcoPeopleWorkflow.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleWorkflow.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflow] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflow({ String? name, String? campusId, String? workflowCategoryId }) {
    var obj = PcoPeopleWorkflow.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/workflows';
    if (name != null) obj.name = name;
    if (campusId != null) obj.campusId = campusId;
    if (workflowCategoryId != null) obj.workflowCategoryId = workflowCategoryId;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `/people/v2/workflows`
  /// 
  /// Available Query Filters:
  /// - `only_deleted`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  static Future<PcoCollection<PcoPeopleWorkflow>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/workflows';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow`
  static Future<PcoCollection<PcoPeopleWorkflow>> getFromPeopleAndWorkflowCard(String peopleId,String workflowCardId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflow.canInclude;
    var url = '/people/v2/people/$peopleId/home_workflow_cards/$workflowCardId/workflow';
    
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/cards`
  Future<PcoCollection<PcoPeopleWorkflowCard>> getCards({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCard.canInclude;
    var url = '$apiEndpoint/cards';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/category`
  Future<PcoCollection<PcoPeopleWorkflowCategory>> getCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowCategory.canInclude;
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCategory>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shared_people`
  Future<PcoCollection<PcoPeoplePerson>> getSharedPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/shared_people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shares`
  Future<PcoCollection<PcoPeopleWorkflowShare>> getShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowShare.canInclude;
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getSteps({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleWorkflowStep.canInclude;
    var url = '$apiEndpoint/steps';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
