/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.468507
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PlanTime Object
/// 
/// - Application:        services
/// - Id:                 plan_time
/// - Type:               PlanTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_plan_time
/// 
/// Description:
/// A time in a plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanTime",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "time_type": 1,
///     "recorded": true,
///     "team_reminders": [],
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "live_starts_at": "2000-01-01T12:00:00Z",
///     "live_ends_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "assigned_teams": {
///       "data": [
///         {
///           "type": "Team",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - split_team_rehearsal_assignments: include associated split_team_rehearsal_assignments 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `time_type`: (URLParameter), query on a specific time_type, example: ?where[time_type]=1
/// 
/// Possible orderings with parameter ?order=
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `splitteamrehearsalassignment-plantime-split_team_rehearsal_assignments`: https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments
/// 
/// All Inbound Edges:
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
/// - `plantime-planperson-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
/// - `plantime-planperson-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
/// - `plantime-plan-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times
/// - `plantime-schedule-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times
/// - `plantime-schedule-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times
/// - `plantime-servicetype-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times
/// 
/// All Actions:
/// NONE
///
export class PcoServicesPlanTime extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PlanTime';
  static kTypeId = 'plan_time';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_plan_time';

  /// possible includes with parameter ?include=a,b
  /// - `split_team_rehearsal_assignments`: include associated split_team_rehearsal_assignments 
  static get canInclude() { return ['split_team_rehearsal_assignments'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `time_type`: (URLParameter), query on a specific time_type, example: ?where[time_type]=1
  static get canQuery() { return ['time_type'] }

  /// possible orderings with parameter ?order=
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPlanTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlanTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlanTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kName() { return 'name' }
  static get kTimeType() { return 'time_type' }
  static get kRecorded() { return 'recorded' }
  static get kTeamReminders() { return 'team_reminders' }
  static get kStartsAt() { return 'starts_at' }
  static get kEndsAt() { return 'ends_at' }
  static get kLiveStartsAt() { return 'live_starts_at' }
  static get kLiveEndsAt() { return 'live_ends_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['starts_at','ends_at','name','time_type','team_reminders']; }

  // @override
  get updateAllowed() { return ['starts_at','ends_at','name','time_type','team_reminders']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get timeType() { return attributes[this.constructor.kTimeType] ?? 0; }
  get isRecorded() { return attributes[this.constructor.kRecorded] == true; }
  get teamReminders() { return attributes[this.constructor.kTeamReminders] ?? []; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get liveStartsAt() { return Date.parse(attributes[this.constructor.kLiveStartsAt] ?? 0); }
  get liveEndsAt() { return Date.parse(attributes[this.constructor.kLiveEndsAt] ?? 0); }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  
  /// Possible values are:
  /// 
  /// - rehearsal
  /// 
  /// - service
  /// 
  /// - other
  set timeType(n) { attributes[this.constructor.kTimeType] = n; }
  
  /// A Hash that maps a Team ID to a reminder value. If nothing is specified, no reminder is set for that team. A reminder value is an integer (0-7) equal to the number of days before the selected time a reminder should be sent.
  set teamReminders(a) { attributes[this.constructor.kTeamReminders] = a; }
  
  /// Planned start time.
  set startsAt(d) { attributes[this.constructor.kStartsAt] = d.toISOString(); }
  
  /// Planned end time.
  set endsAt(d) { attributes[this.constructor.kEndsAt] = d.toISOString(); }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesPlanTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlanTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesPlanTime] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_plan_time`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoServicesPlanTime.kPcoApplication, PcoServicesPlanTime.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_plan_time`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions/${neededPositionId}/time`
  static getTimeFromPeopleAndUpPlanAndNeededPosition(peopleId, upPlanId, neededPositionId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions/${neededPositionId}/time`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/declined_plan_times`
  static getDeclinedPlanTimesFromPeopleAndPlanPeople(peopleId, planPeopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/declined_plan_times`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan_times`
  static getFromPeopleAndPlanPeople(peopleId, planPeopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/plan_times`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/plan_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/schedules/${scheduleId}/declined_plan_times`
  static getDeclinedPlanTimesFromPeopleAndSchedule(peopleId, scheduleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/schedules/${scheduleId}/declined_plan_times`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/schedules/${scheduleId}/plan_times`
  static getFromPeopleAndSchedule(peopleId, scheduleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/schedules/${scheduleId}/plan_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plan_times`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `named`
  /// - `past`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plan_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSplitTeamRehearsalAssignment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_plan_time/1/split_team_rehearsal_assignments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSplitTeamRehearsalAssignments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSplitTeamRehearsalAssignment.canInclude;
    let url = `${apiEndpoint}/split_team_rehearsal_assignments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
