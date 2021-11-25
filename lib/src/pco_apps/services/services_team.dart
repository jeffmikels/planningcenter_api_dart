/// This file was generated on 2021-11-25T00:07:20.297210


import '../../pco.dart';

/// This class represents a PCO Services Team Object
/// 
/// Application: services
/// Id:          team
/// Type:        Team
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Team within a Service Type.
/// 
/// Example:
/// 
/// {"type":"Team","id":"1","attributes":{"name":"string","rehearsal_team":true,"sequence":1,"schedule_to":"string","default_status":"string","default_prepare_notifications":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","archived_at":"2000-01-01T12:00:00Z","assigned_directly":true,"secure_team":true,"last_plan_from":"string","stage_color":"string","stage_variant":"string"},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}},"default_responds_to":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/teams
/// 
/// possible includes with parameter ?include=a,b
/// @people: include associated people 
/// @person_team_position_assignments: include associated person_team_position_assignments 
/// @service_type: include associated service_type 
/// @team_leaders: include associated team_leaders 
/// @team_positions: include associated team_positions 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesTeam extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Team';
  static const String kTypeId = 'team';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'team-organization-teams';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams';

  /// possible includes with parameter ?include=a,b
  /// @people: include associated people 
  /// @person_team_position_assignments: include associated person_team_position_assignments 
  /// @service_type: include associated service_type 
  /// @team_leaders: include associated team_leaders 
  /// @team_positions: include associated team_positions 
  static List<String> get canInclude => ['people','person_team_position_assignments','service_type','team_leaders','team_positions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kRehearsalTeam = 'rehearsal_team';
  static const kSequence = 'sequence';
  static const kScheduleTo = 'schedule_to';
  static const kDefaultStatus = 'default_status';
  static const kDefaultPrepareNotifications = 'default_prepare_notifications';
  static const kArchivedAt = 'archived_at';
  static const kAssignedDirectly = 'assigned_directly';
  static const kSecureTeam = 'secure_team';
  static const kLastPlanFrom = 'last_plan_from';
  static const kStageColor = 'stage_color';
  static const kStageVariant = 'stage_variant';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','archived_at','assigned_directly','rehearsal_team','schedule_to','stage_color','stage_variant'];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  bool get isRehearsalTeam => attributes[kRehearsalTeam] == true;
  int get sequence => attributes[kSequence] ?? 0;

  /// This determines whether a team is a split team or not.Accepted values: 1. "plan" (default) 2. "time" (designates as a split team)
  String get scheduleTo => attributes[kScheduleTo] ?? '';
  String get defaultStatus => attributes[kDefaultStatus] ?? '';
  bool get isDefaultPrepareNotifications => attributes[kDefaultPrepareNotifications] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  bool get isAssignedDirectly => attributes[kAssignedDirectly] == true;
  bool get isSecureTeam => attributes[kSecureTeam] == true;
  String get lastPlanFrom => attributes[kLastPlanFrom] ?? '';
  String get stageColor => attributes[kStageColor] ?? '';
  String get stageVariant => attributes[kStageVariant] ?? '';


  set name(String s) => attributes[kName] = s;
  set isRehearsalTeam(bool b) => attributes[kRehearsalTeam] = b;

  /// This determines whether a team is a split team or not.Accepted values: 1. "plan" (default) 2. "time" (designates as a split team)
  set scheduleTo(String s) => attributes[kScheduleTo] = s;
  set archivedAt(DateTime d) => attributes[kArchivedAt] = d.toIso8601String();
  set isAssignedDirectly(bool b) => attributes[kAssignedDirectly] = b;
  set stageColor(String s) => attributes[kStageColor] = s;
  set stageVariant(String s) => attributes[kStageVariant] = s;


  PcoServicesTeam() : super(kPcoApplication, kTypeString);
  PcoServicesTeam.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromPeopleAndUpPlanAndNeededPosition(String peopleId,String upPlanId,String neededPositionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams;
  static Future<PcoCollection<PcoServicesTeam>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromPeopleAndPlanPeople(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromServiceTypeAndPlanAndSignupTeam(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromPeopleAndSchedule(String peopleId,String scheduleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/teams;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromServiceTypeAndTeam(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignment(String peopleId,String planTimeId,String splitTeamRehearsalAssignmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromPeopleAndAssignedTeamLeader(String peopleId,String assignedTeamLeaderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getManyFromServiceTypeAndTeamPosition(String serviceTypeId,String teamPositionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromPeopleAndUpPlanAndNeededPosition(String peopleId,String upPlanId,String neededPositionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams;
  static Future<PcoCollection<PcoServicesTeam>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/teams' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromPeopleAndPlanPeople(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromServiceTypeAndPlanAndSignupTeam(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromPeopleAndSchedule(String peopleId,String scheduleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/teams;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromServiceTypeAndTeam(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/teams' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignment(String peopleId,String planTimeId,String splitTeamRehearsalAssignmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromPeopleAndAssignedTeamLeader(String peopleId,String assignedTeamLeaderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team;
  static Future<PcoCollection<PcoServicesTeam>> getSingleFromServiceTypeAndTeamPosition(String serviceTypeId,String teamPositionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesTeam.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/people
Future<PcoCollection<PcoServicesPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesPersonTeamPositionAssignment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
  var url = '$apiEndpoint/person_team_position_assignments';
  return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesPlanPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
Future<PcoCollection<PcoServicesPlanPerson>> getPlanPersonsPlanPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
  var url = '$apiEndpoint/plan_people';
  return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/service_type
Future<PcoCollection<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesServiceType.canInclude;
  var url = '$apiEndpoint/service_type';
  return PcoCollection.fromApiCall<PcoServicesServiceType>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesTeamLeader objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
Future<PcoCollection<PcoServicesTeamLeader>> getTeamLeaders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
  var url = '$apiEndpoint/team_leaders';
  return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesTeamPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
  var url = '$apiEndpoint/team_positions';
  return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion:apiVersion);
}
    


}
