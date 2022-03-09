/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.476157
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Schedule Object
/// 
/// - Application:        services
/// - Id:                 schedule
/// - Type:               Schedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/schedules
/// 
/// Description:
/// An instance of a PlanPerson with included data for displaying in a user's schedule
/// 
/// Example:
/// ```json
/// {
///   "type": "Schedule",
///   "id": "1",
///   "attributes": {
///     "sort_date": "2000-01-01T12:00:00Z",
///     "dates": "string",
///     "decline_reason": "string",
///     "organization_name": "string",
///     "organization_time_zone": "string",
///     "organization_twenty_four_hour_time": "string",
///     "person_name": "string",
///     "position_display_times": "string",
///     "responds_to_name": "string",
///     "service_type_name": "string",
///     "short_dates": "string",
///     "status": "string",
///     "team_name": "string",
///     "team_position_name": "string",
///     "can_accept_partial": true,
///     "can_accept_partial_one_time": true,
///     "plan_visible": true,
///     "plan_visible_to_me": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "plan_person": {
///       "data": {
///         "type": "PlanPerson",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "responds_to_person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - plan_times: include associated plan_times 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `plantime-schedule-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times
/// - `plantime-schedule-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times
/// - `person-schedule-respond_to`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
/// - `team-schedule-team`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
/// 
/// All Inbound Edges:
/// - `schedule-person-schedules`: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// - `schedule-plan-my_schedules`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules
/// 
/// All Actions:
/// - `accept`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/accept
/// - `decline`: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/decline
///
export class PcoServicesSchedule extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Schedule';
  static kTypeId = 'schedule';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'schedule-person-schedules';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/schedules';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/schedules';

  /// possible includes with parameter ?include=a,b
  /// - `plan_times`: include associated plan_times 
  static get canInclude() { return ['plan_times'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSchedule.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSchedule.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSchedule.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSortDate() { return 'sort_date' }
  static get kDates() { return 'dates' }
  static get kDeclineReason() { return 'decline_reason' }
  static get kOrganizationName() { return 'organization_name' }
  static get kOrganizationTimeZone() { return 'organization_time_zone' }
  static get kOrganizationTwentyFourHourTime() { return 'organization_twenty_four_hour_time' }
  static get kPersonName() { return 'person_name' }
  static get kPositionDisplayTimes() { return 'position_display_times' }
  static get kRespondsToName() { return 'responds_to_name' }
  static get kServiceTypeName() { return 'service_type_name' }
  static get kShortDates() { return 'short_dates' }
  static get kStatus() { return 'status' }
  static get kTeamName() { return 'team_name' }
  static get kTeamPositionName() { return 'team_position_name' }
  static get kCanAcceptPartial() { return 'can_accept_partial' }
  static get kCanAcceptPartialOneTime() { return 'can_accept_partial_one_time' }
  static get kPlanVisible() { return 'plan_visible' }
  static get kPlanVisibleToMe() { return 'plan_visible_to_me' }


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

  get sortDate() { return Date.parse(attributes[this.constructor.kSortDate] ?? 0); }
  get dates() { return attributes[this.constructor.kDates] ?? ''; }
  get declineReason() { return attributes[this.constructor.kDeclineReason] ?? ''; }
  get organizationName() { return attributes[this.constructor.kOrganizationName] ?? ''; }
  get organizationTimeZone() { return attributes[this.constructor.kOrganizationTimeZone] ?? ''; }
  get organizationTwentyFourHourTime() { return attributes[this.constructor.kOrganizationTwentyFourHourTime] ?? ''; }
  get personName() { return attributes[this.constructor.kPersonName] ?? ''; }
  get positionDisplayTimes() { return attributes[this.constructor.kPositionDisplayTimes] ?? ''; }
  get respondsToName() { return attributes[this.constructor.kRespondsToName] ?? ''; }
  get serviceTypeName() { return attributes[this.constructor.kServiceTypeName] ?? ''; }
  get shortDates() { return attributes[this.constructor.kShortDates] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get teamName() { return attributes[this.constructor.kTeamName] ?? ''; }
  get teamPositionName() { return attributes[this.constructor.kTeamPositionName] ?? ''; }
  get isCanAcceptPartial() { return attributes[this.constructor.kCanAcceptPartial] == true; }
  get isCanAcceptPartialOneTime() { return attributes[this.constructor.kCanAcceptPartialOneTime] == true; }
  get isPlanVisible() { return attributes[this.constructor.kPlanVisible] == true; }
  get isPlanVisibleToMe() { return attributes[this.constructor.kPlanVisibleToMe] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSchedule._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSchedule({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/schedules`
  /// 
  /// Available Query Filters:
  /// - `after`
  /// Fetch schedules after the included `after` iso8601 date param. e.g. `?filter=after&after=2020-01-01T00:00:00Z`
  /// 
  /// - `all`
  /// - `before`
  /// Fetch schedules before the included `before` iso8601 date param. e.g. `?filter=before&before=2020-01-01T00:00:00Z`
  /// 
  /// - `future`
  /// - `not_across_organizations`
  /// - `past`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/schedules`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSchedule] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/my_schedules`
  static getMySchedulesFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/my_schedules`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDeclinedPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/declined_plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRespondTo({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/respond_to`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team`
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

  /// ACTION: `accept`
  /// 
  /// Accept a Schedule
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/accept`
  /// 
  /// Details:
  /// If this isn't a split time schedule, or you want to accept all times, an empty JSON body is accepted.
  /// 
  /// If the user wants to decline specific times you'll need to send the declined time IDs & a reason.
  /// 
  /// A POST body should be formated...
  /// 
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "ScheduleAccept",
  /// 		"attributes": {
  /// 			"reason": "Because reasons"
  /// 		},
  /// 		"relationships": {
  /// 			"declined_plan_times": {
  /// 				"data": [
  ///           {
  /// 					  "type": "PlanTime",
  /// 					  "id": "1"
  /// 				  }
  ///         ]
  /// 			}
  /// 		}
  /// 	}
  /// }
  /// ```
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  accept(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/accept`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `decline`
  /// 
  /// Decline a Schedule
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/schedules/1/decline`
  /// 
  /// Details:
  /// If this is a split time request, all times will be declined.
  /// 
  /// If you want to decline specific times see ScheduleAcceptAction.
  /// 
  /// A POST body should be formated...
  /// 
  /// ```json
  /// {
  /// 	"data": {
  /// 		"type": "ScheduleDecline",
  /// 		"attributes": {
  /// 			"reason": "A user supplied reason for declining the request or an empty string."
  /// 		},
  /// 		"relationships": null
  /// 	}
  /// }
  /// ```
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  decline(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/decline`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
