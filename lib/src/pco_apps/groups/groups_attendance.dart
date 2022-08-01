/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.992050
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `firstName` -> `?order=first_name`
/// - `lastName` -> `?order=last_name`
/// - `role` -> `?order=role`
enum PcoGroupsAttendanceOrder { firstName, lastName, role }

/// Possible Inbound Filters:
/// - `attended` -> `?filter=attended` : -- no description
enum PcoGroupsAttendanceFilter { attended }

/// Creates a [PcoGroupsAttendanceQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGroupsAttendanceQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsAttendance] objects can be requested with one or more of the following criteria:
/// - `whereRole`: query on a specific role, example: ?where[role]=value
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
/// - `PcoGroupsAttendanceOrder.firstName` : will order by `first_name`
/// - `PcoGroupsAttendanceOrder.lastName` : will order by `last_name`
/// - `PcoGroupsAttendanceOrder.role` : will order by `role`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsAttendanceQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsAttendanceOrder, String> _orderMap = {
    PcoGroupsAttendanceOrder.firstName: 'first_name',
    PcoGroupsAttendanceOrder.lastName: 'last_name',
    PcoGroupsAttendanceOrder.role: 'role',
  };
  static String orderString(PcoGroupsAttendanceOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsAttendanceFilter, String> _filterMap = {
    PcoGroupsAttendanceFilter.attended: 'attended',
  };
  static String filterString(PcoGroupsAttendanceFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsAttendanceQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// Query by `role`
    /// query on a specific role, url example: ?where[role]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereRole,
    PcoGroupsAttendanceFilter? filterBy,
    PcoGroupsAttendanceOrder? orderBy,

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
    if (includePerson) include.add('person');

    if (whereRole != null)
      where.add(PlanningCenterApiWhere.parse('role', whereRole));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups Attendance Object
///
/// - Application:        groups
/// - Id:                 attendance
/// - Type:               Attendance
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsAttendance.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isAttended` (ro) -> PCO: `attended`
/// - `role` (ro) -> PCO: `role`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-attendance-person`: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
///
/// Inbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Attendance",
///   "id": "1",
///   "attributes": {
///     "attended": true,
///     "role": "value"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsAttendance extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Attendance';
  static const String kTypeId = 'attendance';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/events/1/attendances';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=value
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy => ['first_name', 'last_name', 'role'];

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
  static const kAttended = 'attended';
  static const kRole = 'role';

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
  bool get isAttended => _attributes[kAttended] == true;
  String get role => _attributes[kRole] ?? '';

  // typed getters for each relationship

  PcoGroupsPerson? get includedPerson =>
      _firstOrNull<PcoGroupsPerson>(relationships['person']);

  // Class Constructors
  PcoGroupsAttendance.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsAttendance.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsAttendance] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGroupsAttendance(
      {String? id,
      bool? isAttended,
      String? role,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsAttendance.empty();
    obj._id = id;
    if (isAttended != null) obj._attributes['attended'] = isAttended;
    if (role != null) obj._attributes['role'] = role;

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

  /// Will get a collection of [PcoGroupsAttendance] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/attendances`
  ///
  /// Available Query Filters:
  /// - `attended`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsAttendance>> getFromEvent(
    String eventId, {
    String? id,
    PcoGroupsAttendanceQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoGroupsAttendanceQuery();

    if (includePerson) query.include.add('person');
    var url = '/groups/v2/events/$eventId/attendances';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person`
  Future<PcoCollection<PcoGroupsPerson>> getPerson(
      {PcoGroupsPersonQuery? query}) async {
    query ??= PcoGroupsPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
