/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.129900
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeopleWorkflowShareOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleWorkflowShareFilter { none }

/// Creates a [PcoPeopleWorkflowShareQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleWorkflowShareQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleWorkflowShare] objects can be requested with one or more of the following criteria:
/// - `wherePermission`: query on a specific permission, example: ?where[permission]=value
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowShareQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowShareOrder, String> _orderMap = {};
  static String orderString(PcoPeopleWorkflowShareOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowShareFilter, String> _filterMap = {};
  static String filterString(PcoPeopleWorkflowShareFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowShareQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// Query by `permission`
    /// query on a specific permission, url example: ?where[permission]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePermission,

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

    if (wherePermission != null)
      where.add(PlanningCenterApiWhere.parse('permission', wherePermission));
  }
}

/// This class represents a PCO People WorkflowShare Object
///
/// - Application:        people
/// - Id:                 workflow_share
/// - Type:               WorkflowShare
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/workflow_shares
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows/1/shares
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflowShare()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflowShare.fromJson()` constructor.
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
/// A workflow share defines who can access a workflow.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `group` (rw) -> PCO: `group`
/// - `permission` (rw) -> PCO: `permission`
/// - `personId` (rw) -> PCO: `person_id`
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
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/workflow_shares';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows/1/shares';

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
  static const kGroup = 'group';
  static const kPermission = 'permission';
  static const kPersonId = 'person_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['group', 'permission', 'person_id'];

  @override
  List<String> get updateAllowed => ['group', 'permission'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get group => _getAttribute<String>(kGroup, '');
  String get permission => _getAttribute<String>(kPermission, '');
  String get personId => _getAttribute<String>(kPersonId, '');

  // setters for object attributes

  /// Possible values: `No Access`, `Viewer`, `Editor`, or `Manager`
  ///
  /// pass `null` to remove key from attributes
  set group(String? x) =>
      (x == null) ? _attributes.remove(kGroup) : _attributes[kGroup] = x;

  /// Possible values: `view`, `manage_cards`, or `manage`
  ///
  /// pass `null` to remove key from attributes
  set permission(String? x) => (x == null)
      ? _attributes.remove(kPermission)
      : _attributes[kPermission] = x;

  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;

  // typed getters for each relationship

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleWorkflowShare.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflowShare.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflowShare] object using this endpoint: `https://api.planningcenteronline.com/people/v2/workflows/$workflowId/shares`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `group`, `permission`, `personId`
  /// - FIELDS USED WHEN UPDATING: `group`, `permission`
  factory PcoPeopleWorkflowShare(
      {required String workflowId,
      String? id,
      String? group,
      String? permission,
      String? personId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflowShare.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows/$workflowId/shares';
    if (group != null) obj._attributes['group'] = group;
    if (permission != null) obj._attributes['permission'] = permission;
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

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_shares`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleWorkflowShareQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleWorkflowShareQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/workflow_shares';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleWorkflowShare] object
  /// using a path like this: `/people/v2/people/$personId/workflow_shares/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleWorkflowShare?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleWorkflowShareQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleWorkflowShareQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/workflow_shares/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/workflow_shares`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleWorkflowShareQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleWorkflowShareQuery();
    query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/workflow_shares';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleWorkflowShare] objects (expecting one)
  /// using a path like this: `/people/v2/workflows/$workflowId/shares`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflowShare>> getSharesFromWorkflow(
    String workflowId, {
    PcoPeopleWorkflowShareQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleWorkflowShareQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/workflows/$workflowId/shares';

    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people/1/workflow_shares/1/person`
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
