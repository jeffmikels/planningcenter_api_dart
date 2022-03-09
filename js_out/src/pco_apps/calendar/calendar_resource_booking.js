/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.200522
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar ResourceBooking Object
/// 
/// - Application:        calendar
/// - Id:                 resource_booking
/// - Type:               ResourceBooking
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// 
/// Description:
/// A specific booking of a room or resource for an event instance.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceBooking",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "quantity": 1
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "event_instance": {
///       "data": {
///         "type": "EventInstance",
///         "id": "1"
///       }
///     },
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event_instance: include associated event_instance 
/// - event_resource_request: include associated event_resource_request 
/// - resource: include associated resource 
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
/// - `eventinstance-resourcebooking-event_instance`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `resource-resourcebooking-resource`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
/// 
/// All Inbound Edges:
/// - `resourcebooking-eventinstance-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resourcebooking-organization-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// - `resourcebooking-resource-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarResourceBooking extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ResourceBooking';
  static kTypeId = 'resource_booking';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resourcebooking-organization-resource_bookings';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';

  /// possible includes with parameter ?include=a,b
  /// - `event_instance`: include associated event_instance 
  /// - `event_resource_request`: include associated event_resource_request 
  /// - `resource`: include associated resource 
  static get canInclude() { return ['event_instance','event_resource_request','resource'] }

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
  get shortestEdgePath() { return PcoCalendarResourceBooking.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResourceBooking.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResourceBooking.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kEndsAt() { return 'ends_at' }
  static get kStartsAt() { return 'starts_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kQuantity() { return 'quantity' }


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

  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResourceBooking._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResourceBooking({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `resources`
  /// - `rooms`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_bookings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/${eventInstanceId}/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `resources`
  /// - `rooms`
  static getFromEventInstance(eventInstanceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances/${eventInstanceId}/resource_bookings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/resource_bookings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  static getFromEventResourceRequest(eventResourceRequestId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/resource_bookings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/resource_bookings`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventInstance({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let url = `${apiEndpoint}/event_instance`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventResourceRequest({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let url = `${apiEndpoint}/event_resource_request`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResource({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resource`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
