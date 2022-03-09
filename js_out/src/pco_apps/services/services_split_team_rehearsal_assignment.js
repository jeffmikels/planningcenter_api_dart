/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.498953
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoServicesSplitTeamRehearsalAssignment extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'SplitTeamRehearsalAssignment';
  static kTypeId = 'split_team_rehearsal_assignment';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSplitTeamRehearsalAssignment.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSplitTeamRehearsalAssignment.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSplitTeamRehearsalAssignment.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kScheduleSpecialServiceTimes() { return 'schedule_special_service_times' }


  // getters and setters
  // @override
  get createAllowed() { return ['schedule_special_service_times']; }

  // @override
  get updateAllowed() { return ['schedule_special_service_times']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get isScheduleSpecialServiceTimes() { return attributes[this.constructor.kScheduleSpecialServiceTimes] == true; }
  

  // setters for object attributes

  
  /// Controls if the related rehearsal/other time is assigned when a person is scheduled to a split team service time that does not match a Time Preference Option
  set isScheduleSpecialServiceTimes(b) { attributes[this.constructor.kScheduleSpecialServiceTimes] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSplitTeamRehearsalAssignment._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSplitTeamRehearsalAssignment({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesSplitTeamRehearsalAssignment] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId,planTimeId) {
    super(PcoServicesSplitTeamRehearsalAssignment.kPcoApplication, PcoServicesSplitTeamRehearsalAssignment.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSplitTeamRehearsalAssignment] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments`
  static getFromPeopleAndPlanTime(peopleId, planTimeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/next_plan_time/${planTimeId}/split_team_rehearsal_assignments`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments/1/team`
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
