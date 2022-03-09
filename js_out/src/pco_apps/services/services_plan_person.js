/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.465320
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PlanPerson Object
/// 
/// - Application:        services
/// - Id:                 plan_person
/// - Type:               PlanPerson
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// 
/// Description:
/// A person scheduled within a specific plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanPerson",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "notes": "string",
///     "decline_reason": "string",
///     "name": "string",
///     "notification_changed_by_name": "string",
///     "notification_sender_name": "string",
///     "team_position_name": "string",
///     "photo_thumbnail": "string",
///     "status_updated_at": "2000-01-01T12:00:00Z",
///     "notification_changed_at": "2000-01-01T12:00:00Z",
///     "notification_prepared_at": "2000-01-01T12:00:00Z",
///     "notification_read_at": "2000-01-01T12:00:00Z",
///     "notification_sent_at": "2000-01-01T12:00:00Z",
///     "prepare_notification": true,
///     "can_accept_partial": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "scheduled_by": {
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
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "responds_to": {
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
///     },
///     "service_times": {
///       "data": [
///         {
///           "type": "PlanTime",
///           "id": "1"
///         }
///       ]
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
/// - declined_plan_times: include associated declined_plan_times 
/// - person: include associated person 
/// - plan: include associated plan 
/// - team: include associated team 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `plantime-planperson-declined_plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
/// - `person-planperson-person`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
/// - `plan-planperson-plan`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
/// - `planpersontime-planperson-plan_person_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// - `plantime-planperson-plan_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
/// - `team-planperson-team`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
/// 
/// All Inbound Edges:
/// - `planperson-person-plan_people`: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// - `planperson-plan-team_members`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
/// - `planperson-team-plan_people`: https://api.planningcenteronline.com/services/v2/teams/1/plan_people
/// 
/// All Actions:
/// NONE
///
export class PcoServicesPlanPerson extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PlanPerson';
  static kTypeId = 'plan_person';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'planperson-team-plan_people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/plan_people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people';

  /// possible includes with parameter ?include=a,b
  /// - `declined_plan_times`: include associated declined_plan_times 
  /// - `person`: include associated person 
  /// - `plan`: include associated plan 
  /// - `team`: include associated team 
  static get canInclude() { return ['declined_plan_times','person','plan','team'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPlanPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlanPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlanPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStatus() { return 'status' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kNotes() { return 'notes' }
  static get kDeclineReason() { return 'decline_reason' }
  static get kName() { return 'name' }
  static get kNotificationChangedByName() { return 'notification_changed_by_name' }
  static get kNotificationSenderName() { return 'notification_sender_name' }
  static get kTeamPositionName() { return 'team_position_name' }
  static get kPhotoThumbnail() { return 'photo_thumbnail' }
  static get kStatusUpdatedAt() { return 'status_updated_at' }
  static get kNotificationChangedAt() { return 'notification_changed_at' }
  static get kNotificationPreparedAt() { return 'notification_prepared_at' }
  static get kNotificationReadAt() { return 'notification_read_at' }
  static get kNotificationSentAt() { return 'notification_sent_at' }
  static get kPrepareNotification() { return 'prepare_notification' }
  static get kCanAcceptPartial() { return 'can_accept_partial' }
  static get kPersonId() { return 'person_id' }
  static get kRespondsToId() { return 'responds_to_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at']; }

  // @override
  get updateAllowed() { return ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get notes() { return attributes[this.constructor.kNotes] ?? ''; }
  get declineReason() { return attributes[this.constructor.kDeclineReason] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get notificationChangedByName() { return attributes[this.constructor.kNotificationChangedByName] ?? ''; }
  get notificationSenderName() { return attributes[this.constructor.kNotificationSenderName] ?? ''; }
  get teamPositionName() { return attributes[this.constructor.kTeamPositionName] ?? ''; }
  get photoThumbnail() { return attributes[this.constructor.kPhotoThumbnail] ?? ''; }
  get statusUpdatedAt() { return Date.parse(attributes[this.constructor.kStatusUpdatedAt] ?? 0); }
  get notificationChangedAt() { return Date.parse(attributes[this.constructor.kNotificationChangedAt] ?? 0); }
  get notificationPreparedAt() { return Date.parse(attributes[this.constructor.kNotificationPreparedAt] ?? 0); }
  get notificationReadAt() { return Date.parse(attributes[this.constructor.kNotificationReadAt] ?? 0); }
  get notificationSentAt() { return Date.parse(attributes[this.constructor.kNotificationSentAt] ?? 0); }
  get isPrepareNotification() { return attributes[this.constructor.kPrepareNotification] == true; }
  get isCanAcceptPartial() { return attributes[this.constructor.kCanAcceptPartial] == true; }
  

  // setters for object attributes

  
  /// Accepts one of 'C', 'U', 'D', or 'Confirmed', 'Unconfirmed', or 'Declined'
  set status(s) {attributes[this.constructor.kStatus] = s;}
  set notes(s) {attributes[this.constructor.kNotes] = s;}
  set declineReason(s) {attributes[this.constructor.kDeclineReason] = s;}
  set teamPositionName(s) {attributes[this.constructor.kTeamPositionName] = s;}
  set notificationPreparedAt(d) { attributes[this.constructor.kNotificationPreparedAt] = d.toISOString(); }
  set isPrepareNotification(b) { attributes[this.constructor.kPrepareNotification] = b; }
  

  // additional setters and getters for assignable values

  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  get respondsToId() { return attributes[this.constructor.kRespondsToId] ?? ''; }
  set respondsToId(s) {attributes[this.constructor.kRespondsToId] = s;}
  



  // Class Constructors
  // PcoServicesPlanPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlanPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesPlanPerson] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/plan_people`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoServicesPlanPerson.kPcoApplication, PcoServicesPlanPerson.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/plan_people`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people`
  static getPlanPeopleFromPeople(peopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/team_members`
  /// 
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  static getTeamMembersFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/team_members`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting one)
  /// using a path like this: `/services/v2/teams/${teamId}/plan_people`
  static getPlanPeopleFromTeam(teamId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/teams/${teamId}/plan_people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getDeclinedPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/declined_plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlan({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/plan`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPersonTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanPersonTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPersonTime.canInclude;
    let url = `${apiEndpoint}/plan_person_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team`
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
