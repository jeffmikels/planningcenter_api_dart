/// This file was generated on 2021-11-17T23:59:27.121004


import '../../pco.dart';

/// This class represents a PCO Services PersonTeamPositionAssignment Object
/// 
/// Application: services
/// Id:          person_team_position_assignment
/// Type:        PersonTeamPositionAssignment
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A person's assignment to a position within a team.
/// 
/// Example:
/// 
/// {"type":"PersonTeamPositionAssignment","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","schedule_preference":"string","preferred_weeks":[]},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"team_position":{"data":{"type":"TeamPosition","id":"1"}},"time_preference_options":{"data":[{"type":"TimePreferenceOption","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// 
class PcoServicesPersonTeamPositionAssignment extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'PersonTeamPositionAssignment';
  static const String typeId = 'person_team_position_assignment';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'personteampositionassignment-team-person_team_position_assignments';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSchedulePreference = 'schedule_preference';
  static const kPreferredWeeks = 'preferred_weeks';


  // getters and setters
  @override
  List<String> get createAllowed => ['schedule_preference','preferred_weeks','time_preference_option_ids','person_id'];
  @override
  List<String> get updateAllowed => ['schedule_preference','preferred_weeks','time_preference_option_ids'];


  /// Possible Values:
  ///  "Every week"
  ///  "Every other week"
  ///  "Every 3rd week"
  ///  "Every 4th week"
  ///  "Every 5th week"
  ///  "Every 6th week"
  ///  "Once a month"
  ///  "Twice a month"
  ///  "Three times a month"
  ///  "Choose Weeks"
  String get schedulePreference => attributes[kSchedulePreference] ?? '';

  /// When `schedule_preference` is set to "Choose Weeks" then this
  ///indicates which weeks are preferred (checked).
  ///e.g. ['1', '3', '5'] to prefer odd numbered weeks.
  List get preferredWeeks => attributes[kPreferredWeeks] ?? [];



  /// Possible Values:
  ///  "Every week"
  ///  "Every other week"
  ///  "Every 3rd week"
  ///  "Every 4th week"
  ///  "Every 5th week"
  ///  "Every 6th week"
  ///  "Once a month"
  ///  "Twice a month"
  ///  "Three times a month"
  ///  "Choose Weeks"
  set schedulePreference(String s) => attributes[kSchedulePreference] = s;

  /// When `schedule_preference` is set to "Choose Weeks" then this
  ///indicates which weeks are preferred (checked).
  ///e.g. ['1', '3', '5'] to prefer odd numbered weeks.
  set preferredWeeks(List a) => attributes[kPreferredWeeks] = a;


  PcoServicesPersonTeamPositionAssignment() : super(pcoApplication, typeString);
  PcoServicesPersonTeamPositionAssignment.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments;
  static Future<List<PcoServicesPersonTeamPositionAssignment>> getManyFromPeopleAndPersonTeamPositionAssignmentIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPersonTeamPositionAssignment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/person_team_position_assignments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments;
  static Future<List<PcoServicesPersonTeamPositionAssignment>> getManyFromTeamAndPersonTeamPositionAssignmentIds(String teamId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPersonTeamPositionAssignment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/person_team_position_assignments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments;
  static Future<List<PcoServicesPersonTeamPositionAssignment>> getManyFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentIds(String serviceTypeId,String teamPositionId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPersonTeamPositionAssignment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments;
  static Future<PcoServicesPersonTeamPositionAssignment?> getSingleFromPeopleAndPersonTeamPositionAssignmentIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPersonTeamPositionAssignment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/person_team_position_assignments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments;
  static Future<PcoServicesPersonTeamPositionAssignment?> getSingleFromTeamAndPersonTeamPositionAssignmentIds(String teamId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPersonTeamPositionAssignment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/person_team_position_assignments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments;
  static Future<PcoServicesPersonTeamPositionAssignment?> getSingleFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentIds(String serviceTypeId,String teamPositionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPersonTeamPositionAssignment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
Future<List<PcoServicesPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeamPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
Future<List<PcoServicesTeamPosition>> getTeamPositions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeamPosition> retval = [];
  var url = '$apiEndpoint/team_position';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeamPosition.fromJson(itemData));
    }
  }
  return retval;
}
    

}
