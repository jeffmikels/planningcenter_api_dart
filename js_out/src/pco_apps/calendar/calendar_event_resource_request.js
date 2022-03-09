/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.167262
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar EventResourceRequest Object
/// 
/// - Application:        calendar
/// - Id:                 event_resource_request
/// - Type:               EventResourceRequest
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// 
/// Description:
/// A room or resource request for a specific event.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventResourceRequest",
///   "id": "1",
///   "attributes": {
///     "approval_sent": true,
///     "approval_status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "percent_approved": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "room_setup_info": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "event_resource_request": {
///       "data": {
///         "type": "EventResourceRequest",
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
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - created_by: include associated created_by 
/// - event: include associated event 
/// - resource: include associated resource 
/// - room_setup: include associated room_setup 
/// - updated_by: include associated updated_by 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `approval_sent`: (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
/// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resource-eventresourcerequest-resource`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
/// 
/// All Inbound Edges:
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `eventresourcerequest-organization-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarEventResourceRequest extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'EventResourceRequest';
  static kTypeId = 'event_resource_request';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'eventresourcerequest-organization-event_resource_requests';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by 
  /// - `event`: include associated event 
  /// - `resource`: include associated resource 
  /// - `room_setup`: include associated room_setup 
  /// - `updated_by`: include associated updated_by 
  static get canInclude() { return ['created_by','event','resource','room_setup','updated_by'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_sent`: (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['approval_sent','approval_status','created_at','percent_approved','updated_at'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarEventResourceRequest.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarEventResourceRequest.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarEventResourceRequest.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kApprovalSent() { return 'approval_sent' }
  static get kApprovalStatus() { return 'approval_status' }
  static get kCreatedAt() { return 'created_at' }
  static get kPercentApproved() { return 'percent_approved' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kQuantity() { return 'quantity' }
  static get kRoomSetupInfo() { return 'room_setup_info' }


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

  get isApprovalSent() { return attributes[this.constructor.kApprovalSent] == true; }
  get approvalStatus() { return attributes[this.constructor.kApprovalStatus] ?? ''; }
  get percentApproved() { return attributes[this.constructor.kPercentApproved] ?? 0; }
  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  get roomSetupInfo() { return attributes[this.constructor.kRoomSetupInfo] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarEventResourceRequest._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarEventResourceRequest({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/event_resource_requests`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/event_resource_requests`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/people/${peopleId}/event_resource_requests`
  /// 
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/people/${peopleId}/event_resource_requests`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/event_resource_requests`
  static getFromResourceApprovalGroup(resourceApprovalGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/event_resource_requests`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting one)
  /// using a path like this: `/calendar/v2/resource_bookings/${resourceBookingId}/event_resource_request`
  static getFromResourceBooking(resourceBookingId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_bookings/${resourceBookingId}/event_resource_request`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/event_resource_requests`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/event_resource_requests`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCreatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let url = `${apiEndpoint}/created_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings`
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
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceBookings({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    let url = `${apiEndpoint}/resource_bookings`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResource({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resource`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRoomSetup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    let url = `${apiEndpoint}/room_setup`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getUpdatedBy({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let url = `${apiEndpoint}/updated_by`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
