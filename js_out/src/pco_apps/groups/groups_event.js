/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.325825
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Event Object
/// 
/// - Application:        groups
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "attendance_requests_enabled": true,
///     "automated_reminder_enabled": true,
///     "canceled": true,
///     "canceled_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "location_type_preference": "string",
///     "multi_day": true,
///     "name": "string",
///     "reminders_sent": true,
///     "reminders_sent_at": "2000-01-01T12:00:00Z",
///     "repeating": true,
///     "starts_at": "2000-01-01T12:00:00Z",
///     "virtual_location_url": "string"
///   },
///   "relationships": {
///     "attendance_submitter": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "group": {
///       "data": {
///         "type": "Group",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     },
///     "repeating_event": {
///       "data": {
///         "type": "RepeatingEvent",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - group: include associated group 
/// - location: include associated location 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
/// 
/// All Inbound Edges:
/// - `event-group-events`: https://api.planningcenteronline.com/groups/v2/groups/1/events
/// - `event-grouptype-events`: https://api.planningcenteronline.com/groups/v2/group_types/1/events
/// - `event-organization-events`: https://api.planningcenteronline.com/groups/v2/events
/// - `event-person-events`: https://api.planningcenteronline.com/groups/v2/people/1/events
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsEvent extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Event';
  static kTypeId = 'event';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'event-organization-events';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events';

  /// possible includes with parameter ?include=a,b
  /// - `group`: include associated group 
  /// - `location`: include associated location 
  static get canInclude() { return ['group','location'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['ends_at','name','starts_at'] }

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['ends_at','name','starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsEvent.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsEvent.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsEvent.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAttendanceRequestsEnabled() { return 'attendance_requests_enabled' }
  static get kAutomatedReminderEnabled() { return 'automated_reminder_enabled' }
  static get kCanceled() { return 'canceled' }
  static get kCanceledAt() { return 'canceled_at' }
  static get kDescription() { return 'description' }
  static get kEndsAt() { return 'ends_at' }
  static get kLocationTypePreference() { return 'location_type_preference' }
  static get kMultiDay() { return 'multi_day' }
  static get kName() { return 'name' }
  static get kRemindersSent() { return 'reminders_sent' }
  static get kRemindersSentAt() { return 'reminders_sent_at' }
  static get kRepeating() { return 'repeating' }
  static get kStartsAt() { return 'starts_at' }
  static get kVirtualLocationUrl() { return 'virtual_location_url' }


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

  get isAttendanceRequestsEnabled() { return attributes[this.constructor.kAttendanceRequestsEnabled] == true; }
  get isAutomatedReminderEnabled() { return attributes[this.constructor.kAutomatedReminderEnabled] == true; }
  get isCanceled() { return attributes[this.constructor.kCanceled] == true; }
  get canceledAt() { return Date.parse(attributes[this.constructor.kCanceledAt] ?? 0); }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get locationTypePreference() { return attributes[this.constructor.kLocationTypePreference] ?? ''; }
  get isMultiDay() { return attributes[this.constructor.kMultiDay] == true; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isRemindersSent() { return attributes[this.constructor.kRemindersSent] == true; }
  get remindersSentAt() { return Date.parse(attributes[this.constructor.kRemindersSentAt] ?? 0); }
  get isRepeating() { return attributes[this.constructor.kRepeating] == true; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get virtualLocationUrl() { return attributes[this.constructor.kVirtualLocationUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsEvent._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsEvent({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  /// 
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  /// 
  /// - `not_canceled`
  /// - `upcoming`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  static getFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/${groupTypeId}/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  static getFromGroupType(groupTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types/${groupTypeId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/people/${peopleId}/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/people/${peopleId}/events`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsAttendance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/attendances`
  /// 
  /// Available Query Filters:
  /// - `attended`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttendances({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
    let url = `${apiEndpoint}/attendances`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let url = `${apiEndpoint}/group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/location`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    let url = `${apiEndpoint}/location`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
