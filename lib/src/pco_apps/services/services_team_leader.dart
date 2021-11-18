/// This file was generated on 2021-11-17T23:59:27.147450


import '../../pco.dart';

/// This class represents a PCO Services TeamLeader Object
/// 
/// Application: services
/// Id:          team_leader
/// Type:        TeamLeader
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A leader of a specific Team in a Service Type.
/// 
/// Example:
/// 
/// {"type":"TeamLeader","id":"1","attributes":{"send_responses_for_accepts":true,"send_responses_for_declines":true,"send_responses_for_blockouts":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"team":{"data":{"type":"Team","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders
/// 
class PcoServicesTeamLeader extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'TeamLeader';
  static const String typeId = 'team_leader';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'teamleader-team-team_leaders';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_leaders';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSendResponsesForAccepts = 'send_responses_for_accepts';
  static const kSendResponsesForDeclines = 'send_responses_for_declines';
  static const kSendResponsesForBlockouts = 'send_responses_for_blockouts';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isSendResponsesForAccepts => attributes[kSendResponsesForAccepts] == true;
  bool get isSendResponsesForDeclines => attributes[kSendResponsesForDeclines] == true;
  bool get isSendResponsesForBlockouts => attributes[kSendResponsesForBlockouts] == true;




  PcoServicesTeamLeader() : super(pcoApplication, typeString);
  PcoServicesTeamLeader.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesTeamLeader Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/team_leaders;
  static Future<List<PcoServicesTeamLeader>> getManyFromPeopleAndTeamLeaderIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeamLeader> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/team_leaders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamLeader.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeamLeader Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders;
  static Future<List<PcoServicesTeamLeader>> getManyFromTeamAndTeamLeaderIds(String teamId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesTeamLeader> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/team_leaders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamLeader.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTeamLeader Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/team_leaders;
  static Future<PcoServicesTeamLeader?> getSingleFromPeopleAndTeamLeaderIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeamLeader?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/team_leaders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamLeader.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesTeamLeader Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders;
  static Future<PcoServicesTeamLeader?> getSingleFromTeamAndTeamLeaderIds(String teamId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesTeamLeader?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/team_leaders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamLeader.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
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
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/team';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData));
    }
  }
  return retval;
}
    

}
