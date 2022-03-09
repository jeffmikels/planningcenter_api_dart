/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.331198
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Membership Object
/// 
/// - Application:        groups
/// - Id:                 membership
/// - Type:               Membership
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Membership",
///   "id": "1",
///   "attributes": {
///     "account_center_identifier": "string",
///     "avatar_url": "string",
///     "color_identifier": "string",
///     "email_address": "string",
///     "first_name": "string",
///     "joined_at": "2000-01-01T12:00:00Z",
///     "last_name": "string",
///     "phone_number": "string",
///     "role": "string"
///   },
///   "relationships": {
///     "group": {
///       "data": {
///         "type": "Group",
///         "id": "1"
///       }
///     },
///     "person": {
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `role`: (URLParameter), query on a specific role, example: ?where[role]=string
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `joined_at`: (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
///
/// All Outbound Edges:
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
/// 
/// All Inbound Edges:
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `membership-person-memberships`: https://api.planningcenteronline.com/groups/v2/people/1/memberships
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsMembership extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Membership';
  static kTypeId = 'membership';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'membership-person-memberships';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people/1/memberships';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/memberships';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=string
  static get canQuery() { return ['role'] }

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `joined_at`: (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static get canOrderBy() { return ['first_name','joined_at','last_name','role'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsMembership.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsMembership.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsMembership.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAccountCenterIdentifier() { return 'account_center_identifier' }
  static get kAvatarUrl() { return 'avatar_url' }
  static get kColorIdentifier() { return 'color_identifier' }
  static get kEmailAddress() { return 'email_address' }
  static get kFirstName() { return 'first_name' }
  static get kJoinedAt() { return 'joined_at' }
  static get kLastName() { return 'last_name' }
  static get kPhoneNumber() { return 'phone_number' }
  static get kRole() { return 'role' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['person_id','role','joined_at']; }

  // @override
  get updateAllowed() { return ['role','joined_at']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get accountCenterIdentifier() { return attributes[this.constructor.kAccountCenterIdentifier] ?? ''; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  get colorIdentifier() { return attributes[this.constructor.kColorIdentifier] ?? ''; }
  get emailAddress() { return attributes[this.constructor.kEmailAddress] ?? ''; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get joinedAt() { return Date.parse(attributes[this.constructor.kJoinedAt] ?? 0); }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get phoneNumber() { return attributes[this.constructor.kPhoneNumber] ?? ''; }
  get role() { return attributes[this.constructor.kRole] ?? ''; }
  

  // setters for object attributes

  set joinedAt(d) { attributes[this.constructor.kJoinedAt] = d.toISOString(); }
  
  /// Can be either `leader` or `member`
  set role(s) {attributes[this.constructor.kRole] = s;}
  

  // additional setters and getters for assignable values

  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  



  // Class Constructors
  // PcoGroupsMembership._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsMembership({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoGroupsMembership] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/groups/v2/groups/${groupId}/memberships`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(groupId) {
    super(PcoGroupsMembership.kPcoApplication, PcoGroupsMembership.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/groups/v2/groups/${groupId}/memberships`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/${groupId}/memberships`
  static getFromGroup(groupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/groups/${groupId}/memberships`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `/groups/v2/people/${peopleId}/memberships`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/people/${peopleId}/memberships`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getGroup({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    let url = `${apiEndpoint}/group`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
