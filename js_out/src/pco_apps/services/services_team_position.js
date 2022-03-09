/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.507492
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
/// Description:
/// A position within a team.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - team: include associated team 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `personteampositionassignment-teamposition-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
/// - `team-teamposition-team`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
/// 
/// All Inbound Edges:
/// - `teamposition-personteampositionassignment-team_position`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position
/// - `teamposition-servicetype-team_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// - `teamposition-team-team_positions`: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTeamPosition extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'TeamPosition';
  static kTypeId = 'team_position';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'teamposition-team-team_positions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_positions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team 
  static get canInclude() { return ['team'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesTeamPosition.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTeamPosition.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTeamPosition.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kTags() { return 'tags' }
  static get kNegativeTagGroups() { return 'negative_tag_groups' }
  static get kTagGroups() { return 'tag_groups' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get tags() { return attributes[this.constructor.kTags] ?? []; }
  get negativeTagGroups() { return attributes[this.constructor.kNegativeTagGroups] ?? []; }
  get tagGroups() { return attributes[this.constructor.kTagGroups] ?? []; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTeamPosition._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTeamPosition({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments/${personTeamPositionAssignmentId}/team_position`
  static getFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignment(serviceTypeId, teamPositionId, personTeamPositionAssignmentId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments/${personTeamPositionAssignmentId}/team_position`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/team_positions`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/team_positions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `/services/v2/teams/${teamId}/team_positions`
  static getFromTeam(teamId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/team_positions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  /// 
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonTeamPositionAssignments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let url = `${apiEndpoint}/person_team_position_assignments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeam({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let url = `${apiEndpoint}/team`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
