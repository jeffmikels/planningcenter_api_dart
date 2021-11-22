/// This file was generated on 2021-11-22T16:37:08.847913


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesSplitTeamRehearsalAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SplitTeamRehearsalAssignment';
  static const String kTypeId = 'split_team_rehearsal_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoServicesSplitTeamRehearsalAssignment() : super(kPcoApplication, kTypeString);
  PcoServicesSplitTeamRehearsalAssignment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSplitTeamRehearsalAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments;
  static Future<List<PcoServicesSplitTeamRehearsalAssignment>> getManyFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentIds(String peopleId,String planTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSplitTeamRehearsalAssignment> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSplitTeamRehearsalAssignment.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSplitTeamRehearsalAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments;
  static Future<PcoServicesSplitTeamRehearsalAssignment?> getSingleFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignmentIds(String peopleId,String planTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSplitTeamRehearsalAssignment?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSplitTeamRehearsalAssignment.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
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
