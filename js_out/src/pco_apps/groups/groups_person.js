/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.332849
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Person Object
/// 
/// - Application:        groups
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/people
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "addresses": [],
///     "avatar_url": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "email_addresses": [],
///     "first_name": "string",
///     "last_name": "string",
///     "permissions": "string",
///     "phone_numbers": []
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// All Outbound Edges:
/// - `event-person-events`: https://api.planningcenteronline.com/groups/v2/people/1/events
/// - `group-person-groups`: https://api.planningcenteronline.com/groups/v2/people/1/groups
/// - `membership-person-memberships`: https://api.planningcenteronline.com/groups/v2/people/1/memberships
/// 
/// All Inbound Edges:
/// - `person-attendance-person`: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
/// - `person-group-people`: https://api.planningcenteronline.com/groups/v2/groups/1/people
/// - `person-organization-people`: https://api.planningcenteronline.com/groups/v2/people
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsPerson extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/people';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static get canQuery() { return ['first_name','last_name'] }

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static get canOrderBy() { return ['first_name','last_name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAddresses() { return 'addresses' }
  static get kAvatarUrl() { return 'avatar_url' }
  static get kCreatedAt() { return 'created_at' }
  static get kEmailAddresses() { return 'email_addresses' }
  static get kFirstName() { return 'first_name' }
  static get kLastName() { return 'last_name' }
  static get kPermissions() { return 'permissions' }
  static get kPhoneNumbers() { return 'phone_numbers' }


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

  get addresses() { return attributes[this.constructor.kAddresses] ?? []; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  get emailAddresses() { return attributes[this.constructor.kEmailAddresses] ?? []; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get permissions() { return attributes[this.constructor.kPermissions] ?? ''; }
  get phoneNumbers() { return attributes[this.constructor.kPhoneNumbers] ?? []; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/people`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/events/${eventId}/attendances/${attendanceId}/person`
  static getFromEventAndAttendance(eventId, attendanceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/events/${eventId}/attendances/${attendanceId}/person`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/people`
  static getPeopleFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/events`
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
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/groups`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let url = `${apiEndpoint}/groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/people/1/memberships`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getMemberships({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    let url = `${apiEndpoint}/memberships`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
