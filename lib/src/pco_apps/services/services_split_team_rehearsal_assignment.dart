/// This file was generated on 2022-03-04T15:29:14.086908


import '../../pco.dart';

/// This class represents a PCO Services SplitTeamRehearsalAssignment Object
/// 
/// - Application:        services
/// - Id:                 split_team_rehearsal_assignment
/// - Type:               SplitTeamRehearsalAssignment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// 
/// Description:
/// For Rehearsal/Other Times, maps a Split Team to selected Time Preference Options. For example, used to assign 8am Ushers to 7:30am call time, and 11am Ushers to 10:30am call time.
/// 
/// Example:
/// ```json
/// {
///   "type": "SplitTeamRehearsalAssignment",
///   "id": "1",
///   "attributes": {
///     "schedule_special_service_times": true
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "time_preference_options": {
///       "data": [
///         {
///           "type": "TimePreferenceOption",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `team-splitteamrehearsalassignment-team`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
/// 
/// All Inbound Edges:
/// - `splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// 
/// All Actions:
/// NONE
///
class PcoServicesSplitTeamRehearsalAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SplitTeamRehearsalAssignment';
  static const String kTypeId = 'split_team_rehearsal_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kScheduleSpecialServiceTimes = 'schedule_special_service_times';


  // getters and setters
  @override
  List<String> get createAllowed => ['schedule_special_service_times'];

  @override
  List<String> get updateAllowed => ['schedule_special_service_times'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  bool get isScheduleSpecialServiceTimes => attributes[kScheduleSpecialServiceTimes] == true;
  

  // setters for object attributes

  
  /// Controls if the related rehearsal/other time is assigned when a person is scheduled to a split team service time that does not match a Time Preference Option
  set isScheduleSpecialServiceTimes(bool b) => attributes[kScheduleSpecialServiceTimes] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesSplitTeamRehearsalAssignment() : super(kPcoApplication, kTypeString);
  PcoServicesSplitTeamRehearsalAssignment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesSplitTeamRehearsalAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments`
  static Future<PcoCollection<PcoServicesSplitTeamRehearsalAssignment>> getFromPeopleAndPlanTime(String peopleId,String planTimeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/next_plan_time/$planTimeId/split_team_rehearsal_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSplitTeamRehearsalAssignment>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
