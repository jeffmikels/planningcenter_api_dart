/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.037491
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowCard Object
///
/// - Application:        people
/// - Id:                 workflow_card
/// - Type:               WorkflowCard
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows/1/cards
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflowCard()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowCard.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// A Card
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `snoozeUntil` (ro) -> PCO: `snooze_until`
/// - `isOverdue` (ro) -> PCO: `overdue`
/// - `stage` (ro) -> PCO: `stage`
/// - `calculatedDueAtInDaysAgo` (ro) -> PCO: `calculated_due_at_in_days_ago`
/// - `isStickyAssignment` (rw) -> PCO: `sticky_assignment`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `completedAt` (ro) -> PCO: `completed_at`
/// - `flaggedForNotificationAt` (ro) -> PCO: `flagged_for_notification_at`
/// - `removedAt` (ro) -> PCO: `removed_at`
/// - `movedToStepAt` (ro) -> PCO: `moved_to_step_at`
/// - `assigneeId` (wo) -> PCO: `assignee_id`
/// - `personId` (wo) -> PCO: `person_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `assignee`: include associated assignee
/// - `current_step`: include associated current_step
/// - `person`: include associated person
/// - `workflow`: include associated workflow
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
/// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
/// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
/// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities
/// - `person-workflowcard-assignee`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes
/// - `person-workflowcard-person`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow
///
/// Inbound Edges:
/// - `workflowcard-person-workflow_cards`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
///
/// Actions:
/// - `go_back`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back
/// - `promote`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote
/// - `remove`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove
/// - `restore`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore
/// - `send_email`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email
/// - `skip_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step
/// - `snooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze
/// - `unsnooze`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowCard",
///   "id": "1",
///   "attributes": {
///     "snooze_until": "2000-01-01T12:00:00Z",
///     "overdue": true,
///     "stage": "string",
///     "calculated_due_at_in_days_ago": 1,
///     "sticky_assignment": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "completed_at": "2000-01-01T12:00:00Z",
///     "flagged_for_notification_at": "2000-01-01T12:00:00Z",
///     "removed_at": "2000-01-01T12:00:00Z",
///     "moved_to_step_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "assignee": {
///       "data": {
///         "type": "Assignee",
///         "id": "1"
///       }
///     },
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
///     },
///     "current_step": {
///       "data": {
///         "type": "WorkflowStep",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowCard extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowCard';
  static const String kTypeId = 'workflow_card';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/cards';

  /// possible includes with parameter ?include=a,b
  /// - `assignee`: include associated assignee
  /// - `current_step`: include associated current_step
  /// - `person`: include associated person
  /// - `workflow`: include associated workflow
  static List<String> get canInclude =>
      ['assignee', 'current_step', 'person', 'workflow'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `stage`: (URLParameter), query on a specific stage, example: ?where[stage]=string
  static List<String> get canQuery => ['stage'];

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `flagged_for_notification_at`: (URLParameter), prefix with a hyphen (-flagged_for_notification_at) to reverse the order
  /// - `moved_to_step_at`: (URLParameter), prefix with a hyphen (-moved_to_step_at) to reverse the order
  /// - `removed_at`: (URLParameter), prefix with a hyphen (-removed_at) to reverse the order
  /// - `stage`: (URLParameter), prefix with a hyphen (-stage) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'completed_at',
        'created_at',
        'flagged_for_notification_at',
        'moved_to_step_at',
        'removed_at',
        'stage',
        'updated_at'
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
  static const kSnoozeUntil = 'snooze_until';
  static const kOverdue = 'overdue';
  static const kStage = 'stage';
  static const kCalculatedDueAtInDaysAgo = 'calculated_due_at_in_days_ago';
  static const kStickyAssignment = 'sticky_assignment';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kCompletedAt = 'completed_at';
  static const kFlaggedForNotificationAt = 'flagged_for_notification_at';
  static const kRemovedAt = 'removed_at';
  static const kMovedToStepAt = 'moved_to_step_at';
  static const kAssigneeId = 'assignee_id';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['sticky_assignment', 'assignee_id', 'person_id'];

  @override
  List<String> get updateAllowed =>
      ['sticky_assignment', 'assignee_id', 'person_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  DateTime get snoozeUntil => DateTime.parse(_attributes[kSnoozeUntil] ?? '');
  bool get isOverdue => _attributes[kOverdue] == true;
  String get stage => _attributes[kStage] ?? '';
  int get calculatedDueAtInDaysAgo =>
      _attributes[kCalculatedDueAtInDaysAgo] ?? 0;
  bool get isStickyAssignment => _attributes[kStickyAssignment] == true;
  DateTime get completedAt => DateTime.parse(_attributes[kCompletedAt] ?? '');
  DateTime get flaggedForNotificationAt =>
      DateTime.parse(_attributes[kFlaggedForNotificationAt] ?? '');
  DateTime get removedAt => DateTime.parse(_attributes[kRemovedAt] ?? '');
  DateTime get movedToStepAt =>
      DateTime.parse(_attributes[kMovedToStepAt] ?? '');

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set isStickyAssignment(bool? x) => (x == null)
      ? _attributes.remove(kStickyAssignment)
      : _attributes[kStickyAssignment] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set assigneeId(String? x) => (x == null)
      ? _attributes.remove(kAssigneeId)
      : _attributes[kAssigneeId] = x;
  String get assigneeId => _attributes[kAssigneeId] ?? '';

  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedAssignee<T extends PcoResource>() =>
      (relationships['assignee'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedCurrentStep<T extends PcoResource>() =>
      (relationships['current_step'] as List?)?.cast<T>() ?? [];
  List<PcoPeoplePerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoPeoplePerson>() ?? [];
  List<PcoPeopleWorkflow> get includedWorkflow =>
      (relationships['workflow'] as List?)?.cast<PcoPeopleWorkflow>() ?? [];

  // Class Constructors
  PcoPeopleWorkflowCard.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleWorkflowCard.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowCard] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowCard(String workflowId, {bool? isStickyAssignment}) {
    var obj = PcoPeopleWorkflowCard.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards';
    if (isStickyAssignment != null) obj.isStickyAssignment = isStickyAssignment;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards`
  ///
  /// Available Query Filters:
  /// - `assigned`
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '/people/v2/people/$personId/workflow_cards';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/cards`
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getCardsFromWorkflow(
    String workflowId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '/people/v2/workflows/$workflowId/cards';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowCardActivity] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/activities`
  Future<PcoCollection<PcoPeopleWorkflowCardActivity>> getActivities({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/activities';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardActivity>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/assignee`
  Future<PcoCollection<PcoPeoplePerson>> getAssignee({
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
    if (includeAll) query.include.addAll(PcoPeopleWorkflowCard.canInclude);
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
    var url = '$apiEndpoint/assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getCurrentStep({
    PlanningCenterApiQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDefaultAssignee) query.include.add('default_assignee');
    var url = '$apiEndpoint/current_step';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCardNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/notes`
  Future<PcoCollection<PcoPeopleWorkflowCardNote>> getNotes({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({
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
    if (includeAll) query.include.addAll(PcoPeopleWorkflowCard.canInclude);
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
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/workflow`
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflow({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeShares = false,
    bool includeSteps = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url = '$apiEndpoint/workflow';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `go_back`
  ///
  /// Move a Workflow Card back to the previous step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/go_back`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goBack(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/go_back';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `promote`
  ///
  /// Move a Workflow Card to the next step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/promote`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> promote(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/promote';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `remove`
  ///
  /// Removes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/remove`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> remove(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/remove';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `restore`
  ///
  /// Restore a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/restore`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> restore(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/restore';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `send_email`
  ///
  /// Sends an email to the subject of the card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/send_email`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// Pass in a subject and note.
  Future<PlanningCenterApiResponse> sendEmail(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/send_email';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `skip_step`
  ///
  /// Move a Workflow Card to the next step without completing the current step.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/skip_step`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> skipStep(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/skip_step';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `snooze`
  ///
  /// Snoozes a card for a specific duration
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/snooze`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// Pass in a duration in days.
  Future<PlanningCenterApiResponse> snooze(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/snooze';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `unsnooze`
  ///
  /// Unsnoozes a card
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/unsnooze`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> unsnooze(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/unsnooze';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
