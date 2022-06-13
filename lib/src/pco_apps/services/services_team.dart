/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.629515
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `people`: include associated people
/// - `person_team_position_assignments`: include associated person_team_position_assignments
/// - `service_type`: include associated service_type
/// - `team_leaders`: include associated team_leaders
/// - `team_positions`: include associated team_positions
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
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
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
/// - `team-organization-teams`: https://api.planningcenteronline.com/services/v2/teams
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
/// - `team-plan-signup_teams`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
/// - `team-schedule-team`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
/// - `team-servicetype-teams`: https://api.planningcenteronline.com/services/v2/service_types/1/teams
/// - `team-splitteamrehearsalassignment-team`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
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
  String get name => attributes[kName] ?? '';
  bool get isRehearsalTeam => attributes[kRehearsalTeam] == true;
  int get sequence => attributes[kSequence] ?? 0;
  String get scheduleTo => attributes[kScheduleTo] ?? '';
  String get defaultStatus => attributes[kDefaultStatus] ?? '';
  bool get isDefaultPrepareNotifications =>
      attributes[kDefaultPrepareNotifications] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  bool get isAssignedDirectly => attributes[kAssignedDirectly] == true;
  bool get isSecureTeam => attributes[kSecureTeam] == true;
  String get lastPlanFrom => attributes[kLastPlanFrom] ?? '';
  String get stageColor => attributes[kStageColor] ?? '';
  String get stageVariant => attributes[kStageVariant] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set isRehearsalTeam(bool? x) => (x == null)
      ? attributes.remove(kRehearsalTeam)
      : attributes[kRehearsalTeam] = x;

  /// This determines whether a team is a split team or not.Accepted values: 1. "plan" (default) 2. "time" (designates as a split team)

  /// pass `null` to remove key from attributes
  set scheduleTo(String? x) => (x == null)
      ? attributes.remove(kScheduleTo)
      : attributes[kScheduleTo] = x;

  /// pass `null` to remove key from attributes
  set archivedAt(DateTime? x) => (x == null)
      ? attributes.remove(kArchivedAt)
      : attributes[kArchivedAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set isAssignedDirectly(bool? x) => (x == null)
      ? attributes.remove(kAssignedDirectly)
      : attributes[kAssignedDirectly] = x;

  /// pass `null` to remove key from attributes
  set stageColor(String? x) => (x == null)
      ? attributes.remove(kStageColor)
      : attributes[kStageColor] = x;

  /// pass `null` to remove key from attributes
  set stageVariant(String? x) => (x == null)
      ? attributes.remove(kStageVariant)
      : attributes[kStageVariant] = x;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedPeople<T extends PcoResource>() =>
      relationships['people']?.cast<T>() ?? [];
  List<T> includedPersonTeamPositionAssignments<T extends PcoResource>() =>
      relationships['person_team_position_assignments']?.cast<T>() ?? [];
  List<T> includedServiceType<T extends PcoResource>() =>
      relationships['service_type']?.cast<T>() ?? [];
  List<T> includedTeamLeaders<T extends PcoResource>() =>
      relationships['team_leaders']?.cast<T>() ?? [];
  List<T> includedTeamPositions<T extends PcoResource>() =>
      relationships['team_positions']?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesTeam.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesTeam.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTeam] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/teams`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesTeam(String serviceTypeId,
      {String? name,
      DateTime? archivedAt,
      bool? isAssignedDirectly,
      bool? isRehearsalTeam,
      String? scheduleTo,
      String? stageColor,
      String? stageVariant}) {
    var obj = PcoServicesTeam.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/teams';
    if (name != null) obj.name = name;
    if (archivedAt != null) obj.archivedAt = archivedAt;
    if (isAssignedDirectly != null) obj.isAssignedDirectly = isAssignedDirectly;
    if (isRehearsalTeam != null) obj.isRehearsalTeam = isRehearsalTeam;
    if (scheduleTo != null) obj.scheduleTo = scheduleTo;
    if (stageColor != null) obj.stageColor = stageColor;
    if (stageVariant != null) obj.stageVariant = stageVariant;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/teams`
  static Future<PcoCollection<PcoServicesTeam>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/teams';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team`
  static Future<PcoCollection<PcoServicesTeam>>
      getFromPeopleAndUpPlanAndNeededPosition(
          String peopleId, String upPlanId, String neededPositionId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url =
        '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people/$planPeopleId/team`
  static Future<PcoCollection<PcoServicesTeam>> getFromPeopleAndPlanPeople(
      String peopleId, String planPeopleId,
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams`
  static Future<PcoCollection<PcoServicesTeam>>
      getSignupTeamsFromServiceTypeAndPlan(String serviceTypeId, String planId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/schedules/$scheduleId/team`
  static Future<PcoCollection<PcoServicesTeam>> getFromPeopleAndSchedule(
      String peopleId, String scheduleId,
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/teams`
  static Future<PcoCollection<PcoServicesTeam>> getFromServiceType(
      String serviceTypeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/teams';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team`
  static Future<PcoCollection<PcoServicesTeam>>
      getFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignment(String peopleId,
          String planTimeId, String splitTeamRehearsalAssignmentId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url =
        '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team`
  static Future<PcoCollection<PcoServicesTeam>>
      getFromPeopleAndAssignedTeamLeader(
          String peopleId, String assignedTeamLeaderId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url =
        '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team`
  static Future<PcoCollection<PcoServicesTeam>>
      getFromServiceTypeAndTeamPosition(
          String serviceTypeId, String teamPositionId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team';

    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments`
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>>
      getPersonTeamPositionAssignments(
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes)
      query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(
        url,
        query: query,
        apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/plan_people`
  Future<PcoCollection<PcoServicesPlanPerson>> getPlanPeople(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '$apiEndpoint/plan_people';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/service_type`
  Future<PcoCollection<PcoServicesServiceType>> getServiceType(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '$apiEndpoint/service_type';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_leaders`
  Future<PcoCollection<PcoServicesTeamLeader>> getTeamLeaders(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '$apiEndpoint/team_leaders';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_positions`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '$apiEndpoint/team_positions';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
