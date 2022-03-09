/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.837763
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People HouseholdMembership Object
/// 
/// - Application:        people
/// - Id:                 household_membership
/// - Type:               HouseholdMembership
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// 
/// Description:
/// A household membership is the linking record between a household and a person.
/// 
/// Example:
/// ```json
/// {
///   "type": "HouseholdMembership",
///   "id": "1",
///   "attributes": {
///     "person_name": "string",
///     "pending": true
///   },
///   "relationships": {
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
/// - household: include associated household 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
/// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
/// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
///
/// All Outbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `person-householdmembership-person`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
/// 
/// All Inbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `householdmembership-person-household_memberships`: https://api.planningcenteronline.com/people/v2/people/1/household_memberships
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleHouseholdMembership extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'HouseholdMembership';
  static kTypeId = 'household_membership';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'householdmembership-person-household_memberships';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/household_memberships';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/households/1/household_memberships';

  /// possible includes with parameter ?include=a,b
  /// - `household`: include associated household 
  /// - `person`: include associated person 
  static get canInclude() { return ['household','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `pending`: (URLParameter), query on a specific pending, example: ?where[pending]=true
  /// - `person_name`: (URLParameter), query on a specific person_name, example: ?where[person_name]=string
  static get canQuery() { return ['pending','person_name'] }

  /// possible orderings with parameter ?order=
  /// - `pending`: (URLParameter), prefix with a hyphen (-pending) to reverse the order
  /// - `person_name`: (URLParameter), prefix with a hyphen (-person_name) to reverse the order
  static get canOrderBy() { return ['pending','person_name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleHouseholdMembership.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleHouseholdMembership.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleHouseholdMembership.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kPersonName() { return 'person_name' }
  static get kPending() { return 'pending' }
  static get kPersonId() { return 'person_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['person_id','pending']; }

  // @override
  get updateAllowed() { return ['person_id','pending']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get personName() { return attributes[this.constructor.kPersonName] ?? ''; }
  get isPending() { return attributes[this.constructor.kPending] == true; }
  

  // setters for object attributes

  
  /// False when a person's memership in a household is unverified.
  set isPending(b) { attributes[this.constructor.kPending] = b; }
  

  // additional setters and getters for assignable values

  get personId() { return attributes[this.constructor.kPersonId] ?? ''; }
  set personId(s) {attributes[this.constructor.kPersonId] = s;}
  



  // Class Constructors
  // PcoPeopleHouseholdMembership._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleHouseholdMembership({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleHouseholdMembership] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/households/${householdId}/household_memberships`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(householdId) {
    super(PcoPeopleHouseholdMembership.kPcoApplication, PcoPeopleHouseholdMembership.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/households/${householdId}/household_memberships`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/households/${householdId}/household_memberships`
  static getFromHousehold(householdId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/households/${householdId}/household_memberships`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/household_memberships`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/household_memberships`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHousehold({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    let url = `${apiEndpoint}/household`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
