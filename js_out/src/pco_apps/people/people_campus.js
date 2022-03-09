/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.813716
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Campus Object
/// 
/// - Application:        people
/// - Id:                 campus
/// - Type:               Campus
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses
/// 
/// Description:
/// A Campus is a location belonging to an Organization
/// 
/// Example:
/// ```json
/// {
///   "type": "Campus",
///   "id": "1",
///   "attributes": {
///     "latitude": 1.42,
///     "longitude": 1.42,
///     "description": "string",
///     "street": "string",
///     "city": "string",
///     "state": "string",
///     "zip": "string",
///     "country": "string",
///     "phone_number": "string",
///     "website": "string",
///     "twenty_four_hour_time": true,
///     "date_format": 1,
///     "church_center_enabled": true,
///     "contact_email_address": "string",
///     "time_zone": "string",
///     "geolocation_set_manually": true,
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "avatar_url": "string"
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
/// - lists: include associated lists 
/// - service_times: include associated service_times 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `list-campus-lists`: https://api.planningcenteronline.com/people/v2/campuses/1/lists
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// All Inbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `campus-list-campus`: https://api.planningcenteronline.com/people/v2/lists/1/campus
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/people/v2/campuses
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleCampus extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Campus';
  static kTypeId = 'campus';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'campus-organization-campuses';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists 
  /// - `service_times`: include associated service_times 
  static get canInclude() { return ['lists','service_times'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','name','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleCampus.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleCampus.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleCampus.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kLatitude() { return 'latitude' }
  static get kLongitude() { return 'longitude' }
  static get kDescription() { return 'description' }
  static get kStreet() { return 'street' }
  static get kCity() { return 'city' }
  static get kState() { return 'state' }
  static get kZip() { return 'zip' }
  static get kCountry() { return 'country' }
  static get kPhoneNumber() { return 'phone_number' }
  static get kWebsite() { return 'website' }
  static get kTwentyFourHourTime() { return 'twenty_four_hour_time' }
  static get kDateFormat() { return 'date_format' }
  static get kChurchCenterEnabled() { return 'church_center_enabled' }
  static get kContactEmailAddress() { return 'contact_email_address' }
  static get kTimeZone() { return 'time_zone' }
  static get kGeolocationSetManually() { return 'geolocation_set_manually' }
  static get kName() { return 'name' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kAvatarUrl() { return 'avatar_url' }


  // getters and setters
  // @override
  get createAllowed() { return ['latitude','longitude','description','street','city','state','zip','country','phone_number','website','twenty_four_hour_time','date_format','church_center_enabled','contact_email_address','time_zone','geolocation_set_manually','name']; }

  // @override
  get updateAllowed() { return ['latitude','longitude','description','street','city','state','zip','country','phone_number','website','twenty_four_hour_time','date_format','church_center_enabled','contact_email_address','time_zone','geolocation_set_manually','name']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get latitude() { return attributes[this.constructor.kLatitude] ?? 0; }
  get longitude() { return attributes[this.constructor.kLongitude] ?? 0; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get street() { return attributes[this.constructor.kStreet] ?? ''; }
  get city() { return attributes[this.constructor.kCity] ?? ''; }
  get state() { return attributes[this.constructor.kState] ?? ''; }
  get zip() { return attributes[this.constructor.kZip] ?? ''; }
  get country() { return attributes[this.constructor.kCountry] ?? ''; }
  get phoneNumber() { return attributes[this.constructor.kPhoneNumber] ?? ''; }
  get website() { return attributes[this.constructor.kWebsite] ?? ''; }
  get isTwentyFourHourTime() { return attributes[this.constructor.kTwentyFourHourTime] == true; }
  get dateFormat() { return attributes[this.constructor.kDateFormat] ?? 0; }
  get isChurchCenterEnabled() { return attributes[this.constructor.kChurchCenterEnabled] == true; }
  get contactEmailAddress() { return attributes[this.constructor.kContactEmailAddress] ?? ''; }
  get timeZone() { return attributes[this.constructor.kTimeZone] ?? ''; }
  get isGeolocationSetManually() { return attributes[this.constructor.kGeolocationSetManually] == true; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  

  // setters for object attributes

  set latitude(n) { attributes[this.constructor.kLatitude] = n; }
  set longitude(n) { attributes[this.constructor.kLongitude] = n; }
  set description(s) {attributes[this.constructor.kDescription] = s;}
  set street(s) {attributes[this.constructor.kStreet] = s;}
  set city(s) {attributes[this.constructor.kCity] = s;}
  set state(s) {attributes[this.constructor.kState] = s;}
  set zip(s) {attributes[this.constructor.kZip] = s;}
  set country(s) {attributes[this.constructor.kCountry] = s;}
  set phoneNumber(s) {attributes[this.constructor.kPhoneNumber] = s;}
  set website(s) {attributes[this.constructor.kWebsite] = s;}
  set isTwentyFourHourTime(b) { attributes[this.constructor.kTwentyFourHourTime] = b; }
  set dateFormat(n) { attributes[this.constructor.kDateFormat] = n; }
  set isChurchCenterEnabled(b) { attributes[this.constructor.kChurchCenterEnabled] = b; }
  set contactEmailAddress(s) {attributes[this.constructor.kContactEmailAddress] = s;}
  set timeZone(s) {attributes[this.constructor.kTimeZone] = s;}
  set isGeolocationSetManually(b) { attributes[this.constructor.kGeolocationSetManually] = b; }
  set name(s) {attributes[this.constructor.kName] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleCampus._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleCampus({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleCampus] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/campuses`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleCampus.kPcoApplication, PcoPeopleCampus.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/campuses`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `/people/v2/campuses`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/campuses`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/forms/${formId}/campus`
  static getFromForm(formId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/campus`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/lists/${listId}/campus`
  static getFromList(listId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/lists/${listId}/campus`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/primary_campus`
  static getPrimaryCampusFromPeople(peopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/primary_campus`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/lists`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLists({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    let url = `${apiEndpoint}/lists`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/service_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getServiceTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    let url = `${apiEndpoint}/service_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
