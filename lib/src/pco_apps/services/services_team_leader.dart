/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.906164
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services TeamLeader Object
///
/// - Application:        services
/// - Id:                 team_leader
/// - Type:               TeamLeader
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders
/// - Create Endpoint:    NONE
///
/// ## Description
/// A leader of a specific Team in a Service Type.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isSendResponsesForAccepts` (ro) -> PCO: `send_responses_for_accepts`
/// - `isSendResponsesForDeclines` (ro) -> PCO: `send_responses_for_declines`
/// - `isSendResponsesForBlockouts` (ro) -> PCO: `send_responses_for_blockouts`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `people`: include associated people
/// - `team`: include associated team
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
///
/// Inbound Edges:
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `teamleader-team-team_leaders`: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TeamLeader",
///   "id": "1",
///   "attributes": {
///     "send_responses_for_accepts": true,
///     "send_responses_for_declines": true,
///     "send_responses_for_blockouts": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesTeamLeader extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamLeader';
  static const String kTypeId = 'team_leader';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people
  /// - `team`: include associated team
  static List<String> get canInclude => ['people', 'team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name', 'last_name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kSendResponsesForAccepts = 'send_responses_for_accepts';
  static const kSendResponsesForDeclines = 'send_responses_for_declines';
  static const kSendResponsesForBlockouts = 'send_responses_for_blockouts';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  bool get isSendResponsesForAccepts =>
      attributes[kSendResponsesForAccepts] == true;
  bool get isSendResponsesForDeclines =>
      attributes[kSendResponsesForDeclines] == true;
  bool get isSendResponsesForBlockouts =>
      attributes[kSendResponsesForBlockouts] == true;

  // Class Constructors
  PcoServicesTeamLeader.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesTeamLeader.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/team_leaders`
  ///
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  static Future<PcoCollection<PcoServicesTeamLeader>> getFromPeople(
      String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/people/$peopleId/team_leaders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/team_leaders`
  static Future<PcoCollection<PcoServicesTeamLeader>> getFromTeam(String teamId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    var url = '/services/v2/teams/$teamId/team_leaders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamLeader>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people`
  Future<PcoCollection<PcoServicesPerson>> getPeople(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
