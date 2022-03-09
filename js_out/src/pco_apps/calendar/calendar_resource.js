/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.193486
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Resource Object
/// 
/// - Application:        calendar
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resources
/// 
/// Description:
/// A room or resource that can be requested for use as part of
/// an event.
/// 
/// Example:
/// ```json
/// {
///   "type": "Resource",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "name": "string",
///     "serial_number": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "expires_at": "2000-01-01T12:00:00Z",
///     "home_location": "string",
///     "image": "string",
///     "quantity": 1,
///     "path_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resource_approval_groups: include associated resource_approval_groups 
/// - resource_folder: include associated resource_folder 
/// - resource_questions: include associated resource_questions 
/// - room_setups: include associated room_setups 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
/// - `serial_number`: (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `expires_at`: (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
/// - `resourceapprovalgroup-resource-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
/// - `resourcebooking-resource-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
/// - `resourcefolder-resource-resource_folder`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
/// - `resourcequestion-resource-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
/// - `roomsetup-resource-room_setups`: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
/// 
/// All Inbound Edges:
/// - `resource-conflict-resource`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
/// - `resource-eventresourcerequest-resource`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
/// - `resource-organization-resources`: https://api.planningcenteronline.com/calendar/v2/resources
/// - `resource-resourceapprovalgroup-resources`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
/// - `resource-resourcebooking-resource`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
/// - `resource-resourcefolder-resources`: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
/// - `resource-resourcesuggestion-resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
/// - `resource-roomsetup-containing_resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarResource extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Resource';
  static kTypeId = 'resource';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resource-organization-resources';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resources';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resources';

  /// possible includes with parameter ?include=a,b
  /// - `resource_approval_groups`: include associated resource_approval_groups 
  /// - `resource_folder`: include associated resource_folder 
  /// - `resource_questions`: include associated resource_questions 
  /// - `room_setups`: include associated room_setups 
  static get canInclude() { return ['resource_approval_groups','resource_folder','resource_questions','room_setups'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `serial_number`: (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','kind','name','path_name','serial_number','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `expires_at`: (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','expires_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarResource.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResource.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResource.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kKind() { return 'kind' }
  static get kName() { return 'name' }
  static get kSerialNumber() { return 'serial_number' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDescription() { return 'description' }
  static get kExpiresAt() { return 'expires_at' }
  static get kHomeLocation() { return 'home_location' }
  static get kImage() { return 'image' }
  static get kQuantity() { return 'quantity' }
  static get kPathName() { return 'path_name' }


  // getters and setters
  // @override
  get createAllowed() { return ['home_location','name','quantity']; }

  // @override
  get updateAllowed() { return ['home_location','name','quantity']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get serialNumber() { return attributes[this.constructor.kSerialNumber] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get expiresAt() { return Date.parse(attributes[this.constructor.kExpiresAt] ?? 0); }
  get homeLocation() { return attributes[this.constructor.kHomeLocation] ?? ''; }
  get image() { return attributes[this.constructor.kImage] ?? ''; }
  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  get pathName() { return attributes[this.constructor.kPathName] ?? ''; }
  

  // setters for object attributes

  
  /// The name of the room or resource
  set name(s) {attributes[this.constructor.kName] = s;}
  
  /// Where the resource is normally kept
  set homeLocation(s) {attributes[this.constructor.kHomeLocation] = s;}
  
  /// The quantity of the resource
  set quantity(n) { attributes[this.constructor.kQuantity] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResource._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResource({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoCalendarResource] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/resources`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoCalendarResource.kPcoApplication, PcoCalendarResource.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/calendar/v2/resources`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/${conflictId}/resource`
  static getFromConflict(conflictId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/conflicts/${conflictId}/resource`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/resource`
  static getFromEventResourceRequest(eventResourceRequestId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/resource`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static getFromResourceApprovalGroup(resourceApprovalGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/resources`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_bookings/${resourceBookingId}/resource`
  static getFromResourceBooking(resourceBookingId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_bookings/${resourceBookingId}/resource`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders/${resourceFolderId}/resources`
  static getFromResourceFolder(resourceFolderId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_folders/${resourceFolderId}/resources`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/${roomSetupId}/resource_suggestions/${resourceSuggestionId}/resource`
  static getFromRoomSetupAndResourceSuggestion(roomSetupId, resourceSuggestionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/room_setups/${roomSetupId}/resource_suggestions/${resourceSuggestionId}/resource`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/${roomSetupId}/containing_resource`
  static getContainingResourceFromRoomSetup(roomSetupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/room_setups/${roomSetupId}/containing_resource`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getConflicts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    let url = `${apiEndpoint}/conflicts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventResourceRequests({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let url = `${apiEndpoint}/event_resource_requests`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceApprovalGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    let url = `${apiEndpoint}/resource_approval_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings`
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
  /// Will get a [PcoCollection] of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceFolder({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    let url = `${apiEndpoint}/resource_folder`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResourceQuestions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    let url = `${apiEndpoint}/resource_questions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getRoomSetups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    let url = `${apiEndpoint}/room_setups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
