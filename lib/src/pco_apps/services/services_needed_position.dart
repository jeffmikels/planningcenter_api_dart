/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.338795
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services NeededPosition Object
///
/// - Application:        services
/// - Id:                 needed_position
/// - Type:               NeededPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `team`: include associated team
/// - `time`: include associated time
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
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
      'https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions';
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

  /// pass `null` to remove key from attributes
  set quantity(int? x) =>
      (x == null) ? _attributes.remove(kQuantity) : _attributes[kQuantity] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set timeId(String? x) =>
      (x == null) ? _attributes.remove(kTimeId) : _attributes[kTimeId] = x;
  String get timeId => _attributes[kTimeId] ?? '';

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
  /// For type safe code, you should specify it here.
  List<T> includedTime<T extends PcoResource>() =>
      (relationships['time'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesNeededPosition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesNeededPosition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesNeededPosition] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesNeededPosition(String serviceTypeId, String planId,
      {int? quantity}) {
    var obj = PcoServicesNeededPosition.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    if (quantity != null) obj.quantity = quantity;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions`
  static Future<PcoCollection<PcoServicesNeededPosition>>
      getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeTeam = false,
    bool includeTime = false,
  }) async {
    query ??= PlanningCenterApiQuery();
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
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesNeededPosition.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time`
  Future<PcoCollection<PcoServicesPlanTime>> getTime({
    PlanningCenterApiQuery? query,
    bool includeSplitTeamRehearsalAssignments = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeSplitTeamRehearsalAssignments)
      query.include.add('split_team_rehearsal_assignments');
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
