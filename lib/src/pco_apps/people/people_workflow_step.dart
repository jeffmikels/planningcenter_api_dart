/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.040949
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People WorkflowStep Object
///
/// - Application:        people
/// - Id:                 workflow_step
/// - Type:               WorkflowStep
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows/1/steps
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflowStep()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowStep.fromJson()` constructor.
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
/// A Step
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `description` (ro) -> PCO: `description`
/// - `autoSnoozeDays` (ro) -> PCO: `auto_snooze_days`
/// - `autoSnoozeValue` (ro) -> PCO: `auto_snooze_value`
/// - `autoSnoozeInterval` (ro) -> PCO: `auto_snooze_interval`
/// - `expectedResponseTimeInDays` (ro) -> PCO: `expected_response_time_in_days`
/// - `myReadyCardCount` (ro) -> PCO: `my_ready_card_count`
/// - `totalReadyCardCount` (ro) -> PCO: `total_ready_card_count`
/// - `defaultAssigneeId` (ro) -> PCO: `default_assignee_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `default_assignee`: include associated default_assignee
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// - `person-workflowstep-default_assignee`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee
///
/// Inbound Edges:
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/home_workflow_cards/1/current_step
/// - `workflowstep-workflow-steps`: https://api.planningcenteronline.com/people/v2/workflows/1/steps
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowStep",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "sequence": 1,
///     "description": "string",
///     "auto_snooze_days": 1,
///     "auto_snooze_value": 1,
///     "auto_snooze_interval": "value",
///     "expected_response_time_in_days": 1,
///     "my_ready_card_count": 1,
///     "total_ready_card_count": 1,
///     "default_assignee_id": "primary_key"
///   },
///   "relationships": {
///     "default_assignee": {
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
class PcoPeopleWorkflowStep extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStep';
  static const String kTypeId = 'workflow_step';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/steps';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/steps';

  /// possible includes with parameter ?include=a,b
  /// - `default_assignee`: include associated default_assignee
  static List<String> get canInclude => ['default_assignee'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'name', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'name', 'name', 'sequence', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kSequence = 'sequence';
  static const kDescription = 'description';
  static const kAutoSnoozeDays = 'auto_snooze_days';
  static const kAutoSnoozeValue = 'auto_snooze_value';
  static const kAutoSnoozeInterval = 'auto_snooze_interval';
  static const kExpectedResponseTimeInDays = 'expected_response_time_in_days';
  static const kMyReadyCardCount = 'my_ready_card_count';
  static const kTotalReadyCardCount = 'total_ready_card_count';
  static const kDefaultAssigneeId = 'default_assignee_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['sequence', 'name'];

  @override
  List<String> get updateAllowed => ['sequence', 'name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  String get description => _attributes[kDescription] ?? '';
  int get autoSnoozeDays => _attributes[kAutoSnoozeDays] ?? 0;
  int get autoSnoozeValue => _attributes[kAutoSnoozeValue] ?? 0;
  String get autoSnoozeInterval => _attributes[kAutoSnoozeInterval] ?? '';
  int get expectedResponseTimeInDays =>
      _attributes[kExpectedResponseTimeInDays] ?? 0;
  int get myReadyCardCount => _attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => _attributes[kTotalReadyCardCount] ?? 0;
  String get defaultAssigneeId => _attributes[kDefaultAssigneeId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedDefaultAssignee<T extends PcoResource>() =>
      (relationships['default_assignee'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleWorkflowStep.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleWorkflowStep.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowStep] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/steps`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleWorkflowStep(String workflowId,
      {int? sequence, String? name}) {
    var obj = PcoPeopleWorkflowStep.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/steps';
    if (sequence != null) obj.sequence = sequence;
    if (name != null) obj.name = name;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/home_workflow_cards/$workflowCardId/current_step`
  static Future<PcoCollection<PcoPeopleWorkflowStep>>
      getCurrentStepFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PlanningCenterApiQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDefaultAssignee) query.include.add('default_assignee');
    var url =
        '/people/v2/people/$personId/home_workflow_cards/$workflowCardId/current_step';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps`
  static Future<PcoCollection<PcoPeopleWorkflowStep>> getStepsFromWorkflow(
    String workflowId, {
    PlanningCenterApiQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDefaultAssignee) query.include.add('default_assignee');
    var url = '/people/v2/workflows/$workflowId/steps';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries`
  Future<PcoCollection<PcoPeopleWorkflowStepAssigneeSummary>>
      getAssigneeSummaries({
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/assignee_summaries';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee`
  Future<PcoCollection<PcoPeoplePerson>> getDefaultAssignee({
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
    if (includeAll) query.include.addAll(PcoPeopleWorkflowStep.canInclude);
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
    var url = '$apiEndpoint/default_assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
