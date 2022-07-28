/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.758225
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflow()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflow.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleWorkflow.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category
  /// - `shares`: include associated shares
  /// - `steps`: include associated steps
  static List<String> get canInclude => ['category', 'shares', 'steps'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
  static List<String> get canQuery => [
        'campus_id',
        'created_at',
        'deleted_at',
        'id',
        'name',
        'updated_at',
        'workflow_category_id'
      ];

  /// possible orderings with parameter ?order=
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
  static List<String> get canOrderBy => [
        'campus_id',
        'created_at',
        'deleted_at',
        'name',
        'updated_at',
        'workflow_category_id'
      ];

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
  static const kTotalReadyAndSnoozedCardCount =
      'total_ready_and_snoozed_card_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDeletedAt = 'deleted_at';
  static const kCampusId = 'campus_id';
  static const kWorkflowCategoryId = 'workflow_category_id';
  static const kMyOverdueCardCount = 'my_overdue_card_count';
  static const kMyDueSoonCardCount = 'my_due_soon_card_count';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['name', 'campus_id', 'workflow_category_id'];

  @override
  List<String> get updateAllowed =>
      ['name', 'campus_id', 'workflow_category_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get myReadyCardCount => _attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => _attributes[kTotalReadyCardCount] ?? 0;
  int get completedCardCount => _attributes[kCompletedCardCount] ?? 0;
  int get totalCardsCount => _attributes[kTotalCardsCount] ?? 0;
  int get totalReadyAndSnoozedCardCount =>
      _attributes[kTotalReadyAndSnoozedCardCount] ?? 0;
  DateTime get deletedAt => DateTime.parse(_attributes[kDeletedAt] ?? '');
  String get campusId => _attributes[kCampusId] ?? '';
  String get workflowCategoryId => _attributes[kWorkflowCategoryId] ?? '';
  int get myOverdueCardCount => _attributes[kMyOverdueCardCount] ?? 0;
  int get myDueSoonCardCount => _attributes[kMyDueSoonCardCount] ?? 0;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set campusId(String? x) =>
      (x == null) ? _attributes.remove(kCampusId) : _attributes[kCampusId] = x;

  /// pass `null` to remove key from attributes
  set workflowCategoryId(String? x) => (x == null)
      ? _attributes.remove(kWorkflowCategoryId)
      : _attributes[kWorkflowCategoryId] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedCategory<T extends PcoResource>() =>
      (relationships['category'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedShares<T extends PcoResource>() =>
      (relationships['shares'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedSteps<T extends PcoResource>() =>
      (relationships['steps'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleWorkflow.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflow.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflow] object using this endpoint: `https://api.planningcenteronline.com/people/v2/workflows`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `name`, `campusId`, `workflowCategoryId`
  /// - FIELDS USED WHEN UPDATING: `name`, `campusId`, `workflowCategoryId`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleWorkflow(
      {String? id,
      String? name,
      int? myReadyCardCount,
      int? totalReadyCardCount,
      int? completedCardCount,
      int? totalCardsCount,
      int? totalReadyAndSnoozedCardCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? campusId,
      String? workflowCategoryId,
      int? myOverdueCardCount,
      int? myDueSoonCardCount,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflow.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows';
    if (name != null) obj._attributes['name'] = name;
    if (myReadyCardCount != null)
      obj._attributes['my_ready_card_count'] = myReadyCardCount;
    if (totalReadyCardCount != null)
      obj._attributes['total_ready_card_count'] = totalReadyCardCount;
    if (completedCardCount != null)
      obj._attributes['completed_card_count'] = completedCardCount;
    if (totalCardsCount != null)
      obj._attributes['total_cards_count'] = totalCardsCount;
    if (totalReadyAndSnoozedCardCount != null)
      obj._attributes['total_ready_and_snoozed_card_count'] =
          totalReadyAndSnoozedCardCount;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();
    if (campusId != null) obj._attributes['campus_id'] = campusId;
    if (workflowCategoryId != null)
      obj._attributes['workflow_category_id'] = workflowCategoryId;
    if (myOverdueCardCount != null)
      obj._attributes['my_overdue_card_count'] = myOverdueCardCount;
    if (myDueSoonCardCount != null)
      obj._attributes['my_due_soon_card_count'] = myDueSoonCardCount;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `/people/v2/workflows`
  ///
  /// Available Query Filters:
  /// - `only_deleted`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  static Future<PcoCollection<PcoPeopleWorkflow>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeShares = false,
    bool includeSteps = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url = '/people/v2/workflows';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/home_workflow_cards/$workflowCardId/workflow`
  static Future<PcoCollection<PcoPeopleWorkflow>> getFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeShares = false,
    bool includeSteps = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url =
        '/people/v2/people/$personId/home_workflow_cards/$workflowCardId/workflow';

    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/cards`
  Future<PcoCollection<PcoPeopleWorkflowCard>> getCards({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '$apiEndpoint/cards';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/category`
  Future<PcoCollection<PcoPeopleWorkflowCategory>> getCategory({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shared_people`
  Future<PcoCollection<PcoPeoplePerson>> getSharedPeople({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/shared_people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shares`
  Future<PcoCollection<PcoPeopleWorkflowShare>> getShares({
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getSteps({
    PlanningCenterApiQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDefaultAssignee) query.include.add('default_assignee');
    var url = '$apiEndpoint/steps';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
