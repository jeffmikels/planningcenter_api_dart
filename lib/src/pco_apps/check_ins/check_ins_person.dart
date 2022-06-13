/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.666828
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO CheckIns Person Object
///
/// - Application:        check-ins
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/people
/// - Create Endpoint:    NONE
///
/// ## Description
/// An attendee, volunteer or administrator.
///
/// _Usually_, a person who checked in will be present as a `Person`. In some cases, they may not be present:
/// - The person was manually deleted from the admin interface
/// - The check-in was created as a "Visitor - Label Only" (which doesn't create a corresponding person record)
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `addresses` (ro) -> PCO: `addresses`
/// - `emailAddresses` (ro) -> PCO: `email_addresses`
/// - `phoneNumbers` (ro) -> PCO: `phone_numbers`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `namePrefix` (ro) -> PCO: `name_prefix`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `middleName` (ro) -> PCO: `middle_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `nameSuffix` (ro) -> PCO: `name_suffix`
/// - `birthdate` (ro) -> PCO: `birthdate`
/// - `grade` (ro) -> PCO: `grade`
/// - `gender` (ro) -> PCO: `gender`
/// - `medicalNotes` (ro) -> PCO: `medical_notes`
/// - `isChild` (ro) -> PCO: `child`
/// - `permission` (ro) -> PCO: `permission`
/// - `isHeadcounter` (ro) -> PCO: `headcounter`
/// - `lastCheckedInAt` (ro) -> PCO: `last_checked_in_at`
/// - `checkInCount` (ro) -> PCO: `check_in_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `demographicAvatarUrl` (ro) -> PCO: `demographic_avatar_url`
/// - `name` (ro) -> PCO: `name`
/// - `topPermission` (ro) -> PCO: `top_permission`
/// - `searchName` (ro) -> PCO: `search_name`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `organization`: include associated organization
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `headcounter`: (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=string
/// - `search_name`: (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `check_in_count`: (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_checked_in_at`: (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-person-check_ins`: https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins
/// - `organization-person-organization`: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
/// - `personevent-person-person_events`: https://api.planningcenteronline.com/check-ins/v2/people/1/person_events
///
/// Inbound Edges:
/// - `person-checkin-checked_in_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_by
/// - `person-checkin-checked_out_by`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_out_by
/// - `person-checkin-person`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/person
/// - `person-organization-people`: https://api.planningcenteronline.com/check-ins/v2/people
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
/// - `person-personevent-person`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/person
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoCheckInsPerson extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `organization`: include associated organization
  static List<String> get canInclude => ['organization'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `headcounter`: (URLParameter), query on a specific headcounter, example: ?where[headcounter]=true
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=string
  /// - `search_name`: (URLParameter), Search by person name (first, last, combination), example: ?where[search_name]=string
  static List<String> get canQuery =>
      ['headcounter', 'permission', 'search_name'];

  /// possible orderings with parameter ?order=
  /// - `check_in_count`: (URLParameter), prefix with a hyphen (-check_in_count) to reverse the order
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_checked_in_at`: (URLParameter), prefix with a hyphen (-last_checked_in_at) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy =>
      ['check_in_count', 'first_name', 'last_checked_in_at', 'last_name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kAddresses = 'addresses';
  static const kEmailAddresses = 'email_addresses';
  static const kPhoneNumbers = 'phone_numbers';
  static const kAvatarUrl = 'avatar_url';
  static const kNamePrefix = 'name_prefix';
  static const kFirstName = 'first_name';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kNameSuffix = 'name_suffix';
  static const kBirthdate = 'birthdate';
  static const kGrade = 'grade';
  static const kGender = 'gender';
  static const kMedicalNotes = 'medical_notes';
  static const kChild = 'child';
  static const kPermission = 'permission';
  static const kHeadcounter = 'headcounter';
  static const kLastCheckedInAt = 'last_checked_in_at';
  static const kCheckInCount = 'check_in_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDemographicAvatarUrl = 'demographic_avatar_url';
  static const kName = 'name';
  static const kTopPermission = 'top_permission';
  static const kSearchName = 'search_name';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  List get addresses => attributes[kAddresses] ?? [];
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  String get namePrefix => attributes[kNamePrefix] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get nameSuffix => attributes[kNameSuffix] ?? '';
  String get birthdate => attributes[kBirthdate] ?? '';
  int get grade => attributes[kGrade] ?? 0;
  String get gender => attributes[kGender] ?? '';
  String get medicalNotes => attributes[kMedicalNotes] ?? '';
  bool get isChild => attributes[kChild] == true;
  String get permission => attributes[kPermission] ?? '';
  bool get isHeadcounter => attributes[kHeadcounter] == true;
  DateTime get lastCheckedInAt =>
      DateTime.parse(attributes[kLastCheckedInAt] ?? '');
  int get checkInCount => attributes[kCheckInCount] ?? 0;
  String get demographicAvatarUrl => attributes[kDemographicAvatarUrl] ?? '';
  String get name => attributes[kName] ?? '';
  String get topPermission => attributes[kTopPermission] ?? '';
  String get searchName => attributes[kSearchName] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedOrganization<T extends PcoResource>() =>
      relationships['organization']?.cast<T>() ?? [];

  // Class Constructors
  PcoCheckInsPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCheckInsPerson.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people`
  static Future<PcoCollection<PcoCheckInsPerson>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_by`
  static Future<PcoCollection<PcoCheckInsPerson>> getCheckedInByFromCheckIn(
      String checkInId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_out_by`
  static Future<PcoCollection<PcoCheckInsPerson>> getCheckedOutByFromCheckIn(
      String checkInId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/person`
  static Future<PcoCollection<PcoCheckInsPerson>> getFromCheckIn(
      String checkInId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes/$pasId/person`
  static Future<PcoCollection<PcoCheckInsPerson>> getFromPas(String pasId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url = '/check-ins/v2/passes/$pasId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/person`
  static Future<PcoCollection<PcoCheckInsPerson>> getFromEventAndPersonEvent(
      String eventId, String personEventId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/organization`
  Future<PcoCollection<PcoCheckInsOrganization>> getOrganization(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    var url = '$apiEndpoint/organization';
    return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/passes`
  Future<PcoCollection<PcoCheckInsPas>> getPasses(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    var url = '$apiEndpoint/passes';
    return PcoCollection.fromApiCall<PcoCheckInsPas>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/person_events`
  Future<PcoCollection<PcoCheckInsPersonEvent>> getPersonEvents(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
    var url = '$apiEndpoint/person_events';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
