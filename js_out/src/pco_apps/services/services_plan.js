/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.460059
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Plan Object
/// 
/// - Application:        services
/// - Id:                 plan
/// - Type:               Plan
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// 
/// Description:
/// A single plan within a Service Type.
/// 
/// Example:
/// ```json
/// {
///   "type": "Plan",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "title": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "public": true,
///     "series_title": "string",
///     "plan_notes_count": 1,
///     "other_time_count": 1,
///     "rehearsal_time_count": 1,
///     "service_time_count": 1,
///     "plan_people_count": 1,
///     "needed_positions_count": 1,
///     "items_count": 1,
///     "total_length": 1,
///     "can_view_order": true,
///     "multi_day": true,
///     "prefers_order_view": true,
///     "rehearsable": true,
///     "files_expire_at": "2000-01-01T12:00:00Z",
///     "sort_date": "2000-01-01T12:00:00Z",
///     "last_time_at": "2000-01-01T12:00:00Z",
///     "permissions": "string",
///     "dates": "string",
///     "short_dates": "string",
///     "planning_center_url": "string",
///     "reminders_disabled": true
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "next_plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "previous_plan": {
///       "data": {
///         "type": "Plan",
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
///     },
///     "series": {
///       "data": {
///         "type": "Series",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "linked_publishing_episode": {
///       "data": {
///         "type": "LinkedPublishingEpisode",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - contributors: include associated contributors 
/// - my_schedules: include associated my_schedules 
/// - plan_times: include associated plan_times 
/// - series: include associated series 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `series_title`: (URLParameter), query on a specific series_title, example: ?where[series_title]=string
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `sort_date`: (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
/// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `attachment-plan-all_attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
/// - `attachment-plan-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments
/// - `contributor-plan-contributors`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors
/// - `item-plan-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// - `live-plan-live`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live
/// - `schedule-plan-my_schedules`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules
/// - `neededposition-plan-needed_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
/// - `plan-plan-next_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plantime-plan-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times
/// - `plan-plan-previous_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan
/// - `series-plan-series`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
/// - `team-plan-signup_teams`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
/// - `planperson-plan-team_members`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
/// 
/// All Inbound Edges:
/// - `plan-live-watchable_plans`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans
/// - `plan-plan-next_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan
/// - `plan-planperson-plan`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
/// - `plan-plan-previous_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan
/// - `plan-series-plans`: https://api.planningcenteronline.com/services/v2/series/1/plans
/// - `plan-servicetype-plans`: https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// - `plan-servicetype-unscoped_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans
/// 
/// All Actions:
/// - `import_template`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/import_template
/// - `item_reorder`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/item_reorder
///
export class PcoServicesPlan extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Plan';
  static kTypeId = 'plan';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'plan-series-plans';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/series/1/plans';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans';

  /// possible includes with parameter ?include=a,b
  /// - `contributors`: include associated contributors 
  /// - `my_schedules`: include associated my_schedules 
  /// - `plan_times`: include associated plan_times 
  /// - `series`: include associated series 
  static get canInclude() { return ['contributors','my_schedules','plan_times','series'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `series_title`: (URLParameter), query on a specific series_title, example: ?where[series_title]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','id','series_title','title','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sort_date`: (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','sort_date','title','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesPlan.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlan.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlan.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kTitle() { return 'title' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kPublic() { return 'public' }
  static get kSeriesTitle() { return 'series_title' }
  static get kPlanNotesCount() { return 'plan_notes_count' }
  static get kOtherTimeCount() { return 'other_time_count' }
  static get kRehearsalTimeCount() { return 'rehearsal_time_count' }
  static get kServiceTimeCount() { return 'service_time_count' }
  static get kPlanPeopleCount() { return 'plan_people_count' }
  static get kNeededPositionsCount() { return 'needed_positions_count' }
  static get kItemsCount() { return 'items_count' }
  static get kTotalLength() { return 'total_length' }
  static get kCanViewOrder() { return 'can_view_order' }
  static get kMultiDay() { return 'multi_day' }
  static get kPrefersOrderView() { return 'prefers_order_view' }
  static get kRehearsable() { return 'rehearsable' }
  static get kFilesExpireAt() { return 'files_expire_at' }
  static get kSortDate() { return 'sort_date' }
  static get kLastTimeAt() { return 'last_time_at' }
  static get kPermissions() { return 'permissions' }
  static get kDates() { return 'dates' }
  static get kShortDates() { return 'short_dates' }
  static get kPlanningCenterUrl() { return 'planning_center_url' }
  static get kRemindersDisabled() { return 'reminders_disabled' }
  static get kSeriesId() { return 'series_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['title','public','series_id','series_title']; }

  // @override
  get updateAllowed() { return ['title','public','series_id','series_title','reminders_disabled']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get isPublic() { return attributes[this.constructor.kPublic] == true; }
  get seriesTitle() { return attributes[this.constructor.kSeriesTitle] ?? ''; }
  get planNotesCount() { return attributes[this.constructor.kPlanNotesCount] ?? 0; }
  get otherTimeCount() { return attributes[this.constructor.kOtherTimeCount] ?? 0; }
  get rehearsalTimeCount() { return attributes[this.constructor.kRehearsalTimeCount] ?? 0; }
  get serviceTimeCount() { return attributes[this.constructor.kServiceTimeCount] ?? 0; }
  get planPeopleCount() { return attributes[this.constructor.kPlanPeopleCount] ?? 0; }
  get neededPositionsCount() { return attributes[this.constructor.kNeededPositionsCount] ?? 0; }
  get itemsCount() { return attributes[this.constructor.kItemsCount] ?? 0; }
  get totalLength() { return attributes[this.constructor.kTotalLength] ?? 0; }
  get isCanViewOrder() { return attributes[this.constructor.kCanViewOrder] == true; }
  get isMultiDay() { return attributes[this.constructor.kMultiDay] == true; }
  get isPrefersOrderView() { return attributes[this.constructor.kPrefersOrderView] == true; }
  get isRehearsable() { return attributes[this.constructor.kRehearsable] == true; }
  get filesExpireAt() { return Date.parse(attributes[this.constructor.kFilesExpireAt] ?? 0); }
  get sortDate() { return Date.parse(attributes[this.constructor.kSortDate] ?? 0); }
  get lastTimeAt() { return Date.parse(attributes[this.constructor.kLastTimeAt] ?? 0); }
  get permissions() { return attributes[this.constructor.kPermissions] ?? ''; }
  get dates() { return attributes[this.constructor.kDates] ?? ''; }
  get shortDates() { return attributes[this.constructor.kShortDates] ?? ''; }
  get planningCenterUrl() { return attributes[this.constructor.kPlanningCenterUrl] ?? ''; }
  get isRemindersDisabled() { return attributes[this.constructor.kRemindersDisabled] == true; }
  

  // setters for object attributes

  set title(s) {attributes[this.constructor.kTitle] = s;}
  
  /// True if Public Access has been enabled.
  set isPublic(b) { attributes[this.constructor.kPublic] = b; }
  set seriesTitle(s) {attributes[this.constructor.kSeriesTitle] = s;}
  set isRemindersDisabled(b) { attributes[this.constructor.kRemindersDisabled] = b; }
  

  // additional setters and getters for assignable values

  get seriesId() { return attributes[this.constructor.kSeriesId] ?? ''; }
  set seriesId(s) {attributes[this.constructor.kSeriesId] = s;}
  



  // Class Constructors
  // PcoServicesPlan._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlan({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesPlan] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plans`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(serviceTypeId) {
    super(PcoServicesPlan.kPcoApplication, PcoServicesPlan.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/service_types/${serviceTypeId}/plans`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/watchable_plans`
  static getWatchablePlansFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/watchable_plans`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/next_plan`
  static getNextPlanFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/next_plan`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan`
  static getFromPeopleAndPlanPeople(peopleId, planPeopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/previous_plan`
  static getPreviousPlanFromServiceTypeAndPlan(serviceTypeId, planId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/previous_plan`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `/services/v2/series/${seriesId}/plans`
  static getFromSeries(seriesId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/series/${seriesId}/plans`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans`
  /// 
  /// Available Query Filters:
  /// - `after`
  /// filter to plans with a time beginning after the `after` parameter
  /// 
  /// - `before`
  /// filter to plans with a time beginning before the `before` parameter
  /// 
  /// - `future`
  /// - `no_dates`
  /// - `past`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/unscoped_plans`
  /// 
  /// Available Query Filters:
  /// - `deleted`
  static getUnscopedPlansFromServiceType(serviceTypeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/unscoped_plans`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments`
  /// 
  /// Available Query Filters:
  /// - `attachable_type`
  /// filter attachments by their attachable_type as specified in the `attachable_type` parameter.
  /// Default: `["ServiceType", "Plan", "Item", "Media", "Song", "Arrangement", "Key"]`.
  /// e.g. `?filter=attachable_type&attachable_type=Plan,ServiceType`
  /// 
  /// - `extensions`
  /// filter to attachments with a file extension specified in the `extensions` parameter.
  /// e.g. `?filter=extensions&extensions=pdf,txt`
  /// 
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAllAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/all_attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesContributor] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getContributors({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesContributor.canInclude;
    let url = `${apiEndpoint}/contributors`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItems({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let url = `${apiEndpoint}/items`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLive({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    let url = `${apiEndpoint}/live`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMySchedules({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    let url = `${apiEndpoint}/my_schedules`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNeededPositions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    let url = `${apiEndpoint}/needed_positions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNextPlan({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/next_plan`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNotes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    let url = `${apiEndpoint}/notes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPlanTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/plan_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPreviousPlan({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/previous_plan`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSeries({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    let url = `${apiEndpoint}/series`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getSignupTeams({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let url = `${apiEndpoint}/signup_teams`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members`
  /// 
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeamMembers({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    let url = `${apiEndpoint}/team_members`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `import_template`
  /// 
  /// Import template to plan
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/import_template`
  /// 
  /// Details:
  /// This action allows the importing of a template into a plan.
  /// 
  /// Accepted attributes:
  /// - `plan_id` (Integer) ID of template to copying from
  /// 
  /// - `copy_items` (Boolean) Copy Items from another plan. (default false)
  /// 
  /// - `copy_people` (Boolean) Copy People from another plan. (default false)
  /// 
  /// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  importTemplate(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/import_template`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `item_reorder`
  /// 
  /// Reorder plan items in one request.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/item_reorder`
  /// 
  /// Details:
  /// This can be used to reorder all items in a plan in one request.
  /// 
  /// It expects a `POST` body with a `sequence` of `Item` ids in order.  E.G.
  /// 
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "PlanItemReorder",
  ///     "attributes": {
  ///       "sequence": [
  ///         "5",
  ///         "1",
  ///         "3"
  ///       ]
  ///     }
  ///   }
  /// }
  /// ```
  /// 
  /// On success you will get back a `204 No Content`.
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  itemReorder(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/item_reorder`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
