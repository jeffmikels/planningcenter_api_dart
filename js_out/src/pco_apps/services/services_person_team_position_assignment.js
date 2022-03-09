/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.456541
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoServicesPersonTeamPositionAssignment extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PersonTeamPositionAssignment';
  static kTypeId = 'person_team_position_assignment';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'personteampositionassignment-team-person_team_position_assignments';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/person_team_position_assignments';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  /// - `team_position`: include associated team_position 
  static get canInclude() { return ['person','team_position'] }

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
  get shortestEdgePath() { return PcoServicesPersonTeamPositionAssignment.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPersonTeamPositionAssignment.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPersonTeamPositionAssignment.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kSchedulePreference() { return 'schedule_preference' }
  static get kPreferredWeeks() { return 'preferred_weeks' }
  static get kTimePreferenceOptionIds() { return 'time_preference_option_ids' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['schedule_preference','preferred_weeks','time_preference_option_ids','person_id']; }

  // @override
  get updateAllowed() { return ['schedule_preference','preferred_weeks','time_preference_option_ids']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get schedulePreference() { return attributes[this.constructor.kSchedulePreference] ?? ''; }
  get preferredWeeks() { return attributes[this.constructor.kPreferredWeeks] ?? []; }
  

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
  set schedulePreference(s) {attributes[this.constructor.kSchedulePreference] = s;}
  
  /// When `schedule_preference` is set to "Choose Weeks" then this
  /// indicates which weeks are preferred (checked).
  /// 
  /// e.g. ['1', '3', '5'] to prefer odd numbered weeks.
  set preferredWeeks(a) { attributes[this.constructor.kPreferredWeeks] = a; }
  

  // additional setters and getters for assignable values

  get timePreferenceOptionIds() { return attributes[this.constructor.kTimePreferenceOptionIds] ?? ''; }
  set timePreferenceOptionIds(s) {attributes[this.constructor.kTimePreferenceOptionIds] = s;}
  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  



  // Class Constructors
  // PcoServicesPersonTeamPositionAssignment._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPersonTeamPositionAssignment({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesPersonTeamPositionAssignment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(serviceTypeId,teamPositionId) {
    super(PcoServicesPersonTeamPositionAssignment.kPcoApplication, PcoServicesPersonTeamPositionAssignment.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `not_archived`
  /// - `not_deleted`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/person_team_position_assignments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/teams/${teamId}/person_team_position_assignments`
  static getFromTeam(teamId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/person_team_position_assignments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPersonTeamPositionAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments`
  /// 
  /// Available Query Filters:
  /// - `time_preference_options`
  /// pass an additonal array of `time_preference_option_ids` as a param to filter to people who prefer those times.use id 'none' to filter people who have no preferred times
  /// 
  static getFromServiceTypeAndTeamPosition(serviceTypeId, teamPositionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/team_positions/${teamPositionId}/person_team_position_assignments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeamPosition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamPosition({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    let url = `${apiEndpoint}/team_position`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
