/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.819313
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People ConnectedPerson Object
/// 
/// - Application:        people
/// - Id:                 connected_person
/// - Type:               ConnectedPerson
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// 
/// Description:
/// A Connected Person is an account from a different organization linked to an account in this organization.
/// 
/// Example:
/// ```json
/// {
///   "type": "ConnectedPerson",
///   "id": "1",
///   "attributes": {
///     "given_name": "string",
///     "first_name": "string",
///     "nickname": "string",
///     "middle_name": "string",
///     "last_name": "string",
///     "gender": "string",
///     "organization_name": "string",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
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
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `connectedperson-person-connected_people`: https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleConnectedPerson extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'ConnectedPerson';
  static kTypeId = 'connected_person';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'connectedperson-person-connected_people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/connected_people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/connected_people';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleConnectedPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleConnectedPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleConnectedPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kGivenName() { return 'given_name' }
  static get kFirstName() { return 'first_name' }
  static get kNickname() { return 'nickname' }
  static get kMiddleName() { return 'middle_name' }
  static get kLastName() { return 'last_name' }
  static get kGender() { return 'gender' }
  static get kOrganizationName() { return 'organization_name' }
  static get kOrganizationId() { return 'organization_id' }


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

  get givenName() { return attributes[this.constructor.kGivenName] ?? ''; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get nickname() { return attributes[this.constructor.kNickname] ?? ''; }
  get middleName() { return attributes[this.constructor.kMiddleName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get gender() { return attributes[this.constructor.kGender] ?? ''; }
  get organizationName() { return attributes[this.constructor.kOrganizationName] ?? ''; }
  get organizationId() { return attributes[this.constructor.kOrganizationId] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleConnectedPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleConnectedPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleConnectedPerson] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/connected_people`
  static getConnectedPeopleFromPeople(peopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleConnectedPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/connected_people`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
