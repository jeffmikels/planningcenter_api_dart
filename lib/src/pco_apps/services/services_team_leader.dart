/// This file was generated on 2021-11-19T12:10:42.151276


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
/// possible includes with parameter ?include=a,b
/// @people: include associated people 
/// @team: include associated team 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
class PcoServicesTeamLeader extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamLeader';
  static const String kTypeId = 'team_leader';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'teamleader-team-team_leaders';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_leaders';

  /// possible includes with parameter ?include=a,b
  /// @people: include associated people 
  /// @team: include associated team 
  static List<String> get canInclude => ['people','team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name','last_name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoServicesTeamLeader() : super(kPcoApplication, kTypeString);
  PcoServicesTeamLeader.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTeamLeader Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/team_leaders;
  static Future<List<PcoServicesTeamLeader>> getManyFromPeopleAndTeamLeaderIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTeamLeader> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/people/$peopleId/team_leaders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamLeader.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeamLeader Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders;
  static Future<List<PcoServicesTeamLeader>> getManyFromTeamAndTeamLeaderIds(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTeamLeader> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/teams/$teamId/team_leaders';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamLeader.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTeamLeader Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/team_leaders;
  static Future<PcoServicesTeamLeader?> getSingleFromPeopleAndTeamLeaderIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTeamLeader?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/people/$peopleId/team_leaders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamLeader.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesTeamLeader Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders;
  static Future<PcoServicesTeamLeader?> getSingleFromTeamAndTeamLeaderIds(String teamId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTeamLeader?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/teams/$teamId/team_leaders' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamLeader.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
Future<List<PcoServicesPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPerson.canInclude;
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/team';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
