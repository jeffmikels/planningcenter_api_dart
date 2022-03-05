/// This file was generated on 2022-03-04T20:00:53.380003


import '../../pco.dart';

/// This class represents a PCO Services PersonTeamPositionAssignment Object
/// 
/// - Application:        services
/// - Id:                 person_team_position_assignment
/// - Type:               PersonTeamPositionAssignment
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// 
/// Description:
/// A person's assignment to a position within a team.
/// 
/// Example:
/// ```json
/// {
///   "type": "PersonTeamPositionAssignment",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "schedule_preference": "string",
///     "preferred_weeks": []
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "team_position": {
///       "data": {
///         "type": "TeamPosition",
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
/// - person: include associated person 
/// - team_position: include associated team_position 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// All Outbound Edges:
/// - `person-personteampositionassignment-person`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person
/// - `teamposition-personteampositionassignment-team_position`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
/// 
/// All Inbound Edges:
/// - `personteampositionassignment-person-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/people/1/person_team_position_assignments
/// - `personteampositionassignment-team-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
/// - `personteampositionassignment-teamposition-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// 
/// All Actions:
/// NONE
///
class PcoServicesPersonTeamPositionAssignment extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PersonTeamPositionAssignment';
  static const String kTypeId = 'person_team_position_assignment';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'personteampositionassignment-team-person_team_position_assignments';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  /// - `team_position`: include associated team_position 
  static List<String> get canInclude => ['person','team_position'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name','last_name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kSchedulePreference = 'schedule_preference';
  static const kPreferredWeeks = 'preferred_weeks';
  static const kTimePreferenceOptionIds = 'time_preference_option_ids';
  static const kPersonId = 'person_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['schedule_preference','preferred_weeks','time_preference_option_ids','person_id'];

  @override
  List<String> get updateAllowed => ['schedule_preference','preferred_weeks','time_preference_option_ids'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get schedulePreference => attributes[kSchedulePreference] ?? '';
  List get preferredWeeks => attributes[kPreferredWeeks] ?? [];
  

  // setters for object attributes

  
  /// Possible Values:
  ///   "Every week"
  ///   "Every other week"
  ///   "Every 3rd week"
  ///   "Every 4th week"
  ///   "Every 5th week"
  ///   "Every 6th week"
  ///   "Once a month"
  ///   "Twice a month"
  ///   "Three times a month"
  ///   "Choose Weeks"
  set schedulePreference(String s) => attributes[kSchedulePreference] = s;
  
  /// When `schedule_preference` is set to "Choose Weeks" then this
  /// indicates which weeks are preferred (checked).
  /// 
  /// e.g. ['1', '3', '5'] to prefer odd numbered weeks.
  set preferredWeeks(List a) => attributes[kPreferredWeeks] = a;
  

  // additional setters and getters for assignable values

  String get timePreferenceOptionIds => attributes[kTimePreferenceOptionIds] ?? '';
  set timePreferenceOptionIds(String s) => attributes[kTimePreferenceOptionIds] = s;
  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  



  // Class Constructors
  PcoServicesPersonTeamPositionAssignment() : super(kPcoApplication, kTypeString);
  PcoServicesPersonTeamPositionAssignment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesPersonTeamPositionAssignment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPersonTeamPositionAssignment.create(String serviceTypeId,String teamPositionId) {
    return PcoServicesPersonTeamPositionAssignment()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/people/$peopleId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/person_team_position_assignments`
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getFromTeam(String teamId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/teams/$teamId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  /// 
  static Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getFromServiceTypeAndTeamPosition(String serviceTypeId,String teamPositionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person`
  Future<PcoCollection<PcoServicesPerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position`
  Future<PcoCollection<PcoServicesTeamPosition>> getTeamPosition({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '$apiEndpoint/team_position';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
