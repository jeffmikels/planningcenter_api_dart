/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.564726
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Location Object
/// 
/// - Application:        check-ins
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// 
/// Description:
/// A place where people may check in to for a given event.
/// Some locations have `kind="Folder"`, which means that people
/// can't check-in here, but this location contains other locations.
/// You can get its contents from the `locations` attribute.
/// You can get a location's parent folder from the `parent` attribute.
/// (If it's not in a folder, `parent` will be empty.)
/// 
/// Example:
/// ```json
/// {
///   "type": "Location",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "kind": "string",
///     "opened": true,
///     "questions": "string",
///     "age_min_in_months": 1,
///     "age_max_in_months": 1,
///     "age_range_by": "string",
///     "age_on": "2000-01-01",
///     "child_or_adult": "string",
///     "effective_date": "2000-01-01",
///     "gender": "string",
///     "grade_min": 1,
///     "grade_max": 1,
///     "max_occupancy": 1,
///     "min_volunteers": 1,
///     "attendees_per_volunteer": 1,
///     "position": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "parent": {
///       "data": {
///         "type": "Parent",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - locations: include associated locations 
/// - options: include associated options 
/// - parent: include associated parent 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `kind`: (URLParameter), prefix with a hyphen (-kind) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `checkin-location-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
/// - `event-location-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
/// - `locationeventperiod-location-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
/// - `locationeventtime-location-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
/// - `locationlabel-location-location_labels`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels
/// - `location-location-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
/// - `option-location-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
/// - `location-location-parent`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
/// 
/// All Inbound Edges:
/// - `location-checkin-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// - `location-event-locations`: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
/// - `location-eventtime-available_locations`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations
/// - `location-locationeventperiod-location`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
/// - `location-locationeventtime-location`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location
/// - `location-locationlabel-location`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/location
/// - `location-location-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations
/// - `location-location-parent`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent
/// - `location-station-location`: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsLocation extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Location';
  static kTypeId = 'location';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'location-event-locations';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/locations';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `locations`: include associated locations 
  /// - `options`: include associated options 
  /// - `parent`: include associated parent 
  static get canInclude() { return ['event','locations','options','parent'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `kind`: (URLParameter), prefix with a hyphen (-kind) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['kind','name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsLocation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsLocation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsLocation.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kKind() { return 'kind' }
  static get kOpened() { return 'opened' }
  static get kQuestions() { return 'questions' }
  static get kAgeMinInMonths() { return 'age_min_in_months' }
  static get kAgeMaxInMonths() { return 'age_max_in_months' }
  static get kAgeRangeBy() { return 'age_range_by' }
  static get kAgeOn() { return 'age_on' }
  static get kChildOrAdult() { return 'child_or_adult' }
  static get kEffectiveDate() { return 'effective_date' }
  static get kGender() { return 'gender' }
  static get kGradeMin() { return 'grade_min' }
  static get kGradeMax() { return 'grade_max' }
  static get kMaxOccupancy() { return 'max_occupancy' }
  static get kMinVolunteers() { return 'min_volunteers' }
  static get kAttendeesPerVolunteer() { return 'attendees_per_volunteer' }
  static get kPosition() { return 'position' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCreatedAt() { return 'created_at' }


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
  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get isOpened() { return attributes[this.constructor.kOpened] == true; }
  get questions() { return attributes[this.constructor.kQuestions] ?? ''; }
  get ageMinInMonths() { return attributes[this.constructor.kAgeMinInMonths] ?? 0; }
  get ageMaxInMonths() { return attributes[this.constructor.kAgeMaxInMonths] ?? 0; }
  get ageRangeBy() { return attributes[this.constructor.kAgeRangeBy] ?? ''; }
  get ageOn() { return attributes[this.constructor.kAgeOn] ?? ''; }
  get childOrAdult() { return attributes[this.constructor.kChildOrAdult] ?? ''; }
  get effectiveDate() { return attributes[this.constructor.kEffectiveDate] ?? ''; }
  get gender() { return attributes[this.constructor.kGender] ?? ''; }
  get gradeMin() { return attributes[this.constructor.kGradeMin] ?? 0; }
  get gradeMax() { return attributes[this.constructor.kGradeMax] ?? 0; }
  get maxOccupancy() { return attributes[this.constructor.kMaxOccupancy] ?? 0; }
  get minVolunteers() { return attributes[this.constructor.kMinVolunteers] ?? 0; }
  get attendeesPerVolunteer() { return attributes[this.constructor.kAttendeesPerVolunteer] ?? 0; }
  get position() { return attributes[this.constructor.kPosition] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsLocation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsLocation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/locations`
  /// 
  /// Available Query Filters:
  /// - `locations`
  /// - `root`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/locations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/available_locations`
  /// 
  /// Available Query Filters:
  /// - `for_current_station`
  static getAvailableLocationsFromEventTime(eventTimeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/available_locations`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/location_event_periods/${locationEventPeriodId}/location`
  static getFromCheckInAndEventPeriodAndLocationEventPeriod(checkInId, eventPeriodId, locationEventPeriodId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/location_event_periods/${locationEventPeriodId}/location`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/location`
  static getFromEventTimeAndLocationEventTime(eventTimeId, locationEventTimeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/location`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/labels/${labelId}/location_labels/${locationLabelId}/location`
  static getFromLabelAndLocationLabel(labelId, locationLabelId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/labels/${labelId}/location_labels/${locationLabelId}/location`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/locations`
  static getFromCheckInAndLocation(checkInId, locationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/locations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/parent`
  static getParentFromCheckInAndLocation(checkInId, locationId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/parent`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/location`
  static getFromStation(stationId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/location`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins`
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
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocationEventPeriods({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    let url = `${apiEndpoint}/location_event_periods`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocationEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    let url = `${apiEndpoint}/location_event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocationLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocationLabel.canInclude;
    let url = `${apiEndpoint}/location_labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/locations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/locations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    let url = `${apiEndpoint}/options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/parent`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getParent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/parent`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
