/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.556692
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Event Object
/// 
/// - Application:        check-ins
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events
/// 
/// Description:
/// A recurring event which people may attend.
/// 
/// Each recurrence is an _event period_ (which often corresponds to a week).
/// 
/// Event periods have _event times_ where people may actually check in.
/// 
/// Example:
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "frequency": "string",
///     "enable_services_integration": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "integration_key": "string",
///     "location_times_enabled": true,
///     "pre_select_enabled": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - attendance_types: include associated attendance_types 
/// - event_periods: include associated event_periods 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `attendancetype-event-attendance_types`: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
/// - `checkin-event-check_ins`: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
/// - `eventtime-event-current_event_times`: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventperiod-event-event_periods`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods
/// - `location-event-locations`: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
/// - `personevent-event-person_events`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
/// 
/// All Inbound Edges:
/// - `event-attendancetype-event`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
/// - `event-checkin-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `event-eventperiod-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event
/// - `event-eventtime-event`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event
/// - `event-location-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
/// - `event-organization-events`: https://api.planningcenteronline.com/check-ins/v2/events
/// - `event-personevent-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
/// - `event-station-event`: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsEvent extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Event';
  static kTypeId = 'event';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'event-organization-events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events';

  /// possible includes with parameter ?include=a,b
  /// - `attendance_types`: include associated attendance_types 
  /// - `event_periods`: include associated event_periods 
  static get canInclude() { return ['attendance_types','event_periods'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['id','name'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['created_at','name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kFrequency() { return 'frequency' }
  static get kEnableServicesIntegration() { return 'enable_services_integration' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kArchivedAt() { return 'archived_at' }
  static get kIntegrationKey() { return 'integration_key' }
  static get kLocationTimesEnabled() { return 'location_times_enabled' }
  static get kPreSelectEnabled() { return 'pre_select_enabled' }
  static get kAppSource() { return 'app_source' }


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
  get frequency() { return attributes[this.constructor.kFrequency] ?? ''; }
  get isEnableServicesIntegration() { return attributes[this.constructor.kEnableServicesIntegration] == true; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get integrationKey() { return attributes[this.constructor.kIntegrationKey] ?? ''; }
  get isLocationTimesEnabled() { return attributes[this.constructor.kLocationTimesEnabled] == true; }
  get isPreSelectEnabled() { return attributes[this.constructor.kPreSelectEnabled] == true; }
  get appSource() { return attributes[this.constructor.kAppSource] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/${attendanceTypeId}/event`
  static getFromAttendanceType(attendanceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/attendance_types/${attendanceTypeId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/event_labels/${eventLabelId}/event`
  static getFromEventAndEventLabel(eventId, eventLabelId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/event_labels/${eventLabelId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/event`
  static getFromCheckInAndEventPeriod(checkInId, eventPeriodId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/event`
  static getFromEventTime(eventTimeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/event`
  static getFromCheckInAndLocation(checkInId, locationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/person_events/${personEventId}/event`
  static getFromEventAndPersonEvent(eventId, personEventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/person_events/${personEventId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/event`
  static getFromStation(stationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/event`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsAttendanceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttendanceTypes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    let url = `${apiEndpoint}/attendance_types`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins`
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
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCurrentEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let url = `${apiEndpoint}/current_event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
    let url = `${apiEndpoint}/event_labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventPeriods({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    let url = `${apiEndpoint}/event_periods`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/locations`
  /// 
  /// Available Query Filters:
  /// - `locations`
  /// - `root`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/locations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    let url = `${apiEndpoint}/person_events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
