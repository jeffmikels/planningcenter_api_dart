/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.977227
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesTeamOrder { createdAt, name, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesTeamFilter { none }

/// Creates a [PcoServicesTeamQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePeople`: include associated people
/// - `includePersonTeamPositionAssignments`: include associated person_team_position_assignments
/// - `includeServiceType`: include associated service_type
/// - `includeTeamLeaders`: include associated team_leaders
/// - `includeTeamPositions`: include associated team_positions
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesTeamQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesTeam] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
/// - `PcoServicesTeamOrder.createdAt` : will order by `created_at`
/// - `PcoServicesTeamOrder.name` : will order by `name`
/// - `PcoServicesTeamOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesTeamQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesTeamOrder, String> _orderMap = {
    PcoServicesTeamOrder.createdAt: 'created_at',
    PcoServicesTeamOrder.name: 'name',
    PcoServicesTeamOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesTeamOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesTeamFilter, String> _filterMap = {};
  static String filterString(PcoServicesTeamFilter filter) =>
      _filterMap[filter]!;

  PcoServicesTeamQuery({
    /// include associated people
    /// when true, adds `?include=people` to url
    bool includePeople = false,

    /// include associated person_team_position_assignments
    /// when true, adds `?include=person_team_position_assignments` to url
    bool includePersonTeamPositionAssignments = false,

    /// include associated service_type
    /// when true, adds `?include=service_type` to url
    bool includeServiceType = false,

    /// include associated team_leaders
    /// when true, adds `?include=team_leaders` to url
    bool includeTeamLeaders = false,

    /// include associated team_positions
    /// when true, adds `?include=team_positions` to url
    bool includeTeamPositions = false,

    /// when true, adds `?include=people,person_team_position_assignments,service_type,team_leaders,team_positions` to url parameters
    bool includeAll = false,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    PcoServicesTeamOrder? orderBy,

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
    if (includeAll || includePeople) include.add('people');
    if (includeAll || includePersonTeamPositionAssignments)
      include.add('person_team_position_assignments');
    if (includeAll || includeServiceType) include.add('service_type');
    if (includeAll || includeTeamLeaders) include.add('team_leaders');
    if (includeAll || includeTeamPositions) include.add('team_positions');

    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services Team Object
///
/// - Application:        services
/// - Id:                 team
/// - Type:               Team
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/teams
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/teams
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesTeam()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesTeam.fromJson()` constructor.
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
/// A Team within a Service Type.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `isRehearsalTeam` (rw) -> PCO: `rehearsal_team`
/// - `sequence` (ro) -> PCO: `sequence`
/// - `scheduleTo` (rw) -> PCO: `schedule_to`
/// - `defaultStatus` (ro) -> PCO: `default_status`
/// - `isDefaultPrepareNotifications` (ro) -> PCO: `default_prepare_notifications`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `archivedAt` (rw) -> PCO: `archived_at`
/// - `isAssignedDirectly` (rw) -> PCO: `assigned_directly`
/// - `isSecureTeam` (ro) -> PCO: `secure_team`
/// - `lastPlanFrom` (ro) -> PCO: `last_plan_from`
/// - `stageColor` (rw) -> PCO: `stage_color`
/// - `stageVariant` (rw) -> PCO: `stage_variant`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-team-people`: https://api.planningcenteronline.com/services/v2/teams/1/people
/// - `personteampositionassignment-team-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
/// - `planperson-team-plan_people`: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
/// - `servicetype-team-service_type`: https://api.planningcenteronline.com/services/v2/teams/1/service_type
/// - `teamleader-team-team_leaders`: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
/// - `teamposition-team-team_positions`: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
///
/// Inbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/needed_positions/1/team
/// - `team-organization-teams`: https://api.planningcenteronline.com/services/v2/teams
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
/// - `team-plan-signup_teams`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
/// - `team-schedule-team`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
/// - `team-servicetype-teams`: https://api.planningcenteronline.com/services/v2/service_types/1/teams
/// - `team-splitteamrehearsalassignment-team`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times/1/split_team_rehearsal_assignments/1/team
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders/1/team
/// - `team-teamposition-team`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Team",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "rehearsal_team": true,
///     "sequence": 1,
///     "schedule_to": "string",
///     "default_status": "string",
///     "default_prepare_notifications": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "assigned_directly": true,
///     "secure_team": true,
///     "last_plan_from": "string",
///     "stage_color": "string",
///     "stage_variant": "string"
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "default_responds_to": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesTeam extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Team';
  static const String kTypeId = 'team';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/teams';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/teams';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people
  /// - `person_team_position_assignments`: include associated person_team_position_assignments
  /// - `service_type`: include associated service_type
  /// - `team_leaders`: include associated team_leaders
  /// - `team_positions`: include associated team_positions
  static List<String> get canInclude => [
        'people',
        'person_team_position_assignments',
        'service_type',
        'team_leaders',
        'team_positions'
      ];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'name', 'updated_at'];

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
  static const kRehearsalTeam = 'rehearsal_team';
  static const kSequence = 'sequence';
  static const kScheduleTo = 'schedule_to';
  static const kDefaultStatus = 'default_status';
  static const kDefaultPrepareNotifications = 'default_prepare_notifications';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kArchivedAt = 'archived_at';
  static const kAssignedDirectly = 'assigned_directly';
  static const kSecureTeam = 'secure_team';
  static const kLastPlanFrom = 'last_plan_from';
  static const kStageColor = 'stage_color';
  static const kStageVariant = 'stage_variant';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'name',
        'archived_at',
        'assigned_directly',
        'rehearsal_team',
        'schedule_to',
        'stage_color',
        'stage_variant'
      ];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  bool get isRehearsalTeam => _attributes[kRehearsalTeam] == true;
  int get sequence => _attributes[kSequence] ?? 0;
  String get scheduleTo => _attributes[kScheduleTo] ?? '';
  String get defaultStatus => _attributes[kDefaultStatus] ?? '';
  bool get isDefaultPrepareNotifications =>
      _attributes[kDefaultPrepareNotifications] == true;
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  bool get isAssignedDirectly => _attributes[kAssignedDirectly] == true;
  bool get isSecureTeam => _attributes[kSecureTeam] == true;
  String get lastPlanFrom => _attributes[kLastPlanFrom] ?? '';
  String get stageColor => _attributes[kStageColor] ?? '';
  String get stageVariant => _attributes[kStageVariant] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set isRehearsalTeam(bool? x) => (x == null)
      ? _attributes.remove(kRehearsalTeam)
      : _attributes[kRehearsalTeam] = x;

  /// This determines whether a team is a split team or not.Accepted values: 1. "plan" (default) 2. "time" (designates as a split team)
  ///
  /// pass `null` to remove key from attributes
  set scheduleTo(String? x) => (x == null)
      ? _attributes.remove(kScheduleTo)
      : _attributes[kScheduleTo] = x;

  ///
  /// pass `null` to remove key from attributes
  set archivedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kArchivedAt)
      : _attributes[kArchivedAt] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set isAssignedDirectly(bool? x) => (x == null)
      ? _attributes.remove(kAssignedDirectly)
      : _attributes[kAssignedDirectly] = x;

  ///
  /// pass `null` to remove key from attributes
  set stageColor(String? x) => (x == null)
      ? _attributes.remove(kStageColor)
      : _attributes[kStageColor] = x;

  ///
  /// pass `null` to remove key from attributes
  set stageVariant(String? x) => (x == null)
      ? _attributes.remove(kStageVariant)
      : _attributes[kStageVariant] = x;

  // typed getters for each relationship

  List<PcoServicesPerson> get includedPeople =>
      (relationships['people'] as List?)?.cast<PcoServicesPerson>() ?? [];
  List<PcoServicesPersonTeamPositionAssignment>
      get includedPersonTeamPositionAssignments =>
          (relationships['person_team_position_assignments'] as List?)
              ?.cast<PcoServicesPersonTeamPositionAssignment>() ??
          [];
  PcoServicesServiceType? get includedServiceType =>
      _firstOrNull<PcoServicesServiceType>(relationships['service_type']);
  List<PcoServicesTeamLeader> get includedTeamLeaders =>
      (relationships['team_leaders'] as List?)?.cast<PcoServicesTeamLeader>() ??
      [];
  List<PcoServicesTeamPosition> get includedTeamPositions =>
      (relationships['team_positions'] as List?)
          ?.cast<PcoServicesTeamPosition>() ??
      [];

  // Class Constructors
  PcoServicesTeam.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesTeam.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTeam] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/teams`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `archivedAt`, `isAssignedDirectly`, `isRehearsalTeam`, `scheduleTo`, `stageColor`, `stageVariant`
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesTeam(
      {required String serviceTypeId,
      String? id,
      String? name,
      bool? isRehearsalTeam,
      int? sequence,
      String? scheduleTo,
      String? defaultStatus,
      bool? isDefaultPrepareNotifications,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? archivedAt,
      bool? isAssignedDirectly,
      bool? isSecureTeam,
      String? lastPlanFrom,
      String? stageColor,
      String? stageVariant,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesTeam.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/teams';
    if (name != null) obj._attributes['name'] = name;
    if (isRehearsalTeam != null)
      obj._attributes['rehearsal_team'] = isRehearsalTeam;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (scheduleTo != null) obj._attributes['schedule_to'] = scheduleTo;
    if (defaultStatus != null)
      obj._attributes['default_status'] = defaultStatus;
    if (isDefaultPrepareNotifications != null)
      obj._attributes['default_prepare_notifications'] =
          isDefaultPrepareNotifications;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (isAssignedDirectly != null)
      obj._attributes['assigned_directly'] = isAssignedDirectly;
    if (isSecureTeam != null) obj._attributes['secure_team'] = isSecureTeam;
    if (lastPlanFrom != null) obj._attributes['last_plan_from'] = lastPlanFrom;
    if (stageColor != null) obj._attributes['stage_color'] = stageColor;
    if (stageVariant != null) obj._attributes['stage_variant'] = stageVariant;

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

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/teams`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>> get({
    String? id,
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '/services/v2/teams';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/needed_positions/$neededPositionId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>>
      getFromSeriesAndPlanAndNeededPosition(
    String seriesId,
    String planId,
    String neededPositionId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url =
        '/services/v2/series/$seriesId/plans/$planId/needed_positions/$neededPositionId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/plan_people/$planPersonId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>> getFromPersonAndPlanPerson(
    String personId,
    String planPersonId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '/services/v2/people/$personId/plan_people/$planPersonId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>>
      getSignupTeamsFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/schedules/$scheduleId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>> getFromPersonAndSchedule(
    String personId,
    String scheduleId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '/services/v2/people/$personId/schedules/$scheduleId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/teams`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '/services/v2/service_types/$serviceTypeId/teams';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_times/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>>
      getFromServiceTypeAndPlanTimeAndSplitTeamRehearsalAssignment(
    String serviceTypeId,
    String planTimeId,
    String splitTeamRehearsalAssignmentId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url =
        '/services/v2/service_types/$serviceTypeId/plan_times/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/team_leaders/$teamLeaderId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>> getFromPersonAndTeamLeader(
    String personId,
    String teamLeaderId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url = '/services/v2/people/$personId/team_leaders/$teamLeaderId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesTeam>>
      getFromServiceTypeAndTeamPosition(
    String serviceTypeId,
    String teamPositionId, {
    PcoServicesTeamQuery? query,
    bool includeAll = false,
    bool includePeople = false,
    bool includePersonTeamPositionAssignments = false,
    bool includeServiceType = false,
    bool includeTeamLeaders = false,
    bool includeTeamPositions = false,
  }) async {
    query ??= PcoServicesTeamQuery();
    if (includeAll) query.include.addAll(PcoServicesTeam.canInclude);
    if (includePeople) query.include.add('people');
    if (includePersonTeamPositionAssignments)
      query.include.add('person_team_position_assignments');
    if (includeServiceType) query.include.add('service_type');
    if (includeTeamLeaders) query.include.add('team_leaders');
    if (includeTeamPositions) query.include.add('team_positions');
    var url =
        '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople(
      {PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments`
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getPersonTeamPositionAssignments(
          {PcoServicesPersonTeamPositionAssignmentQuery? query}) async {
    query ??= PcoServicesPersonTeamPositionAssignmentQuery();
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/plan_people`
  Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeople(
      {PcoServicesPlanPersonQuery? query}) async {
    query ??= PcoServicesPlanPersonQuery();
    var url = '$apiEndpoint/plan_people';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/service_type`
  Future<PcoCollection<PcoServicesServiceType>> getServiceType(
      {PcoServicesServiceTypeQuery? query}) async {
    query ??= PcoServicesServiceTypeQuery();
    var url = '$apiEndpoint/service_type';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_leaders`
  Future<PcoCollection<PcoServicesTeamLeader>> getTeamLeaders(
      {PcoServicesTeamLeaderQuery? query}) async {
    query ??= PcoServicesTeamLeaderQuery();
    var url = '$apiEndpoint/team_leaders';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_positions`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions(
      {PcoServicesTeamPositionQuery? query}) async {
    query ??= PcoServicesTeamPositionQuery();
    var url = '$apiEndpoint/team_positions';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
