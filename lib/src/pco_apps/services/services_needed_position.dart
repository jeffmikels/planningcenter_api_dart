/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.487007
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesNeededPositionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesNeededPositionFilter { none }

/// Creates a [PcoServicesNeededPositionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeTeam`: include associated team
/// - `includeTime`: include associated time
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesNeededPositionQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesNeededPositionQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesNeededPositionOrder, String> _orderMap = {};
  static String orderString(PcoServicesNeededPositionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesNeededPositionFilter, String> _filterMap = {};
  static String filterString(PcoServicesNeededPositionFilter filter) =>
      _filterMap[filter]!;

  PcoServicesNeededPositionQuery({
    /// include associated team
    /// when true, adds `?include=team` to url
    bool includeTeam = false,

    /// include associated time
    /// when true, adds `?include=time` to url
    bool includeTime = false,

    /// when true, adds `?include=team,time` to url parameters
    bool includeAll = false,

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
    if (includeAll || includeTeam) include.add('team');
    if (includeAll || includeTime) include.add('time');
  }
}

/// This class represents a PCO Services NeededPosition Object
///
/// - Application:        services
/// - Id:                 needed_position
/// - Type:               NeededPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesNeededPosition()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesNeededPosition.fromJson()` constructor.
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
/// An amount of unfilled positions needed within a team in a plan.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `quantity` (rw) -> PCO: `quantity`
/// - `teamPositionName` (ro) -> PCO: `team_position_name`
/// - `scheduledTo` (ro) -> PCO: `scheduled_to`
/// - `timeId` (wo) -> PCO: `time_id`
/// - `timePreferenceOptionId` (wo) -> PCO: `time_preference_option_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions/1/team
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions/1/time
///
/// Inbound Edges:
/// - `neededposition-plan-needed_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NeededPosition",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "team_position_name": "string",
///     "scheduled_to": "string"
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "time_preference_option": {
///       "data": {
///         "type": "TimePreferenceOption",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesNeededPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'NeededPosition';
  static const String kTypeId = 'needed_position';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team
  /// - `time`: include associated time
  static List<String> get canInclude => ['team', 'time'];

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
  static const kQuantity = 'quantity';
  static const kTeamPositionName = 'team_position_name';
  static const kScheduledTo = 'scheduled_to';
  static const kTimeId = 'time_id';
  static const kTimePreferenceOptionId = 'time_preference_option_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['quantity', 'time_id', 'time_preference_option_id'];

  @override
  List<String> get updateAllowed => ['quantity'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  int get quantity => _attributes[kQuantity] ?? 0;
  String get teamPositionName => _attributes[kTeamPositionName] ?? '';
  String get scheduledTo => _attributes[kScheduledTo] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set quantity(int? x) =>
      (x == null) ? _attributes.remove(kQuantity) : _attributes[kQuantity] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set timeId(String? x) =>
      (x == null) ? _attributes.remove(kTimeId) : _attributes[kTimeId] = x;
  String get timeId => _attributes[kTimeId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set timePreferenceOptionId(String? x) => (x == null)
      ? _attributes.remove(kTimePreferenceOptionId)
      : _attributes[kTimePreferenceOptionId] = x;
  String get timePreferenceOptionId =>
      _attributes[kTimePreferenceOptionId] ?? '';

  // typed getters for each relationship

  PcoServicesTeam? get includedTeam =>
      _firstOrNull<PcoServicesTeam>(relationships['team']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedTime<T extends PcoResource>() =>
      (relationships['time'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesNeededPosition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesNeededPosition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesNeededPosition] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `quantity`, `timeId`, `timePreferenceOptionId`
  /// - FIELDS USED WHEN UPDATING: `quantity`
  factory PcoServicesNeededPosition(
      {required String serviceTypeId,
      required String planId,
      String? id,
      int? quantity,
      String? teamPositionName,
      String? scheduledTo,
      String? timeId,
      String? timePreferenceOptionId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesNeededPosition.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (teamPositionName != null)
      obj._attributes['team_position_name'] = teamPositionName;
    if (scheduledTo != null) obj._attributes['scheduled_to'] = scheduledTo;
    if (timeId != null) obj._attributes['time_id'] = timeId;
    if (timePreferenceOptionId != null)
      obj._attributes['time_preference_option_id'] = timePreferenceOptionId;

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

  /// Will get a collection of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesNeededPosition>>
      getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesNeededPositionQuery? query,
    bool includeAll = false,
    bool includeTeam = false,
    bool includeTime = false,
  }) async {
    query ??= PcoServicesNeededPositionQuery();
    if (includeAll) query.include.addAll(PcoServicesNeededPosition.canInclude);
    if (includeTeam) query.include.add('team');
    if (includeTime) query.include.add('time');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam(
      {PcoServicesTeamQuery? query}) async {
    query ??= PcoServicesTeamQuery();
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions/1/time`
  Future<PcoCollection<PcoServicesPlanTime>> getTime(
      {PcoServicesPlanTimeQuery? query}) async {
    query ??= PcoServicesPlanTimeQuery();
    var url = '$apiEndpoint/time';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
