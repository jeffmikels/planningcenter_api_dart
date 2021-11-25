/// This file was generated on 2021-11-25T00:07:20.266677


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
/// possible includes with parameter ?include=a,b
/// @person: include associated person 
/// @team_position: include associated team_position 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
class PcoServicesPersonTeamPositionAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PersonTeamPositionAssignment';
  static const String kTypeId = 'person_team_position_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'personteampositionassignment-team-person_team_position_assignments';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments';

  /// possible includes with parameter ?include=a,b
  /// @person: include associated person 
  /// @team_position: include associated team_position 
  static List<String> get canInclude => ['person','team_position'];

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


  PcoServicesPersonTeamPositionAssignment() : super(kPcoApplication, kTypeString);
  PcoServicesPersonTeamPositionAssignment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getManyFromPeopleAndPersonTeamPositionAssignment(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getManyFromTeamAndPersonTeamPositionAssignment(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/teams/$teamId/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoServicesPersonTeamPositionAssignment Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getManyFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(String serviceTypeId,String teamPositionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getSingleFromPeopleAndPersonTeamPositionAssignment(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/person_team_position_assignments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getSingleFromTeamAndPersonTeamPositionAssignment(String teamId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/teams/$teamId/person_team_position_assignments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoServicesPersonTeamPositionAssignment Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments;
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getSingleFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(String serviceTypeId,String teamPositionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesPersonTeamPositionAssignment.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
Future<PcoCollection<PcoServicesPerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesTeamPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
Future<PcoCollection<PcoServicesTeamPosition>> getTeamPositions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
  var url = '$apiEndpoint/team_position';
  return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion:apiVersion);
}
    


}
