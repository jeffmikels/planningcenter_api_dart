/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.130930
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleWorkflowStepAssigneeSummaryOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleWorkflowStepAssigneeSummaryFilter { none }

/// Creates a [PcoPeopleWorkflowStepAssigneeSummaryQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleWorkflowStepAssigneeSummaryQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowStepAssigneeSummaryQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowStepAssigneeSummaryOrder, String>
      _orderMap = {};
  static String orderString(PcoPeopleWorkflowStepAssigneeSummaryOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowStepAssigneeSummaryFilter, String>
      _filterMap = {};
  static String filterString(
          PcoPeopleWorkflowStepAssigneeSummaryFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowStepAssigneeSummaryQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

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
    if (includePerson) include.add('person');
  }
}

/// This class represents a PCO People WorkflowStepAssigneeSummary Object
///
/// - Application:        people
/// - Id:                 workflow_step_assignee_summary
/// - Type:               WorkflowStepAssigneeSummary
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowStepAssigneeSummary.fromJson()` constructor.
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
/// The ready and snoozed count for an assignee & step
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `readyCount` (ro) -> PCO: `ready_count`
/// - `snoozedCount` (ro) -> PCO: `snoozed_count`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-workflowstepassigneesummary-person`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person
///
/// Inbound Edges:
/// - `workflowstepassigneesummary-workflowstep-assignee_summaries`: https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "WorkflowStepAssigneeSummary",
///   "id": "1",
///   "attributes": {
///     "ready_count": 1,
///     "snoozed_count": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "step": {
///       "data": {
///         "type": "Step",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflowStepAssigneeSummary extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'WorkflowStepAssigneeSummary';
  static const String kTypeId = 'workflow_step_assignee_summary';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kReadyCount = 'ready_count';
  static const kSnoozedCount = 'snoozed_count';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  int get readyCount => _getAttribute<int>(kReadyCount, 0);
  int get snoozedCount => _getAttribute<int>(kSnoozedCount, 0);

  // typed getters for each relationship

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleWorkflowStepAssigneeSummary.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleWorkflowStepAssigneeSummary.empty()
      : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowStepAssigneeSummary] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleWorkflowStepAssigneeSummary(
      {String? id,
      int? readyCount,
      int? snoozedCount,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflowStepAssigneeSummary.empty();
    obj._id = id;
    if (readyCount != null) obj._attributes['ready_count'] = readyCount;
    if (snoozedCount != null) obj._attributes['snoozed_count'] = snoozedCount;

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

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowStepAssigneeSummary] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowStepAssigneeSummary>>
      getAssigneeSummariesFromWorkflowAndStep(
    String workflowId,
    String stepId, {
    PcoPeopleWorkflowStepAssigneeSummaryQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleWorkflowStepAssigneeSummaryQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url =
        '/people/v2/workflows/$workflowId/steps/$stepId/assignee_summaries';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowStepAssigneeSummary>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps/1/assignee_summaries/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
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
