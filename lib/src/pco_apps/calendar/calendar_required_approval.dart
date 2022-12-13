/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.210726
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarRequiredApprovalOrder { none }

/// Possible Inbound Filters:
/// - `resources` -> `?filter=resources` : -- no description
/// - `rooms` -> `?filter=rooms` : -- no description
enum PcoCalendarRequiredApprovalFilter { resources, rooms }

/// Creates a [PcoCalendarRequiredApprovalQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeResource`: include associated resource
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarRequiredApprovalQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarRequiredApprovalQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarRequiredApprovalOrder, String> _orderMap = {};
  static String orderString(PcoCalendarRequiredApprovalOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarRequiredApprovalFilter, String> _filterMap = {
    PcoCalendarRequiredApprovalFilter.resources: 'resources',
    PcoCalendarRequiredApprovalFilter.rooms: 'rooms',
  };
  static String filterString(PcoCalendarRequiredApprovalFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarRequiredApprovalQuery({
    /// include associated resource
    /// when true, adds `?include=resource` to url
    bool includeResource = false,
    PcoCalendarRequiredApprovalFilter? filterBy,

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
    if (includeResource) include.add('resource');
  }
}

/// This class represents a PCO Calendar RequiredApproval Object
///
/// - Application:        calendar
/// - Id:                 required_approval
/// - Type:               RequiredApproval
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarRequiredApproval()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarRequiredApproval.fromJson()` constructor.
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
/// Represents the relationship between a Resource and a Resource Approval Group.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `resource-requiredapproval-resource`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals/1/resource
///
/// Inbound Edges:
/// - `requiredapproval-resourceapprovalgroup-required_approvals`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals
/// - `requiredapproval-resource-required_approvals`: https://api.planningcenteronline.com/calendar/v2/resources/1/required_approvals
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "RequiredApproval",
///   "id": "1",
///   "attributes": {},
///   "relationships": {}
/// }
/// ```
class PcoCalendarRequiredApproval extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'RequiredApproval';
  static const String kTypeId = 'required_approval';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resource`: include associated resource
  static List<String> get canInclude => ['resource'];

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

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // typed getters for each relationship

  PcoCalendarResource? get includedResource =>
      _firstOrNull<PcoCalendarResource>(relationships['resource']);

  // Class Constructors
  PcoCalendarRequiredApproval.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoCalendarRequiredApproval.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarRequiredApproval] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarRequiredApproval(
      {String? id,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarRequiredApproval.empty();
    obj._id = id;

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

  /// Will get a collection of [PcoCalendarRequiredApproval] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/required_approvals`
  ///
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarRequiredApproval>>
      getFromResourceApprovalGroup(
    String resourceApprovalGroupId, {
    String? id,
    PcoCalendarRequiredApprovalQuery? query,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarRequiredApprovalQuery();

    if (includeResource) query.include.add('resource');
    var url =
        '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/required_approvals';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRequiredApproval>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarRequiredApproval] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/required_approvals`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarRequiredApproval>> getFromResource(
    String resourceId, {
    String? id,
    PcoCalendarRequiredApprovalQuery? query,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarRequiredApprovalQuery();

    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/resources/$resourceId/required_approvals';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRequiredApproval>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource(
      {PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
