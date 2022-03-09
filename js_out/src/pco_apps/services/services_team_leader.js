/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.506231
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services TeamLeader Object
/// 
/// - Application:        services
/// - Id:                 team_leader
/// - Type:               TeamLeader
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders
/// 
/// Description:
/// A leader of a specific Team in a Service Type.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - people: include associated people 
/// - team: include associated team 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// All Outbound Edges:
/// - `person-teamleader-people`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
/// 
/// All Inbound Edges:
/// - `teamleader-person-team_leaders`: https://api.planningcenteronline.com/services/v2/people/1/team_leaders
/// - `teamleader-team-team_leaders`: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTeamLeader extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'TeamLeader';
  static kTypeId = 'team_leader';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'teamleader-team-team_leaders';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_leaders';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  /// - `team`: include associated team 
  static get canInclude() { return ['people','team'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static get canOrderBy() { return ['first_name','last_name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesTeamLeader.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTeamLeader.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTeamLeader.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSendResponsesForAccepts() { return 'send_responses_for_accepts' }
  static get kSendResponsesForDeclines() { return 'send_responses_for_declines' }
  static get kSendResponsesForBlockouts() { return 'send_responses_for_blockouts' }


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

  get isSendResponsesForAccepts() { return attributes[this.constructor.kSendResponsesForAccepts] == true; }
  get isSendResponsesForDeclines() { return attributes[this.constructor.kSendResponsesForDeclines] == true; }
  get isSendResponsesForBlockouts() { return attributes[this.constructor.kSendResponsesForBlockouts] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTeamLeader._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTeamLeader({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/team_leaders`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/team_leaders`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `/services/v2/teams/${teamId}/team_leaders`
  static getFromTeam(teamId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/team_leaders`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team`
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
