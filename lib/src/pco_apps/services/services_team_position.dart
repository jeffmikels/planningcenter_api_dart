/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.578955
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services TeamPosition Object
/// 
/// - Application:        services
/// - Id:                 team_position
/// - Type:               TeamPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// 
/// ## Description
/// A position within a team.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `tags` (ro) -> PCO: `tags`
/// - `negativeTagGroups` (ro) -> PCO: `negative_tag_groups`
/// - `tagGroups` (ro) -> PCO: `tag_groups`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
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
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `personteampositionassignment-teamposition-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// - `team-teamposition-team`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
/// 
/// Inbound Edges:
/// - `teamposition-personteampositionassignment-team_position`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
/// - `teamposition-servicetype-team_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - `teamposition-team-team_positions`: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TeamPosition",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "tags": [],
///     "negative_tag_groups": [],
///     "tag_groups": []
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "attachment_types": {
///       "data": [
///         {
///           "type": "AttachmentType",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
class PcoServicesTeamPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamPosition';
  static const String kTypeId = 'team_position';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'teamposition-team-team_positions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_positions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team 
  static List<String> get canInclude => ['team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kName = 'name';
  static const kTags = 'tags';
  static const kNegativeTagGroups = 'negative_tag_groups';
  static const kTagGroups = 'tag_groups';


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

  String get name => attributes[kName] ?? '';
  List get tags => attributes[kTags] ?? [];
  List get negativeTagGroups => attributes[kNegativeTagGroups] ?? [];
  List get tagGroups => attributes[kTagGroups] ?? [];
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesTeamPosition._() : super(kPcoApplication, kTypeString);
  PcoServicesTeamPosition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position`
  static Future<PcoCollection<PcoServicesTeamPosition>> getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position';
    
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/team_positions`
  static Future<PcoCollection<PcoServicesTeamPosition>> getFromServiceType(String serviceTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/teams/$teamId/team_positions`
  static Future<PcoCollection<PcoServicesTeamPosition>> getFromTeam(String teamId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/teams/$teamId/team_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTeamPosition>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  /// 
  Future<PcoCollection<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    var url = '$apiEndpoint/person_team_position_assignments';
    return PcoCollection.fromApiCall<PcoServicesPersonTeamPositionAssignment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team`
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
