/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:22.790760
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `checkInCount` -> `?order=check_in_count`
/// - `firstName` -> `?order=first_name`
/// - `lastCheckedInAt` -> `?order=last_checked_in_at`
/// - `lastName` -> `?order=last_name`
enum PcoCheckInsPersonOrder {
  checkInCount,
  firstName,
  lastCheckedInAt,
  lastName
}

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsPersonFilter { none }

/// Creates a [PcoCheckInsPersonQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeOrganization`: include associated organization
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsPersonQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsPerson] objects can be requested with one or more of the following criteria:
/// - `whereHeadcounter`: query on a specific headcounter, example: ?where[headcounter]=true
/// - `wherePermission`: query on a specific permission, example: ?where[permission]=string
/// - `whereSearchName`: Search by person name (first, last, combination), example: ?where[search_name]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCheckInsPersonOrder.checkInCount` : will order by `check_in_count`
/// - `PcoCheckInsPersonOrder.firstName` : will order by `first_name`
/// - `PcoCheckInsPersonOrder.lastCheckedInAt` : will order by `last_checked_in_at`
/// - `PcoCheckInsPersonOrder.lastName` : will order by `last_name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsPersonOrder, String> _orderMap = {
    PcoCheckInsPersonOrder.checkInCount: 'check_in_count',
    PcoCheckInsPersonOrder.firstName: 'first_name',
    PcoCheckInsPersonOrder.lastCheckedInAt: 'last_checked_in_at',
    PcoCheckInsPersonOrder.lastName: 'last_name',
  };
  static String orderString(PcoCheckInsPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsPersonFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsPersonFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsPersonQuery({
    /// include associated organization
    /// when true, adds `?include=organization` to url
    bool includeOrganization = false,

    /// Query by `headcounter`
    /// query on a specific headcounter, url example: ?where[headcounter]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereHeadcounter,

    /// Query by `permission`
    /// query on a specific permission, url example: ?where[permission]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePermission,

    /// Query by `search_name`
    /// Search by person name (first, last, combination), url example: ?where[search_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSearchName,
    PcoCheckInsPersonOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeOrganization) include.add('organization');

    if (whereHeadcounter != null)
      where.add(PlanningCenterApiWhere.parse('headcounter', whereHeadcounter));
    if (wherePermission != null)
      where.add(PlanningCenterApiWhere.parse('permission', wherePermission));
    if (whereSearchName != null)
      where.add(PlanningCenterApiWhere.parse('search_name', whereSearchName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

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
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsPerson.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
/// - `isPassedBackgroundCheck` (ro) -> PCO: `passed_background_check`
/// - `demographicAvatarUrl` (ro) -> PCO: `demographic_avatar_url`
/// - `name` (ro) -> PCO: `name`
/// - `topPermission` (ro) -> PCO: `top_permission`
/// - `searchName` (ro) -> PCO: `search_name`
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
///     "passed_background_check": true,
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
  static const kPassedBackgroundCheck = 'passed_background_check';
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
  List get addresses => _attributes[kAddresses] ?? [];
  List get emailAddresses => _attributes[kEmailAddresses] ?? [];
  List get phoneNumbers => _attributes[kPhoneNumbers] ?? [];
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';
  String get namePrefix => _attributes[kNamePrefix] ?? '';
  String get firstName => _attributes[kFirstName] ?? '';
  String get middleName => _attributes[kMiddleName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  String get nameSuffix => _attributes[kNameSuffix] ?? '';
  String get birthdate => _attributes[kBirthdate] ?? '';
  int get grade => _attributes[kGrade] ?? 0;
  String get gender => _attributes[kGender] ?? '';
  String get medicalNotes => _attributes[kMedicalNotes] ?? '';
  bool get isChild => _attributes[kChild] == true;
  String get permission => _attributes[kPermission] ?? '';
  bool get isHeadcounter => _attributes[kHeadcounter] == true;
  DateTime get lastCheckedInAt =>
      DateTime.parse(_attributes[kLastCheckedInAt] ?? '');
  int get checkInCount => _attributes[kCheckInCount] ?? 0;
  bool get isPassedBackgroundCheck =>
      _attributes[kPassedBackgroundCheck] == true;
  String get demographicAvatarUrl => _attributes[kDemographicAvatarUrl] ?? '';
  String get name => _attributes[kName] ?? '';
  String get topPermission => _attributes[kTopPermission] ?? '';
  String get searchName => _attributes[kSearchName] ?? '';

  // typed getters for each relationship

  PcoCheckInsOrganization? get includedOrganization =>
      _firstOrNull<PcoCheckInsOrganization>(relationships['organization']);

  // Class Constructors
  PcoCheckInsPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsPerson] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsPerson(
      {String? id,
      List? addresses,
      List? emailAddresses,
      List? phoneNumbers,
      String? avatarUrl,
      String? namePrefix,
      String? firstName,
      String? middleName,
      String? lastName,
      String? nameSuffix,
      String? birthdate,
      int? grade,
      String? gender,
      String? medicalNotes,
      bool? isChild,
      String? permission,
      bool? isHeadcounter,
      DateTime? lastCheckedInAt,
      int? checkInCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? isPassedBackgroundCheck,
      String? demographicAvatarUrl,
      String? name,
      String? topPermission,
      String? searchName,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsPerson.empty();
    obj._id = id;
    if (addresses != null) obj._attributes['addresses'] = addresses;
    if (emailAddresses != null)
      obj._attributes['email_addresses'] = emailAddresses;
    if (phoneNumbers != null) obj._attributes['phone_numbers'] = phoneNumbers;
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
    if (namePrefix != null) obj._attributes['name_prefix'] = namePrefix;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (middleName != null) obj._attributes['middle_name'] = middleName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (nameSuffix != null) obj._attributes['name_suffix'] = nameSuffix;
    if (birthdate != null) obj._attributes['birthdate'] = birthdate;
    if (grade != null) obj._attributes['grade'] = grade;
    if (gender != null) obj._attributes['gender'] = gender;
    if (medicalNotes != null) obj._attributes['medical_notes'] = medicalNotes;
    if (isChild != null) obj._attributes['child'] = isChild;
    if (permission != null) obj._attributes['permission'] = permission;
    if (isHeadcounter != null) obj._attributes['headcounter'] = isHeadcounter;
    if (lastCheckedInAt != null)
      obj._attributes['last_checked_in_at'] = lastCheckedInAt.toIso8601String();
    if (checkInCount != null) obj._attributes['check_in_count'] = checkInCount;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isPassedBackgroundCheck != null)
      obj._attributes['passed_background_check'] = isPassedBackgroundCheck;
    if (demographicAvatarUrl != null)
      obj._attributes['demographic_avatar_url'] = demographicAvatarUrl;
    if (name != null) obj._attributes['name'] = name;
    if (topPermission != null)
      obj._attributes['top_permission'] = topPermission;
    if (searchName != null) obj._attributes['search_name'] = searchName;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> get({
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '/check-ins/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_by`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> getCheckedInByFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_out_by`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> getCheckedOutByFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_out_by';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> getFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '/check-ins/v2/check_ins/$checkInId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes/$passId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> getFromPass(
    String passId, {
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '/check-ins/v2/passes/$passId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/person`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPerson>> getFromEventAndPersonEvent(
    String eventId,
    String personEventId, {
    String? id,
    PcoCheckInsPersonQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PcoCheckInsPersonQuery();

    if (includeOrganization) query.include.add('organization');
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/person';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_checked_out`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsOrganization] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/organization`
  Future<PcoCollection<PcoCheckInsOrganization>> getOrganization(
      {PcoCheckInsOrganizationQuery? query}) async {
    query ??= PcoCheckInsOrganizationQuery();
    var url = '$apiEndpoint/organization';
    return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/passes`
  Future<PcoCollection<PcoCheckInsPass>> getPasses(
      {PcoCheckInsPassQuery? query}) async {
    query ??= PcoCheckInsPassQuery();
    var url = '$apiEndpoint/passes';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people/1/person_events`
  Future<PcoCollection<PcoCheckInsPersonEvent>> getPersonEvents(
      {PcoCheckInsPersonEventQuery? query}) async {
    query ??= PcoCheckInsPersonEventQuery();
    var url = '$apiEndpoint/person_events';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
