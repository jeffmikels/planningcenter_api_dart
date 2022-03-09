/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.820111
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Email Object
/// 
/// - Application:        people
/// - Id:                 email
/// - Type:               Email
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/emails
/// 
/// Description:
/// An email represents an email address and location.
/// 
/// Example:
/// ```json
/// {
///   "type": "Email",
///   "id": "1",
///   "attributes": {
///     "address": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "blocked": true
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `address`: (URLParameter), query on a specific address, example: ?where[address]=string
/// - `blocked`: (URLParameter), query on a specific blocked, example: ?where[blocked]=true
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `address`: (URLParameter), prefix with a hyphen (-address) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-email-person`: https://api.planningcenteronline.com/people/v2/emails/1/person
/// 
/// All Inbound Edges:
/// - `email-organization-emails`: https://api.planningcenteronline.com/people/v2/emails
/// - `email-person-emails`: https://api.planningcenteronline.com/people/v2/people/1/emails
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleEmail extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Email';
  static kTypeId = 'email';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'email-organization-emails';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/emails';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/emails';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `address`: (URLParameter), query on a specific address, example: ?where[address]=string
  /// - `blocked`: (URLParameter), query on a specific blocked, example: ?where[blocked]=true
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['address','blocked','created_at','location','primary','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `address`: (URLParameter), prefix with a hyphen (-address) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['address','created_at','location','primary','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleEmail.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleEmail.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleEmail.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAddress() { return 'address' }
  static get kLocation() { return 'location' }
  static get kPrimary() { return 'primary' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kBlocked() { return 'blocked' }


  // getters and setters
  // @override
  get createAllowed() { return ['address','location','primary']; }

  // @override
  get updateAllowed() { return ['address','location','primary']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get address() { return attributes[this.constructor.kAddress] ?? ''; }
  get location() { return attributes[this.constructor.kLocation] ?? ''; }
  get isPrimary() { return attributes[this.constructor.kPrimary] == true; }
  get isBlocked() { return attributes[this.constructor.kBlocked] == true; }
  

  // setters for object attributes

  set address(s) {attributes[this.constructor.kAddress] = s;}
  set location(s) {attributes[this.constructor.kLocation] = s;}
  set isPrimary(b) { attributes[this.constructor.kPrimary] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleEmail._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleEmail({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleEmail] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/emails`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleEmail.kPcoApplication, PcoPeopleEmail.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/emails`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/emails`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/emails`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/emails`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleEmail.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/emails`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails/1/person`
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
