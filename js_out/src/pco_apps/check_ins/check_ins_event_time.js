/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.561279
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns EventTime Object
/// 
/// - Application:        check-ins
/// - Id:                 event_time
/// - Type:               EventTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/event_times
/// 
/// Description:
/// A time that someone may check in. Times are copied from session to session.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventTime",
///   "id": "1",
///   "attributes": {
///     "total_count": 1,
///     "starts_at": "2000-01-01T12:00:00Z",
///     "shows_at": "2000-01-01T12:00:00Z",
///     "hides_at": "2000-01-01T12:00:00Z",
///     "regular_count": 1,
///     "guest_count": 1,
///     "volunteer_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "hour": 1,
///     "minute": 1,
///     "day_of_week": 1
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "event_period": {
///       "data": {
///         "type": "EventPeriod",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - event_period: include associated event_period 
/// - headcounts: include associated headcounts 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `shows_at`: (URLParameter), prefix with a hyphen (-shows_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `location-eventtime-available_locations`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations
/// - `checkin-eventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins
/// - `event-eventtime-event`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event
/// - `eventperiod-eventtime-event_period`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period
/// - `headcount-eventtime-headcounts`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
/// - `locationeventtime-eventtime-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// 
/// All Inbound Edges:
/// - `eventtime-checkin-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
/// - `eventtime-event-current_event_times`: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
/// - `eventtime-eventperiod-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times
/// - `eventtime-headcount-event_time`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
/// - `eventtime-locationeventtime-event_time`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time
/// - `eventtime-organization-event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsEventTime extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'EventTime';
  static kTypeId = 'event_time';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'eventtime-organization-event_times';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/event_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/event_times';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `event_period`: include associated event_period 
  /// - `headcounts`: include associated headcounts 
  static get canInclude() { return ['event','event_period','headcounts'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `shows_at`: (URLParameter), prefix with a hyphen (-shows_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['shows_at','starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsEventTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsEventTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsEventTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kTotalCount() { return 'total_count' }
  static get kStartsAt() { return 'starts_at' }
  static get kShowsAt() { return 'shows_at' }
  static get kHidesAt() { return 'hides_at' }
  static get kRegularCount() { return 'regular_count' }
  static get kGuestCount() { return 'guest_count' }
  static get kVolunteerCount() { return 'volunteer_count' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kName() { return 'name' }
  static get kHour() { return 'hour' }
  static get kMinute() { return 'minute' }
  static get kDayOfWeek() { return 'day_of_week' }


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

  get totalCount() { return attributes[this.constructor.kTotalCount] ?? 0; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get showsAt() { return Date.parse(attributes[this.constructor.kShowsAt] ?? 0); }
  get hidesAt() { return Date.parse(attributes[this.constructor.kHidesAt] ?? 0); }
  get regularCount() { return attributes[this.constructor.kRegularCount] ?? 0; }
  get guestCount() { return attributes[this.constructor.kGuestCount] ?? 0; }
  get volunteerCount() { return attributes[this.constructor.kVolunteerCount] ?? 0; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get hour() { return attributes[this.constructor.kHour] ?? 0; }
  get minute() { return attributes[this.constructor.kMinute] ?? 0; }
  get dayOfWeek() { return attributes[this.constructor.kDayOfWeek] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsEventTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsEventTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_times`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/${eventId}/current_event_times`
  static getCurrentEventTimesFromEvent(eventId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/current_event_times`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/event_times`
  /// 
  /// Available Query Filters:
  /// - `available`
  static getFromCheckInAndEventPeriod(checkInId, eventPeriodId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/event_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/headcounts/${headcountId}/event_time`
  static getFromHeadcount(headcountId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/headcounts/${headcountId}/event_time`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/event_time`
  static getFromEventTimeAndLocationEventTime(eventTimeId, locationEventTimeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/event_time`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations`
  /// 
  /// Available Query Filters:
  /// - `for_current_station`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAvailableLocations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/available_locations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins`
  /// 
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckIns({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/check_ins`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventPeriod({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    let url = `${apiEndpoint}/event_period`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHeadcounts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let url = `${apiEndpoint}/headcounts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocationEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    let url = `${apiEndpoint}/location_event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
