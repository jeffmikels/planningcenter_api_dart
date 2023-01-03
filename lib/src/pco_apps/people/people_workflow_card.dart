/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.127518
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `completedAt` -> `?order=completed_at`
/// - `createdAt` -> `?order=created_at`
/// - `flaggedForNotificationAt` -> `?order=flagged_for_notification_at`
/// - `movedToStepAt` -> `?order=moved_to_step_at`
/// - `removedAt` -> `?order=removed_at`
/// - `stage` -> `?order=stage`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleWorkflowCardOrder {
  completedAt,
  createdAt,
  flaggedForNotificationAt,
  movedToStepAt,
  removedAt,
  stage,
  updatedAt
}

/// Possible Inbound Filters:
/// - `assigned` -> `?filter=assigned` : -- no description
enum PcoPeopleWorkflowCardFilter { assigned }

/// Creates a [PcoPeopleWorkflowCardQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeAssignee`: include associated assignee
/// - `includeCurrentStep`: include associated current_step
/// - `includePerson`: include associated person
/// - `includeWorkflow`: include associated workflow
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleWorkflowCardQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleWorkflowCard] objects can be requested with one or more of the following criteria:
/// - `whereStage`: query on a specific stage, example: ?where[stage]=string
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
/// - `PcoPeopleWorkflowCardOrder.completedAt` : will order by `completed_at`
/// - `PcoPeopleWorkflowCardOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleWorkflowCardOrder.flaggedForNotificationAt` : will order by `flagged_for_notification_at`
/// - `PcoPeopleWorkflowCardOrder.movedToStepAt` : will order by `moved_to_step_at`
/// - `PcoPeopleWorkflowCardOrder.removedAt` : will order by `removed_at`
/// - `PcoPeopleWorkflowCardOrder.stage` : will order by `stage`
/// - `PcoPeopleWorkflowCardOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowCardQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowCardOrder, String> _orderMap = {
    PcoPeopleWorkflowCardOrder.completedAt: 'completed_at',
    PcoPeopleWorkflowCardOrder.createdAt: 'created_at',
    PcoPeopleWorkflowCardOrder.flaggedForNotificationAt:
        'flagged_for_notification_at',
    PcoPeopleWorkflowCardOrder.movedToStepAt: 'moved_to_step_at',
    PcoPeopleWorkflowCardOrder.removedAt: 'removed_at',
    PcoPeopleWorkflowCardOrder.stage: 'stage',
    PcoPeopleWorkflowCardOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleWorkflowCardOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowCardFilter, String> _filterMap = {
    PcoPeopleWorkflowCardFilter.assigned: 'assigned',
  };
  static String filterString(PcoPeopleWorkflowCardFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowCardQuery({
    /// include associated assignee
    /// when true, adds `?include=assignee` to url
    bool includeAssignee = false,

    /// include associated current_step
    /// when true, adds `?include=current_step` to url
    bool includeCurrentStep = false,

    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// include associated workflow
    /// when true, adds `?include=workflow` to url
    bool includeWorkflow = false,

    /// when true, adds `?include=assignee,current_step,person,workflow` to url parameters
    bool includeAllRelated = false,

    /// Query by `stage`
    /// query on a specific stage, url example: ?where[stage]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStage,
    PcoPeopleWorkflowCardFilter? filterBy,
    PcoPeopleWorkflowCardOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAllRelated || includeAssignee) include.add('assignee');
    if (includeAllRelated || includeCurrentStep) include.add('current_step');
    if (includeAllRelated || includePerson) include.add('person');
    if (includeAllRelated || includeWorkflow) include.add('workflow');

    if (whereStage != null)
      where.add(PlanningCenterApiWhere.parse('stage', whereStage));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People WorkflowCard Object
///
/// - Application:        people
/// - Id:                 workflow_card
/// - Type:               WorkflowCard
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
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
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `workflowcardactivity-workflowcard-activities`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/activities
/// - `person-workflowcard-assignee`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/assignee
/// - `workflowstep-workflowcard-current_step`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/current_step
/// - `workflowcardnote-workflowcard-notes`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes
/// - `person-workflowcard-person`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/person
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/workflow
///
/// Inbound Edges:
/// - `workflowcard-person-workflow_cards`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
///
/// Actions:
/// - `go_back`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/go_back
/// - `promote`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/promote
/// - `remove`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/remove
/// - `restore`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/restore
/// - `send_email`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/send_email
/// - `skip_step`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/skip_step
/// - `snooze`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/snooze
/// - `unsnooze`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/unsnooze
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
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/workflow_cards';
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
  DateTime get snoozeUntil =>
      _getAttribute<DateTime>(kSnoozeUntil, DateTime(0));
  bool get isOverdue => _getAttribute<bool>(kOverdue, false);
  String get stage => _getAttribute<String>(kStage, '');
  int get calculatedDueAtInDaysAgo =>
      _getAttribute<int>(kCalculatedDueAtInDaysAgo, 0);
  bool get isStickyAssignment => _getAttribute<bool>(kStickyAssignment, false);
  DateTime get completedAt =>
      _getAttribute<DateTime>(kCompletedAt, DateTime(0));
  DateTime get flaggedForNotificationAt =>
      _getAttribute<DateTime>(kFlaggedForNotificationAt, DateTime(0));
  DateTime get removedAt => _getAttribute<DateTime>(kRemovedAt, DateTime(0));
  DateTime get movedToStepAt =>
      _getAttribute<DateTime>(kMovedToStepAt, DateTime(0));

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set isStickyAssignment(bool? x) => (x == null)
      ? _attributes.remove(kStickyAssignment)
      : _attributes[kStickyAssignment] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set assigneeId(String? x) => (x == null)
      ? _attributes.remove(kAssigneeId)
      : _attributes[kAssigneeId] = x;
  String get assigneeId => _getAttribute<String>(kAssigneeId, '');

  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _getAttribute<String>(kPersonId, '');

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedAssignee<T extends PcoResource>() =>
      (relationships['assignee'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCurrentStep<T extends PcoResource>() =>
      (relationships['current_step'] as List?)?.cast<T>() ?? [];

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);
  PcoPeopleWorkflow? get includedWorkflow =>
      _firstOrNull<PcoPeopleWorkflow>(relationships['workflow']);

  // Class Constructors
  PcoPeopleWorkflowCard.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflowCard.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowCard] object using this endpoint: `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `isStickyAssignment`, `assigneeId`, `personId`
  /// - FIELDS USED WHEN UPDATING: `isStickyAssignment`, `assigneeId`, `personId`
  factory PcoPeopleWorkflowCard(
      {required String workflowId,
      String? id,
      DateTime? snoozeUntil,
      bool? isOverdue,
      String? stage,
      int? calculatedDueAtInDaysAgo,
      bool? isStickyAssignment,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? completedAt,
      DateTime? flaggedForNotificationAt,
      DateTime? removedAt,
      DateTime? movedToStepAt,
      String? assigneeId,
      String? personId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflowCard.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/cards';
    if (snoozeUntil != null)
      obj._attributes['snooze_until'] = snoozeUntil.toIso8601String();
    if (isOverdue != null) obj._attributes['overdue'] = isOverdue;
    if (stage != null) obj._attributes['stage'] = stage;
    if (calculatedDueAtInDaysAgo != null)
      obj._attributes['calculated_due_at_in_days_ago'] =
          calculatedDueAtInDaysAgo;
    if (isStickyAssignment != null)
      obj._attributes['sticky_assignment'] = isStickyAssignment;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (completedAt != null)
      obj._attributes['completed_at'] = completedAt.toIso8601String();
    if (flaggedForNotificationAt != null)
      obj._attributes['flagged_for_notification_at'] =
          flaggedForNotificationAt.toIso8601String();
    if (removedAt != null)
      obj._attributes['removed_at'] = removedAt.toIso8601String();
    if (movedToStepAt != null)
      obj._attributes['moved_to_step_at'] = movedToStepAt.toIso8601String();
    if (assigneeId != null) obj._attributes['assignee_id'] = assigneeId;
    if (personId != null) obj._attributes['person_id'] = personId;

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

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards`
  ///
  /// Available Query Filters:
  /// - `assigned`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleWorkflowCardQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PcoPeopleWorkflowCardQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '/people/v2/people/$personId/workflow_cards';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleWorkflowCard] object
  /// using a path like this: `/people/v2/people/$personId/workflow_cards/[id]`
  ///
  /// Available Query Filters:
  /// - `assigned`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleWorkflowCard?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleWorkflowCardQuery? query,
    bool includeAllRelated = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PcoPeopleWorkflowCardQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '/people/v2/people/$personId/workflow_cards/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards`
  ///
  /// Available Query Filters:
  /// - `assigned`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleWorkflowCardQuery? query,
    bool includeAllRelated = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PcoPeopleWorkflowCardQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleWorkflowCard.canInclude);
    if (includeAssignee) query.include.add('assignee');
    if (includeCurrentStep) query.include.add('current_step');
    if (includePerson) query.include.add('person');
    if (includeWorkflow) query.include.add('workflow');
    var url = '/people/v2/people/$personId/workflow_cards';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowCard] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/cards`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowCard>> getCardsFromWorkflow(
    String workflowId, {
    PcoPeopleWorkflowCardQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAssignee = false,
    bool includeCurrentStep = false,
    bool includePerson = false,
    bool includeWorkflow = false,
  }) async {
    query ??= PcoPeopleWorkflowCardQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleWorkflowCard.canInclude);
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/activities`
  Future<PcoCollection<PcoPeopleWorkflowCardActivity>> getActivities(
      {PcoPeopleWorkflowCardActivityQuery? query}) async {
    query ??= PcoPeopleWorkflowCardActivityQuery();
    var url = '$apiEndpoint/activities';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardActivity>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/assignee`
  Future<PcoCollection<PcoPeoplePerson>> getAssignee(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/assignee';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/current_step`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getCurrentStep(
      {PcoPeopleWorkflowStepQuery? query}) async {
    query ??= PcoPeopleWorkflowStepQuery();
    var url = '$apiEndpoint/current_step';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCardNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/notes`
  Future<PcoCollection<PcoPeopleWorkflowCardNote>> getNotes(
      {PcoPeopleWorkflowCardNoteQuery? query}) async {
    query ??= PcoPeopleWorkflowCardNoteQuery();
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCardNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/workflow`
  Future<PcoCollection<PcoPeopleWorkflow>> getWorkflow(
      {PcoPeopleWorkflowQuery? query}) async {
    query ??= PcoPeopleWorkflowQuery();
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/go_back`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/promote`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/remove`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/restore`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/send_email`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/skip_step`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/snooze`
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
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/unsnooze`
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

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
