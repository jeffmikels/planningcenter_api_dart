/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.165536
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar EventInstance Object
/// 
/// - Application:        calendar
/// - Id:                 event_instance
/// - Type:               EventInstance
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_instances
/// 
/// Description:
/// A specific occurrence of an event.
/// 
/// If the event is recurring, `recurrence` will be set and
/// `recurrence_description` will provide an overview of the recurrence pattern.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventInstance",
///   "id": "1",
///   "attributes": {
///     "all_day_event": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "location": "string",
///     "recurrence": "string",
///     "recurrence_description": "string",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "church_center_url": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - event_times: include associated event_times 
/// - resource_bookings: include associated resource_bookings 
/// - tags: include associated tags 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `event-eventinstance-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
/// - `eventtime-eventinstance-event_times`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// - `resourcebooking-eventinstance-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
/// - `tag-eventinstance-tags`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
/// 
/// All Inbound Edges:
/// - `eventinstance-event-event_instances`: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
/// - `eventinstance-organization-event_instances`: https://api.planningcenteronline.com/calendar/v2/event_instances
/// - `eventinstance-resourcebooking-event_instance`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
/// - `eventinstance-tag-event_instances`: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarEventInstance extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'EventInstance';
  static kTypeId = 'event_instance';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'eventinstance-organization-event_instances';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `event_times`: include associated event_times 
  /// - `resource_bookings`: include associated resource_bookings 
  /// - `tags`: include associated tags 
  static get canInclude() { return ['event','event_times','resource_bookings','tags'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','ends_at','starts_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','ends_at','starts_at','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarEventInstance.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarEventInstance.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarEventInstance.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAllDayEvent() { return 'all_day_event' }
  static get kCreatedAt() { return 'created_at' }
  static get kEndsAt() { return 'ends_at' }
  static get kLocation() { return 'location' }
  static get kRecurrence() { return 'recurrence' }
  static get kRecurrenceDescription() { return 'recurrence_description' }
  static get kStartsAt() { return 'starts_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kChurchCenterUrl() { return 'church_center_url' }


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

  get isAllDayEvent() { return attributes[this.constructor.kAllDayEvent] == true; }
  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get location() { return attributes[this.constructor.kLocation] ?? ''; }
  get recurrence() { return attributes[this.constructor.kRecurrence] ?? ''; }
  get recurrenceDescription() { return attributes[this.constructor.kRecurrenceDescription] ?? ''; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get churchCenterUrl() { return attributes[this.constructor.kChurchCenterUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarEventInstance._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarEventInstance({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances`
  /// 
  /// Available Query Filters:
  /// - `all`
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `approver`
  /// - `approver_subscriber`
  /// - `future`
  /// - `lost`
  /// - `owner`
  /// - `owner_approver`
  /// - `owner_approver_subscriber`
  /// - `owner_subscriber`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `shared`
  /// - `subscriber`
  /// - `unresolved`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/event_instances`
  /// 
  /// Available Query Filters:
  /// - `future`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/event_instances`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting one)
  /// using a path like this: `/calendar/v2/resource_bookings/${resourceBookingId}/event_instance`
  static getFromResourceBooking(resourceBookingId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_bookings/${resourceBookingId}/event_instance`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/${tagId}/event_instances`
  static getFromTag(tagId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tags/${tagId}/event_instances`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
    let url = `${apiEndpoint}/event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `resources`
  /// - `rooms`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceBookings({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let url = `${apiEndpoint}/resource_bookings`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
