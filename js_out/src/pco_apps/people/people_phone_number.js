/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.896583
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People PhoneNumber Object
/// 
/// - Application:        people
/// - Id:                 phone_number
/// - Type:               PhoneNumber
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// 
/// Description:
/// A phone number represents a single telephone number and location.
/// 
/// Example:
/// ```json
/// {
///   "type": "PhoneNumber",
///   "id": "1",
///   "attributes": {
///     "number": "string",
///     "carrier": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "e164": "string",
///     "international": "string",
///     "national": "string",
///     "country_code": "string"
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
/// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `phonenumber-person-phone_numbers`: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
/// 
/// All Actions:
/// NONE
///
export class PcoPeoplePhoneNumber extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'PhoneNumber';
  static kTypeId = 'phone_number';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'phonenumber-person-phone_numbers';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['carrier','created_at','location','number','primary','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['carrier','created_at','location','number','primary','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeoplePhoneNumber.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeoplePhoneNumber.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeoplePhoneNumber.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kNumber() { return 'number' }
  static get kCarrier() { return 'carrier' }
  static get kLocation() { return 'location' }
  static get kPrimary() { return 'primary' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kE164() { return 'e164' }
  static get kInternational() { return 'international' }
  static get kNational() { return 'national' }
  static get kCountryCode() { return 'country_code' }


  // getters and setters
  // @override
  get createAllowed() { return ['number','carrier','location','primary']; }

  // @override
  get updateAllowed() { return ['number','carrier','location','primary']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get number() { return attributes[this.constructor.kNumber] ?? ''; }
  get carrier() { return attributes[this.constructor.kCarrier] ?? ''; }
  get location() { return attributes[this.constructor.kLocation] ?? ''; }
  get isPrimary() { return attributes[this.constructor.kPrimary] == true; }
  get e164() { return attributes[this.constructor.kE164] ?? ''; }
  get international() { return attributes[this.constructor.kInternational] ?? ''; }
  get national() { return attributes[this.constructor.kNational] ?? ''; }
  get countryCode() { return attributes[this.constructor.kCountryCode] ?? ''; }
  

  // setters for object attributes

  set number(s) {attributes[this.constructor.kNumber] = s;}
  set carrier(s) {attributes[this.constructor.kCarrier] = s;}
  set location(s) {attributes[this.constructor.kLocation] = s;}
  set isPrimary(b) { attributes[this.constructor.kPrimary] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeoplePhoneNumber._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeoplePhoneNumber({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeoplePhoneNumber] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/${peopleId}/phone_numbers`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoPeoplePhoneNumber.kPcoApplication, PcoPeoplePhoneNumber.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/people/${peopleId}/phone_numbers`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/phone_numbers`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePhoneNumber.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/phone_numbers`;
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
