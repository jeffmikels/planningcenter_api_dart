/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.553265
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns CheckIn Object
/// 
/// - Application:        check-ins
/// - Id:                 check_in
/// - Type:               CheckIn
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins
/// 
/// Description:
/// An attendance record for an event.
/// 
/// If someone was checked out, `checked_out_at` will be present.
/// 
/// You can scope check-ins in a few ways:
/// 
/// - `regular`s, `guest`s, and `volunteer`s correspond to the option selected when checking in.
/// - `attendee`s are `regular`s and `guest`s together.
/// - `one_time_guest`s are check-ins which were created without a corresponding person record.
/// - `not_one_time_guest`s are check-ins which had a corresponding person record when they were created.
/// - `checked_out` are check-ins where `checked_out_at` is present (meaning they were checked out from a station).
/// - `first_time`s are check-ins which are the person's first for a given event. (Label-only visitors are not included here.)
/// 
/// Example:
/// ```json
/// {
///   "type": "CheckIn",
///   "id": "1",
///   "attributes": {
///     "first_name": "string",
///     "last_name": "string",
///     "medical_notes": "string",
///     "kind": "string",
///     "number": 1,
///     "security_code": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "checked_out_at": "2000-01-01T12:00:00Z",
///     "emergency_contact_name": "string",
///     "emergency_contact_phone_number": "string"
///   },
///   "relationships": {
///     "event_period": {
///       "data": {
///         "type": "EventPeriod",
///         "id": "1"
///       }
///     },
///     "person": {
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
/// - check_in_times: include associated check_in_times 
/// - checked_in_at: include associated checked_in_at 
/// - checked_in_by: include associated checked_in_by 
/// - checked_out_by: include associated checked_out_by 
/// - event: include associated event 
/// - event_period: include associated event_period 
/// - event_times: include associated event_times 
/// - locations: include associated locations 
/// - options: include associated options 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `security_code`: (URLParameter), query on a specific security_code, example: ?where[security_code]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `checked_out_at`: (URLParameter), prefix with a hyphen (-checked_out_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `checkingroup-checkin-check_in_group`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - `checkintime-checkin-check_in_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// - `station-checkin-checked_in_at`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
/// - `person-checkin-checked_in_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
/// - `person-checkin-checked_out_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
/// - `event-checkin-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
/// - `eventperiod-checkin-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
/// - `eventtime-checkin-event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times
/// - `location-checkin-locations`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations
/// - `option-checkin-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
/// - `person-checkin-person`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
/// 
/// All Inbound Edges:
/// - `checkin-checkingroup-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
/// - `checkin-event-check_ins`: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
/// - `checkin-eventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins
/// - `checkin-eventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins
/// - `checkin-location-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/check_ins
/// - `checkin-locationeventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
/// - `checkin-locationeventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins
/// - `checkin-organization-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins
/// - `checkin-person-check_ins`: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
/// - `checkin-personevent-first_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/first_check_in
/// - `checkin-personevent-last_check_in`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/last_check_in
/// - `checkin-station-checked_in_at_check_ins`: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsCheckIn extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'CheckIn';
  static kTypeId = 'check_in';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'checkin-organization-check_ins';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins';

  /// possible includes with parameter ?include=a,b
  /// - `check_in_times`: include associated check_in_times 
  /// - `checked_in_at`: include associated checked_in_at 
  /// - `checked_in_by`: include associated checked_in_by 
  /// - `checked_out_by`: include associated checked_out_by 
  /// - `event`: include associated event 
  /// - `event_period`: include associated event_period 
  /// - `event_times`: include associated event_times 
  /// - `locations`: include associated locations 
  /// - `options`: include associated options 
  /// - `person`: include associated person 
  static get canInclude() { return ['check_in_times','checked_in_at','checked_in_by','checked_out_by','event','event_period','event_times','locations','options','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `security_code`: (URLParameter), query on a specific security_code, example: ?where[security_code]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','security_code','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `checked_out_at`: (URLParameter), prefix with a hyphen (-checked_out_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['checked_out_at','created_at','first_name','last_name','number','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsCheckIn.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsCheckIn.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsCheckIn.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kFirstName() { return 'first_name' }
  static get kLastName() { return 'last_name' }
  static get kMedicalNotes() { return 'medical_notes' }
  static get kKind() { return 'kind' }
  static get kNumber() { return 'number' }
  static get kSecurityCode() { return 'security_code' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCheckedOutAt() { return 'checked_out_at' }
  static get kEmergencyContactName() { return 'emergency_contact_name' }
  static get kEmergencyContactPhoneNumber() { return 'emergency_contact_phone_number' }


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

  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get medicalNotes() { return attributes[this.constructor.kMedicalNotes] ?? ''; }
  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get number() { return attributes[this.constructor.kNumber] ?? 0; }
  get securityCode() { return attributes[this.constructor.kSecurityCode] ?? ''; }
  get checkedOutAt() { return Date.parse(attributes[this.constructor.kCheckedOutAt] ?? 0); }
  get emergencyContactName() { return attributes[this.constructor.kEmergencyContactName] ?? ''; }
  get emergencyContactPhoneNumber() { return attributes[this.constructor.kEmergencyContactPhoneNumber] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsCheckIn._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsCheckIn({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins`
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
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/check_in_group/${checkInGroupId}/check_ins`
  static getFromCheckInAndCheckInGroup(checkInId, checkInGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/check_in_group/${checkInGroupId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/check_ins`
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
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/check_ins`
  /// 
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_checked_out`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  static getFromCheckInAndEventPeriod(checkInId, eventPeriodId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/check_ins`
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
  static getFromEventTime(eventTimeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/check_ins`
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
  static getFromCheckInAndLocation(checkInId, locationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/locations/${locationId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/location_event_periods/${locationEventPeriodId}/check_ins`
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
  static getFromCheckInAndEventPeriodAndLocationEventPeriod(checkInId, eventPeriodId, locationEventPeriodId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/event_period/${eventPeriodId}/location_event_periods/${locationEventPeriodId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/check_ins`
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
  static getFromEventTimeAndLocationEventTime(eventTimeId, locationEventTimeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/location_event_times/${locationEventTimeId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/${peopleId}/check_ins`
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
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/people/${peopleId}/check_ins`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/${eventId}/person_events/${personEventId}/first_check_in`
  static getFirstCheckInFromEventAndPersonEvent(eventId, personEventId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/person_events/${personEventId}/first_check_in`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/events/${eventId}/person_events/${personEventId}/last_check_in`
  static getLastCheckInFromEventAndPersonEvent(eventId, personEventId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/person_events/${personEventId}/last_check_in`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting one)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/checked_in_at_check_ins`
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
  static getCheckedInAtCheckInsFromStation(stationId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/checked_in_at_check_ins`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckInGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    let url = `${apiEndpoint}/check_in_group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckInTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
    let url = `${apiEndpoint}/check_in_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckedInAt({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let url = `${apiEndpoint}/checked_in_at`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckedInBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/checked_in_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckedOutBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/checked_out_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event`
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
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventPeriod({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    let url = `${apiEndpoint}/event_period`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let url = `${apiEndpoint}/event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations`
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
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOption.canInclude;
    let url = `${apiEndpoint}/options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
