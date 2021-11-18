/// This file was generated on 2021-11-17T23:59:27.146616


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
class PcoServicesTeam extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Team';
  static const String typeId = 'team';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'team-organization-teams';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoServicesTeam() : super(pcoApplication, typeString);
  PcoServicesTeam.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team;
  static Future<List<PcoServicesTeam>> getManyFromPeopleAndUpPlanAndNeededPositionAndTeamIds(String peopleId,String upPlanId,String neededPositionId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams;
  static Future<List<PcoServicesTeam>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team;
  static Future<List<PcoServicesTeam>> getManyFromPeopleAndPlanPeopleAndTeamIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams;
  static Future<List<PcoServicesTeam>> getManyFromServiceTypeAndPlanAndSignupTeamIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team;
  static Future<List<PcoServicesTeam>> getManyFromPeopleAndScheduleAndTeamIds(String peopleId,String scheduleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/teams;
  static Future<List<PcoServicesTeam>> getManyFromServiceTypeAndTeamIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/teams';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team;
  static Future<List<PcoServicesTeam>> getManyFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentAndTeamIds(String peopleId,String planTimeId,String splitTeamRehearsalAssignmentId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team;
  static Future<List<PcoServicesTeam>> getManyFromPeopleAndAssignedTeamLeaderAndTeamIds(String peopleId,String assignedTeamLeaderId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeam Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team;
  static Future<List<PcoServicesTeam>> getManyFromServiceTypeAndTeamPositionAndTeamIds(String serviceTypeId,String teamPositionId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeam> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeam.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team;
  static Future<PcoServicesTeam?> getSingleFromPeopleAndUpPlanAndNeededPositionAndTeamIds(String peopleId,String upPlanId,String neededPositionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_up_plans/$upPlanId/needed_positions/$neededPositionId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams;
  static Future<PcoServicesTeam?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team;
  static Future<PcoServicesTeam?> getSingleFromPeopleAndPlanPeopleAndTeamIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams;
  static Future<PcoServicesTeam?> getSingleFromServiceTypeAndPlanAndSignupTeamIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/signup_teams' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team;
  static Future<PcoServicesTeam?> getSingleFromPeopleAndScheduleAndTeamIds(String peopleId,String scheduleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules/$scheduleId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/teams;
  static Future<PcoServicesTeam?> getSingleFromServiceTypeAndTeamIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/teams' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team;
  static Future<PcoServicesTeam?> getSingleFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentAndTeamIds(String peopleId,String planTimeId,String splitTeamRehearsalAssignmentId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments/$splitTeamRehearsalAssignmentId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team;
  static Future<PcoServicesTeam?> getSingleFromPeopleAndAssignedTeamLeaderAndTeamIds(String peopleId,String assignedTeamLeaderId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/assigned_team_leaders/$assignedTeamLeaderId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeam Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team;
  static Future<PcoServicesTeam?> getSingleFromServiceTypeAndTeamPositionAndTeamIds(String serviceTypeId,String teamPositionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeam?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/team' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeam.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/people
Future<List<PcoServicesPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPersonTeamPositionAssignment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
Future<List<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPersonTeamPositionAssignment> retval = [];
  var url = '$apiEndpoint/person_team_position_assignments';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
Future<List<PcoServicesPlanPerson>> getPlanPersonsPlanPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanPerson> retval = [];
  var url = '$apiEndpoint/plan_people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/service_type
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_type';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeamLeader objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
Future<List<PcoServicesTeamLeader>> getTeamLeaders({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeamLeader> retval = [];
  var url = '$apiEndpoint/team_leaders';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeamLeader.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeamPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
Future<List<PcoServicesTeamPosition>> getTeamPositions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeamPosition> retval = [];
  var url = '$apiEndpoint/team_positions';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeamPosition.fromJson(itemData));
    }
  }
  return retval;
}
    

}
