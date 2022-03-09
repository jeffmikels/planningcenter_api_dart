/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.327744
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Group Object
/// 
/// - Application:        groups
/// - Id:                 group
/// - Type:               Group
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Group",
///   "id": "1",
///   "attributes": {
///     "archived_at": "2000-01-01T12:00:00Z",
///     "contact_email": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "enrollment_open": true,
///     "enrollment_strategy": "value",
///     "events_visibility": "value",
///     "header_image": {},
///     "location_type_preference": "value",
///     "memberships_count": 1,
///     "name": "string",
///     "public_church_center_web_url": "string",
///     "schedule": "string",
///     "virtual_location_url": "string"
///   },
///   "relationships": {
///     "group_type": {
///       "data": {
///         "type": "GroupType",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - group_type: include associated group_type 
/// - location: include associated location 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `event-group-events`: https://api.planningcenteronline.com/groups/v2/groups/1/events
/// - `grouptype-group-group_type`: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `person-group-people`: https://api.planningcenteronline.com/groups/v2/groups/1/people
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `tag-group-tags`: https://api.planningcenteronline.com/groups/v2/groups/1/tags
/// 
/// All Inbound Edges:
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `group-grouptype-groups`: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
/// - `group-organization-groups`: https://api.planningcenteronline.com/groups/v2/groups
/// - `group-person-groups`: https://api.planningcenteronline.com/groups/v2/people/1/groups
/// - `group-tag-groups`: https://api.planningcenteronline.com/groups/v2/tags/1/groups
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsGroup extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Group';
  static kTypeId = 'group';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'group-organization-groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';

  /// possible includes with parameter ?include=a,b
  /// - `group_type`: include associated group_type 
  /// - `location`: include associated location 
  static get canInclude() { return ['group_type','location'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
  static get canQuery() { return ['archive_status'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kArchiveStatus() { return 'archive_status' }
  static get kArchivedAt() { return 'archived_at' }
  static get kContactEmail() { return 'contact_email' }
  static get kCreatedAt() { return 'created_at' }
  static get kDescription() { return 'description' }
  static get kEnrollmentOpen() { return 'enrollment_open' }
  static get kEnrollmentStrategy() { return 'enrollment_strategy' }
  static get kEventsVisibility() { return 'events_visibility' }
  static get kHeaderImage() { return 'header_image' }
  static get kLocationTypePreference() { return 'location_type_preference' }
  static get kMembershipsCount() { return 'memberships_count' }
  static get kName() { return 'name' }
  static get kPublicChurchCenterWebUrl() { return 'public_church_center_web_url' }
  static get kSchedule() { return 'schedule' }
  static get kVirtualLocationUrl() { return 'virtual_location_url' }
  static get kWidgetStatus() { return 'widget_status' }


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

  get archiveStatus() { return attributes[this.constructor.kArchiveStatus] ?? ''; }
  get archivedAt() { return Date.parse(attributes[this.constructor.kArchivedAt] ?? 0); }
  get contactEmail() { return attributes[this.constructor.kContactEmail] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get isEnrollmentOpen() { return attributes[this.constructor.kEnrollmentOpen] == true; }
  get enrollmentStrategy() { return attributes[this.constructor.kEnrollmentStrategy] ?? ''; }
  get eventsVisibility() { return attributes[this.constructor.kEventsVisibility] ?? ''; }
  get headerImage() { return attributes[this.constructor.kHeaderImage] ?? ''; }
  get locationTypePreference() { return attributes[this.constructor.kLocationTypePreference] ?? ''; }
  get membershipsCount() { return attributes[this.constructor.kMembershipsCount] ?? 0; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get publicChurchCenterWebUrl() { return attributes[this.constructor.kPublicChurchCenterWebUrl] ?? ''; }
  get schedule() { return attributes[this.constructor.kSchedule] ?? ''; }
  get virtualLocationUrl() { return attributes[this.constructor.kVirtualLocationUrl] ?? ''; }
  get widgetStatus() { return attributes[this.constructor.kWidgetStatus] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/groups`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/events/${eventId}/group`
  static getFromEvent(eventId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/events/${eventId}/group`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/${groupTypeId}/groups`
  static getFromGroupType(groupTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/group_types/${groupTypeId}/groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/groups/${groupId}/memberships/${membershipId}/group`
  static getFromGroupAndMembership(groupId, membershipId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/memberships/${membershipId}/group`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/people/${peopleId}/groups`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/people/${peopleId}/groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tags/${tagId}/groups`
  static getFromTag(tagId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/tags/${tagId}/groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroupType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/group_type`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getGroupType({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    let url = `${apiEndpoint}/group_type`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/location`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    let url = `${apiEndpoint}/location`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMemberships({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    let url = `${apiEndpoint}/memberships`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/resources`
  /// 
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  /// 
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getResources({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    let url = `${apiEndpoint}/resources`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/tags`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTags({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    let url = `${apiEndpoint}/tags`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
