/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.597658
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Person Object
/// 
/// - Application:        check-ins
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/people
/// 
/// Description:
/// An attendee, volunteer or administrator.
/// 
/// _Usually_, a person who checked in will be present as a `Person`. In some cases, they may not be present:
/// - The person was manually deleted from the admin interface
/// - The check-in was created as a "Visitor - Label Only" (which doesn't create a corresponding person record)
/// 
/// Example:
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "addresses": [],
///     "email_addresses": [],
///     "phone_numbers": [],
///     "avatar_url": "string",
///     "name_prefix": "string",
///     "first_name": "string",
///     "middle_name": "string",
///     "last_name": "string",
///     "name_suffix": "string",
///     "birthdate": "2000-01-01",
///     "grade": 1,
///     "gender": "string",
///     "medical_notes": "string",
///     "child": true,
///     "permission": "string",
///     "headcounter": true,
///     "last_checked_in_at": "2000-01-01T12:00:00Z",
///     "check_in_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "demographic_avatar_url": "string",
///     "name": "string",
///     "top_permission": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - organization: include associated organization 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `headcounter`: (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=string
/// - `search_name`: (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
/// 
/// Possible orderings with parameter ?order=
/// - `check_in_count`: (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_checked_in_at`: (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// All Outbound Edges:
/// - `checkin-person-check_ins`: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
/// - `organization-person-organization`: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
/// - `personevent-person-person_events`: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
/// 
/// All Inbound Edges:
/// - `person-checkin-checked_in_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
/// - `person-checkin-checked_out_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
/// - `person-checkin-person`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
/// - `person-organization-people`: https://api.planningcenteronline.com/check-ins/v2/people
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
/// - `person-personevent-person`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsPerson extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Person';
  static kTypeId = 'person';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'person-organization-people';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/people';

  /// possible includes with parameter ?include=a,b
  /// - `organization`: include associated organization 
  static get canInclude() { return ['organization'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `headcounter`: (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=string
  /// - `search_name`: (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
  static get canQuery() { return ['headcounter','permission','search_name'] }

  /// possible orderings with parameter ?order=
  /// - `check_in_count`: (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_checked_in_at`: (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static get canOrderBy() { return ['check_in_count','first_name','last_checked_in_at','last_name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsPerson.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsPerson.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsPerson.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAddresses() { return 'addresses' }
  static get kEmailAddresses() { return 'email_addresses' }
  static get kPhoneNumbers() { return 'phone_numbers' }
  static get kAvatarUrl() { return 'avatar_url' }
  static get kNamePrefix() { return 'name_prefix' }
  static get kFirstName() { return 'first_name' }
  static get kMiddleName() { return 'middle_name' }
  static get kLastName() { return 'last_name' }
  static get kNameSuffix() { return 'name_suffix' }
  static get kBirthdate() { return 'birthdate' }
  static get kGrade() { return 'grade' }
  static get kGender() { return 'gender' }
  static get kMedicalNotes() { return 'medical_notes' }
  static get kChild() { return 'child' }
  static get kPermission() { return 'permission' }
  static get kHeadcounter() { return 'headcounter' }
  static get kLastCheckedInAt() { return 'last_checked_in_at' }
  static get kCheckInCount() { return 'check_in_count' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDemographicAvatarUrl() { return 'demographic_avatar_url' }
  static get kName() { return 'name' }
  static get kTopPermission() { return 'top_permission' }
  static get kSearchName() { return 'search_name' }


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
  get emailAddresses() { return attributes[this.constructor.kEmailAddresses] ?? []; }
  get phoneNumbers() { return attributes[this.constructor.kPhoneNumbers] ?? []; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  get namePrefix() { return attributes[this.constructor.kNamePrefix] ?? ''; }
  get firstName() { return attributes[this.constructor.kFirstName] ?? ''; }
  get middleName() { return attributes[this.constructor.kMiddleName] ?? ''; }
  get lastName() { return attributes[this.constructor.kLastName] ?? ''; }
  get nameSuffix() { return attributes[this.constructor.kNameSuffix] ?? ''; }
  get birthdate() { return attributes[this.constructor.kBirthdate] ?? ''; }
  get grade() { return attributes[this.constructor.kGrade] ?? 0; }
  get gender() { return attributes[this.constructor.kGender] ?? ''; }
  get medicalNotes() { return attributes[this.constructor.kMedicalNotes] ?? ''; }
  get isChild() { return attributes[this.constructor.kChild] == true; }
  get permission() { return attributes[this.constructor.kPermission] ?? ''; }
  get isHeadcounter() { return attributes[this.constructor.kHeadcounter] == true; }
  get lastCheckedInAt() { return Date.parse(attributes[this.constructor.kLastCheckedInAt] ?? 0); }
  get checkInCount() { return attributes[this.constructor.kCheckInCount] ?? 0; }
  get demographicAvatarUrl() { return attributes[this.constructor.kDemographicAvatarUrl] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get topPermission() { return attributes[this.constructor.kTopPermission] ?? ''; }
  get searchName() { return attributes[this.constructor.kSearchName] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsPerson._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsPerson({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/people`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/checked_in_by`
  static getCheckedInByFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/checked_in_by`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/checked_out_by`
  static getCheckedOutByFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/checked_out_by`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/person`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/person`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes/${pasId}/person`
  static getFromPas(pasId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/passes/${pasId}/person`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/person_events/${personEventId}/person`
  static getFromEventAndPersonEvent(eventId, personEventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/person_events/${personEventId}/person`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins`
  /// 
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckIns({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/check_ins`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/organization`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOrganization({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    let url = `${apiEndpoint}/organization`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/passes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPasses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    let url = `${apiEndpoint}/passes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/person_events`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPersonEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    let url = `${apiEndpoint}/person_events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
