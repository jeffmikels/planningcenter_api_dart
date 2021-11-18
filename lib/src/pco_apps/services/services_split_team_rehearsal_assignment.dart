/// This file was generated on 2021-11-17T23:59:27.143429


import '../../pco.dart';

/// This class represents a PCO Services SplitTeamRehearsalAssignment Object
/// 
/// Application: services
/// Id:          split_team_rehearsal_assignment
/// Type:        SplitTeamRehearsalAssignment
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// For Rehearsal/Other Times, maps a Split Team to selected Time Preference Options. For example, used to assign 8am Ushers to 7:30am call time, and 11am Ushers to 10:30am call time.
/// 
/// Example:
/// 
/// {"type":"SplitTeamRehearsalAssignment","id":"1","attributes":{"schedule_special_service_times":true},"relationships":{"team":{"data":{"type":"Team","id":"1"}},"time_preference_options":{"data":[{"type":"TimePreferenceOption","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// 
class PcoServicesSplitTeamRehearsalAssignment extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'SplitTeamRehearsalAssignment';
  static const String typeId = 'split_team_rehearsal_assignment';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kScheduleSpecialServiceTimes = 'schedule_special_service_times';


  // getters and setters
  @override
  List<String> get createAllowed => ['schedule_special_service_times'];
  @override
  List<String> get updateAllowed => ['schedule_special_service_times'];


  /// Controls if the related rehearsal/other time is assigned when a person is scheduled to a split team service time that does not match a Time Preference Option
  bool get isScheduleSpecialServiceTimes => attributes[kScheduleSpecialServiceTimes] == true;



  /// Controls if the related rehearsal/other time is assigned when a person is scheduled to a split team service time that does not match a Time Preference Option
  set isScheduleSpecialServiceTimes(bool b) => attributes[kScheduleSpecialServiceTimes] = b;


  PcoServicesSplitTeamRehearsalAssignment() : super(pcoApplication, typeString);
  PcoServicesSplitTeamRehearsalAssignment.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSplitTeamRehearsalAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments;
  static Future<List<PcoServicesSplitTeamRehearsalAssignment>> getManyFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentIds(String peopleId,String planTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSplitTeamRehearsalAssignment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSplitTeamRehearsalAssignment.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSplitTeamRehearsalAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments;
  static Future<PcoServicesSplitTeamRehearsalAssignment?> getSingleFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentIds(String peopleId,String planTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSplitTeamRehearsalAssignment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSplitTeamRehearsalAssignment.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
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
