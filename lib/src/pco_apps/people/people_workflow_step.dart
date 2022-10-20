/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.437090
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `sequence` -> `?order=sequence`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleWorkflowStepOrder { createdAt, name, sequence, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleWorkflowStepFilter { none }

/// Creates a [PcoPeopleWorkflowStepQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDefaultAssignee`: include associated default_assignee
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleWorkflowStepQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleWorkflowStep] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleWorkflowStepOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleWorkflowStepOrder.name` : will order by `name`
/// - `PcoPeopleWorkflowStepOrder.sequence` : will order by `sequence`
/// - `PcoPeopleWorkflowStepOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowStepQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowStepOrder, String> _orderMap = {
    PcoPeopleWorkflowStepOrder.createdAt: 'created_at',
    PcoPeopleWorkflowStepOrder.name: 'name',
    PcoPeopleWorkflowStepOrder.sequence: 'sequence',
    PcoPeopleWorkflowStepOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleWorkflowStepOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowStepFilter, String> _filterMap = {};
  static String filterString(PcoPeopleWorkflowStepFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowStepQuery({
    /// include associated default_assignee
    /// when true, adds `?include=default_assignee` to url
    bool includeDefaultAssignee = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleWorkflowStepOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeDefaultAssignee) include.add('default_assignee');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People WorkflowStep Object
///
/// - Application:        people
/// - Id:                 workflow_step
/// - Type:               WorkflowStep
/// - ApiVersion:         2022-07-14
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
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// - `person-workflowstep-default_assignee`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee
///
/// Inbound Edges:
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/current_step
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
  static const String kApiVersion = '2022-07-14';
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
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'name', 'sequence', 'updated_at'];

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
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedDefaultAssignee<T extends PcoResource>() =>
      (relationships['default_assignee'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleWorkflowStep.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflowStep.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowStep] object using this endpoint: `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/steps`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `sequence`, `name`
  /// - FIELDS USED WHEN UPDATING: `sequence`, `name`
  factory PcoPeopleWorkflowStep(
      {required String workflowId,
      String? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? sequence,
      String? description,
      int? autoSnoozeDays,
      int? autoSnoozeValue,
      String? autoSnoozeInterval,
      int? expectedResponseTimeInDays,
      int? myReadyCardCount,
      int? totalReadyCardCount,
      String? defaultAssigneeId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflowStep.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/steps';
    if (name != null) obj._attributes['name'] = name;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (description != null) obj._attributes['description'] = description;
    if (autoSnoozeDays != null)
      obj._attributes['auto_snooze_days'] = autoSnoozeDays;
    if (autoSnoozeValue != null)
      obj._attributes['auto_snooze_value'] = autoSnoozeValue;
    if (autoSnoozeInterval != null)
      obj._attributes['auto_snooze_interval'] = autoSnoozeInterval;
    if (expectedResponseTimeInDays != null)
      obj._attributes['expected_response_time_in_days'] =
          expectedResponseTimeInDays;
    if (myReadyCardCount != null)
      obj._attributes['my_ready_card_count'] = myReadyCardCount;
    if (totalReadyCardCount != null)
      obj._attributes['total_ready_card_count'] = totalReadyCardCount;
    if (defaultAssigneeId != null)
      obj._attributes['default_assignee_id'] = defaultAssigneeId;

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

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards/$workflowCardId/current_step`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowStep>>
      getCurrentStepFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PcoPeopleWorkflowStepQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PcoPeopleWorkflowStepQuery();

    if (includeDefaultAssignee) query.include.add('default_assignee');
    var url =
        '/people/v2/people/$personId/workflow_cards/$workflowCardId/current_step';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowStep>> getStepsFromWorkflow(
    String workflowId, {
    PcoPeopleWorkflowStepQuery? query,
    bool includeDefaultAssignee = false,
  }) async {
    query ??= PcoPeopleWorkflowStepQuery();

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
      getAssigneeSummaries(
          {PcoPeopleWorkflowStepAssigneeSummaryQuery? query}) async {
    query ??= PcoPeopleWorkflowStepAssigneeSummaryQuery();
    var url = '$apiEndpoint/assignee_summaries';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/default_assignee`
  Future<PcoCollection<PcoPeoplePerson>> getDefaultAssignee(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/default_assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
