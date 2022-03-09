/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.836856
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Household Object
/// 
/// - Application:        people
/// - Id:                 household
/// - Type:               Household
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households
/// 
/// Description:
/// A household links people together and can have a primary contact. To add a person to an existing household, use the HouseholdMemberships endpoint.
/// 
/// Example:
/// ```json
/// {
///   "type": "Household",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "member_count": 1,
///     "primary_contact_name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar": "string",
///     "primary_contact_id": "primary_key"
///   },
///   "relationships": {
///     "primary_contact": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "people": {
///       "data": [
///         {
///           "type": "Person",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - people: include associated people 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `person-household-people`: https://api.planningcenteronline.com/people/v2/households/1/people
/// 
/// All Inbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `household-organization-households`: https://api.planningcenteronline.com/people/v2/households
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `household-person-households`: https://api.planningcenteronline.com/people/v2/people/1/households
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleHousehold extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Household';
  static kTypeId = 'household';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'household-organization-households';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/households';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/households';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  static get canInclude() { return ['people'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','member_count','name','primary_contact_name','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','member_count','name','primary_contact_name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleHousehold.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleHousehold.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleHousehold.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kMemberCount() { return 'member_count' }
  static get kPrimaryContactName() { return 'primary_contact_name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAvatar() { return 'avatar' }
  static get kPrimaryContactId() { return 'primary_contact_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','member_count','avatar','primary_contact_id']; }

  // @override
  get updateAllowed() { return ['name','member_count','avatar','primary_contact_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get memberCount() { return attributes[this.constructor.kMemberCount] ?? 0; }
  get primaryContactName() { return attributes[this.constructor.kPrimaryContactName] ?? ''; }
  get avatar() { return attributes[this.constructor.kAvatar] ?? ''; }
  get primaryContactId() { return attributes[this.constructor.kPrimaryContactId] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set memberCount(n) { attributes[this.constructor.kMemberCount] = n; }
  set avatar(s) {attributes[this.constructor.kAvatar] = s;}
  set primaryContactId(s) {attributes[this.constructor.kPrimaryContactId] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleHousehold._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleHousehold({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleHousehold] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/households`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleHousehold.kPcoApplication, PcoPeopleHousehold.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/households`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/households`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/households`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/households/${householdId}/household_memberships/${householdMembershipId}/household`
  static getFromHouseholdAndHouseholdMembership(householdId, householdMembershipId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/households/${householdId}/household_memberships/${householdMembershipId}/household`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/${peopleImportId}/histories/${historyId}/household`
  static getFromPeopleImportAndHistory(peopleImportId, historyId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people_imports/${peopleImportId}/histories/${historyId}/household`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/households`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/households`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHouseholdMemberships({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    let url = `${apiEndpoint}/household_memberships`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/people`
  /// 
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
