/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.163498
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Event Object
/// 
/// - Application:        calendar
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/events
/// 
/// Description:
/// An event.
/// 
/// May contain information such as who owns
/// the event, visibility on Church Center and a public-facing summary.
/// 
/// Example:
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "approval_status": "string",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "details": "string",
///     "image_url": "string",
///     "name": "string",
///     "percent_approved": 1,
///     "percent_rejected": 1,
///     "registration_url": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "visible_in_church_center": true
///   },
///   "relationships": {
///     "owner": {
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
/// - attachments: include associated attachments 
/// - owner: include associated owner 
/// - tags: include associated tags 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `percent_rejected`: (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `visible_in_church_center`: (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `attachment-event-attachments`: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `eventinstance-event-event_instances`: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `feed-event-feed`: https://api.planningcenteronline.com/calendar/v2/events/1/feed
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `tag-event-tags`: https://api.planningcenteronline.com/calendar/v2/events/1/tags
/// 
/// All Inbound Edges:
/// - `event-attachment-event`: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
/// - `event-eventinstance-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `event-eventtime-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
/// - `event-organization-events`: https://api.planningcenteronline.com/calendar/v2/events
/// - `event-tag-events`: https://api.planningcenteronline.com/calendar/v2/tags/1/events
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarEvent extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Event';
  static kTypeId = 'event';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'event-organization-events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/events';

  /// possible includes with parameter ?include=a,b
  /// - `attachments`: include associated attachments 
  /// - `owner`: include associated owner 
  /// - `tags`: include associated tags 
  static get canInclude() { return ['attachments','owner','tags'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `percent_rejected`: (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `visible_in_church_center`: (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
  static get canQuery() { return ['approval_status','created_at','name','percent_approved','percent_rejected','updated_at','visible_in_church_center'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kApprovalStatus() { return 'approval_status' }
  static get kArchivedAt() { return 'archived_at' }
  static get kCreatedAt() { return 'created_at' }
  static get kDetails() { return 'details' }
  static get kImageUrl() { return 'image_url' }
  static get kName() { return 'name' }
  static get kPercentApproved() { return 'percent_approved' }
  static get kPercentRejected() { return 'percent_rejected' }
  static get kRegistrationUrl() { return 'registration_url' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kVisibleInChurchCenter() { return 'visible_in_church_center' }


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

  get approvalStatus() { return attributes[this.constructor.kApprovalStatus] ?? ''; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get details() { return attributes[this.constructor.kDetails] ?? ''; }
  get imageUrl() { return attributes[this.constructor.kImageUrl] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get percentApproved() { return attributes[this.constructor.kPercentApproved] ?? 0; }
  get percentRejected() { return attributes[this.constructor.kPercentRejected] ?? 0; }
  get registrationUrl() { return attributes[this.constructor.kRegistrationUrl] ?? ''; }
  get isVisibleInChurchCenter() { return attributes[this.constructor.kVisibleInChurchCenter] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/events`
  /// 
  /// Available Query Filters:
  /// - `future`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/attachments/${attachmentId}/event`
  static getFromAttachment(attachmentId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/attachments/${attachmentId}/event`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/conflicts/${conflictId}/winner`
  static getWinnerFromConflict(conflictId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/conflicts/${conflictId}/winner`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/${eventInstanceId}/event`
  static getFromEventInstance(eventInstanceId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances/${eventInstanceId}/event`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/event`
  static getFromEventResourceRequest(eventResourceRequestId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/event`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_instances/${eventInstanceId}/event_times/${eventTimeId}/event`
  static getFromEventInstanceAndEventTime(eventInstanceId, eventTimeId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances/${eventInstanceId}/event_times/${eventTimeId}/event`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/${tagId}/events`
  static getFromTag(tagId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tags/${tagId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/${tagGroupId}/events`
  static getFromTagGroup(tagGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/tag_groups/${tagGroupId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/attachments`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttachments({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    let url = `${apiEndpoint}/attachments`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/conflicts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getConflicts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    let url = `${apiEndpoint}/conflicts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_instances`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventInstances({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    let url = `${apiEndpoint}/event_instances`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventResourceRequests({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let url = `${apiEndpoint}/event_resource_requests`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/feed`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFeed({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarFeed.canInclude;
    let url = `${apiEndpoint}/feed`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/owner`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOwner({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let url = `${apiEndpoint}/owner`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
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
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/events/1/tags`
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
