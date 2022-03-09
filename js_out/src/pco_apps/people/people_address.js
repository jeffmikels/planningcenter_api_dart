/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.809339
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Address Object
/// 
/// - Application:        people
/// - Id:                 address
/// - Type:               Address
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/addresses
/// 
/// Description:
/// An address represents a physical and/or mailing address for a person.
/// 
/// Example:
/// ```json
/// {
///   "type": "Address",
///   "id": "1",
///   "attributes": {
///     "city": "string",
///     "state": "string",
///     "zip": "string",
///     "street": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
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
/// - `city`: (URLParameter), query on a specific city, example: ?where[city]=string
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `state`: (URLParameter), query on a specific state, example: ?where[state]=string
/// - `street`: (URLParameter), query on a specific street, example: ?where[street]=string
/// - `zip`: (URLParameter), query on a specific zip, example: ?where[zip]=string
/// 
/// Possible orderings with parameter ?order=
/// - `city`: (URLParameter), prefix with a hyphen (-city) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `state`: (URLParameter), prefix with a hyphen (-state) to reverse the order
/// - `street`: (URLParameter), prefix with a hyphen (-street) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `zip`: (URLParameter), prefix with a hyphen (-zip) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `address-organization-addresses`: https://api.planningcenteronline.com/people/v2/addresses
/// - `address-person-addresses`: https://api.planningcenteronline.com/people/v2/people/1/addresses
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleAddres extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Address';
  static kTypeId = 'address';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'address-organization-addresses';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/addresses';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/addresses';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `city`: (URLParameter), query on a specific city, example: ?where[city]=string
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `state`: (URLParameter), query on a specific state, example: ?where[state]=string
  /// - `street`: (URLParameter), query on a specific street, example: ?where[street]=string
  /// - `zip`: (URLParameter), query on a specific zip, example: ?where[zip]=string
  static get canQuery() { return ['city','location','primary','state','street','zip'] }

  /// possible orderings with parameter ?order=
  /// - `city`: (URLParameter), prefix with a hyphen (-city) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `state`: (URLParameter), prefix with a hyphen (-state) to reverse the order
  /// - `street`: (URLParameter), prefix with a hyphen (-street) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `zip`: (URLParameter), prefix with a hyphen (-zip) to reverse the order
  static get canOrderBy() { return ['city','created_at','location','primary','state','street','updated_at','zip'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleAddres.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleAddres.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleAddres.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCity() { return 'city' }
  static get kState() { return 'state' }
  static get kZip() { return 'zip' }
  static get kStreet() { return 'street' }
  static get kLocation() { return 'location' }
  static get kPrimary() { return 'primary' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['city','state','zip','street','location','primary']; }

  // @override
  get updateAllowed() { return ['city','state','zip','street','location','primary']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get city() { return attributes[this.constructor.kCity] ?? ''; }
  get state() { return attributes[this.constructor.kState] ?? ''; }
  get zip() { return attributes[this.constructor.kZip] ?? ''; }
  get street() { return attributes[this.constructor.kStreet] ?? ''; }
  get location() { return attributes[this.constructor.kLocation] ?? ''; }
  get isPrimary() { return attributes[this.constructor.kPrimary] == true; }
  

  // setters for object attributes

  set city(s) {attributes[this.constructor.kCity] = s;}
  set state(s) {attributes[this.constructor.kState] = s;}
  set zip(s) {attributes[this.constructor.kZip] = s;}
  set street(s) {attributes[this.constructor.kStreet] = s;}
  set location(s) {attributes[this.constructor.kLocation] = s;}
  set isPrimary(b) { attributes[this.constructor.kPrimary] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleAddres._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleAddres({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleAddres] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/addresses`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleAddres.kPcoApplication, PcoPeopleAddres.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/addresses`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `/people/v2/addresses`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/addresses`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/addresses`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/addresses`;
    if (id != null) url += `/${id}`;
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
