/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.505273
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Team Object
/// 
/// - Application:        services
/// - Id:                 team
/// - Type:               Team
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/teams
/// 
/// Description:
/// A Team within a Service Type.
/// 
/// Example:
/// ```json
/// {
///   "type": "Team",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "rehearsal_team": true,
///     "sequence": 1,
///     "schedule_to": "string",
///     "default_status": "string",
///     "default_prepare_notifications": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "assigned_directly": true,
///     "secure_team": true,
///     "last_plan_from": "string",
///     "stage_color": "string",
///     "stage_variant": "string"
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "default_responds_to": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - people: include associated people 
/// - person_team_position_assignments: include associated person_team_position_assignments 
/// - service_type: include associated service_type 
/// - team_leaders: include associated team_leaders 
/// - team_positions: include associated team_positions 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-team-people`: https://api.planningcenteronline.com/services/v2/teams/1/people
/// - `personteampositionassignment-team-person_team_position_assignments`: https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments
/// - `planperson-team-plan_people`: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
/// - `servicetype-team-service_type`: https://api.planningcenteronline.com/services/v2/teams/1/service_type
/// - `teamleader-team-team_leaders`: https://api.planningcenteronline.com/services/v2/teams/1/team_leaders
/// - `teamposition-team-team_positions`: https://api.planningcenteronline.com/services/v2/teams/1/team_positions
/// 
/// All Inbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
/// - `team-organization-teams`: https://api.planningcenteronline.com/services/v2/teams
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
/// - `team-plan-signup_teams`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
/// - `team-schedule-team`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
/// - `team-servicetype-teams`: https://api.planningcenteronline.com/services/v2/service_types/1/teams
/// - `team-splitteamrehearsalassignment-team`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team
/// - `team-teamleader-team`: https://api.planningcenteronline.com/services/v2/people/1/assigned_team_leaders/1/team
/// - `team-teamposition-team`: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTeam extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Team';
  static kTypeId = 'team';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'team-organization-teams';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/teams';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  /// - `person_team_position_assignments`: include associated person_team_position_assignments 
  /// - `service_type`: include associated service_type 
  /// - `team_leaders`: include associated team_leaders 
  /// - `team_positions`: include associated team_positions 
  static get canInclude() { return ['people','person_team_position_assignments','service_type','team_leaders','team_positions'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['name'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesTeam.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTeam.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTeam.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kRehearsalTeam() { return 'rehearsal_team' }
  static get kSequence() { return 'sequence' }
  static get kScheduleTo() { return 'schedule_to' }
  static get kDefaultStatus() { return 'default_status' }
  static get kDefaultPrepareNotifications() { return 'default_prepare_notifications' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kArchivedAt() { return 'archived_at' }
  static get kAssignedDirectly() { return 'assigned_directly' }
  static get kSecureTeam() { return 'secure_team' }
  static get kLastPlanFrom() { return 'last_plan_from' }
  static get kStageColor() { return 'stage_color' }
  static get kStageVariant() { return 'stage_variant' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','archived_at','assigned_directly','rehearsal_team','schedule_to','stage_color','stage_variant']; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isRehearsalTeam() { return attributes[this.constructor.kRehearsalTeam] == true; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get scheduleTo() { return attributes[this.constructor.kScheduleTo] ?? ''; }
  get defaultStatus() { return attributes[this.constructor.kDefaultStatus] ?? ''; }
  get isDefaultPrepareNotifications() { return attributes[this.constructor.kDefaultPrepareNotifications] == true; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get isAssignedDirectly() { return attributes[this.constructor.kAssignedDirectly] == true; }
  get isSecureTeam() { return attributes[this.constructor.kSecureTeam] == true; }
  get lastPlanFrom() { return attributes[this.constructor.kLastPlanFrom] ?? ''; }
  get stageColor() { return attributes[this.constructor.kStageColor] ?? ''; }
  get stageVariant() { return attributes[this.constructor.kStageVariant] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set isRehearsalTeam(b) { attributes[this.constructor.kRehearsalTeam] = b; }
  
  /// This determines whether a team is a split team or not.Accepted values: 1. "plan" (default) 2. "time" (designates as a split team)
  set scheduleTo(s) {attributes[this.constructor.kScheduleTo] = s;}
  set archivedAt(d) { attributes[this.constructor.kArchivedAt] = d.toISOString(); }
  set isAssignedDirectly(b) { attributes[this.constructor.kAssignedDirectly] = b; }
  set stageColor(s) {attributes[this.constructor.kStageColor] = s;}
  set stageVariant(s) {attributes[this.constructor.kStageVariant] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTeam._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTeam({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesTeam] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/teams`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoServicesTeam.kPcoApplication, PcoServicesTeam.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/teams`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/teams`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions/${neededPositionId}/team`
  static getFromPeopleAndUpPlanAndNeededPosition(peopleId, upPlanId, neededPositionId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions/${neededPositionId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/team`
  static getFromPeopleAndPlanPeople(peopleId, planPeopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/signup_teams`
  static getSignupTeamsFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/signup_teams`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/schedules/${scheduleId}/team`
  static getFromPeopleAndSchedule(peopleId, scheduleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/schedules/${scheduleId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/teams`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/teams`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments/${splitTeamRehearsalAssignmentId}/team`
  static getFromPeopleAndPlanTimeAndSplitTeamRehearsalAssignment(peopleId, planTimeId, splitTeamRehearsalAssignmentId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments/${splitTeamRehearsalAssignmentId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/assigned_team_leaders/${assignedTeamLeaderId}/team`
  static getFromPeopleAndAssignedTeamLeader(peopleId, assignedTeamLeaderId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/assigned_team_leaders/${assignedTeamLeaderId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/team`
  static getFromServiceTypeAndTeamPosition(serviceTypeId, teamPositionId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/team`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonTeamPositionAssignments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let url = `${apiEndpoint}/person_team_position_assignments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/plan_people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let url = `${apiEndpoint}/plan_people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/service_type`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getServiceType({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let url = `${apiEndpoint}/service_type`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamLeader] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_leaders`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamLeaders({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamLeader.canInclude;
    let url = `${apiEndpoint}/team_leaders`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/teams/1/team_positions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamPositions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let url = `${apiEndpoint}/team_positions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
