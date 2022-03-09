/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.197349
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar ResourceApprovalGroup Object
/// 
/// - Application:        calendar
/// - Id:                 resource_approval_group
/// - Type:               ResourceApprovalGroup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// 
/// Description:
/// A group of people that can be attached to a room or resource
/// in order to require their approval for booking.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceApprovalGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - people: include associated people 
/// - resources: include associated resources 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
/// - `resource-resourceapprovalgroup-resources`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
/// 
/// All Inbound Edges:
/// - `resourceapprovalgroup-organization-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - `resourceapprovalgroup-resource-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarResourceApprovalGroup extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'ResourceApprovalGroup';
  static kTypeId = 'resource_approval_group';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'resourceapprovalgroup-organization-resource_approval_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  /// - `resources`: include associated resources 
  static get canInclude() { return ['people','resources'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarResourceApprovalGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarResourceApprovalGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarResourceApprovalGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCreatedAt() { return 'created_at' }
  static get kName() { return 'name' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kResourceCount() { return 'resource_count' }
  static get kRoomCount() { return 'room_count' }


  // getters and setters
  // @override
  get createAllowed() { return ['name']; }

  // @override
  get updateAllowed() { return ['name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get resourceCount() { return attributes[this.constructor.kResourceCount] ?? 0; }
  get roomCount() { return attributes[this.constructor.kRoomCount] ?? 0; }
  

  // setters for object attributes

  
  /// Name of the approval group
  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarResourceApprovalGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarResourceApprovalGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoCalendarResourceApprovalGroup] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoCalendarResourceApprovalGroup.kPcoApplication, PcoCalendarResourceApprovalGroup.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resource_approval_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/${resourceId}/resource_approval_groups`
  static getFromResource(resourceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/resources/${resourceId}/resource_approval_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventResourceRequests({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    let url = `${apiEndpoint}/event_resource_requests`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResources({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    let url = `${apiEndpoint}/resources`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
