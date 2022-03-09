/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.175517
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar Person Object
/// 
/// - Application:        calendar
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/people
/// 
/// Description:
/// The people in your organization with access to Calendar.
/// 
/// Example:
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "first_name": "string",
///     "last_name": "string",
///     "middle_name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string",
///     "child": true,
///     "contact_data": "string",
///     "gender": "string",
///     "has_access": true,
///     "name_prefix": "string",
///     "name_suffix": "string",
///     "pending_request_count": 1,
///     "permissions": 1,
///     "resolves_conflicts": true,
///     "site_administrator": true,
///     "status": "value",
///     "event_permissions_type": "string",
///     "people_permissions_type": "string",
///     "room_permissions_type": "string",
///     "resources_permissions_type": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
/// 
/// All Inbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `person-event-owner`: https://api.planningcenteronline.com/calendar/v2/events/1/owner
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
/// - `person-organization-people`: https://api.planningcenteronline.com/calendar/v2/people
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarPerson extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/people';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  /// - `middle_name`: (URLParameter), query on a specific middle_name, example: ?where[middle_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','first_name','last_name','middle_name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','first_name','last_name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kFirstName() { return 'first_name' }
  static get kLastName() { return 'last_name' }
  static get kMiddleName() { return 'middle_name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAvatarUrl() { return 'avatar_url' }
  static get kChild() { return 'child' }
  static get kContactData() { return 'contact_data' }
  static get kGender() { return 'gender' }
  static get kHasAccess() { return 'has_access' }
  static get kNamePrefix() { return 'name_prefix' }
  static get kNameSuffix() { return 'name_suffix' }
  static get kPendingRequestCount() { return 'pending_request_count' }
  static get kPermissions() { return 'permissions' }
  static get kResolvesConflicts() { return 'resolves_conflicts' }
  static get kSiteAdministrator() { return 'site_administrator' }
  static get kStatus() { return 'status' }
  static get kEventPermissionsType() { return 'event_permissions_type' }
  static get kPeoplePermissionsType() { return 'people_permissions_type' }
  static get kRoomPermissionsType() { return 'room_permissions_type' }
  static get kResourcesPermissionsType() { return 'resources_permissions_type' }


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
  get middleName() { return attributes[this.constructor.kMiddleName] ?? ''; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  get isChild() { return attributes[this.constructor.kChild] == true; }
  get contactData() { return attributes[this.constructor.kContactData] ?? ''; }
  get gender() { return attributes[this.constructor.kGender] ?? ''; }
  get isHasAccess() { return attributes[this.constructor.kHasAccess] == true; }
  get namePrefix() { return attributes[this.constructor.kNamePrefix] ?? ''; }
  get nameSuffix() { return attributes[this.constructor.kNameSuffix] ?? ''; }
  get pendingRequestCount() { return attributes[this.constructor.kPendingRequestCount] ?? 0; }
  get permissions() { return attributes[this.constructor.kPermissions] ?? 0; }
  get isResolvesConflicts() { return attributes[this.constructor.kResolvesConflicts] == true; }
  get isSiteAdministrator() { return attributes[this.constructor.kSiteAdministrator] == true; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get eventPermissionsType() { return attributes[this.constructor.kEventPermissionsType] ?? ''; }
  get peoplePermissionsType() { return attributes[this.constructor.kPeoplePermissionsType] ?? ''; }
  get roomPermissionsType() { return attributes[this.constructor.kRoomPermissionsType] ?? ''; }
  get resourcesPermissionsType() { return attributes[this.constructor.kResourcesPermissionsType] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/people`
  /// 
  /// Available Query Filters:
  /// - `event_owners`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/${conflictId}/resolved_by`
  static getResolvedByFromConflict(conflictId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/conflicts/${conflictId}/resolved_by`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/${eventId}/owner`
  static getOwnerFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/events/${eventId}/owner`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/created_by`
  static getCreatedByFromEventResourceRequest(eventResourceRequestId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/created_by`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/${eventResourceRequestId}/updated_by`
  static getUpdatedByFromEventResourceRequest(eventResourceRequestId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_resource_requests/${eventResourceRequestId}/updated_by`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/people`
  static getPeopleFromResourceApprovalGroup(resourceApprovalGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_approval_groups/${resourceApprovalGroupId}/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests`
  /// 
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventResourceRequests({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let url = `${apiEndpoint}/event_resource_requests`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
