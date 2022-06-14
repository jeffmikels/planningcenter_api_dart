/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.464288
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People Household Object
///
/// - Application:        people
/// - Id:                 household
/// - Type:               Household
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/households
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/households
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleHousehold()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleHousehold.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
/// A household links people together and can have a primary contact. To add a person to an existing household, use the HouseholdMemberships endpoint.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `memberCount` (rw) -> PCO: `member_count`
/// - `primaryContactName` (ro) -> PCO: `primary_contact_name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatar` (rw) -> PCO: `avatar`
/// - `primaryContactId` (rw) -> PCO: `primary_contact_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `people`: include associated people
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `householdmembership-household-household_memberships`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// - `person-household-people`: https://api.planningcenteronline.com/people/v2/households/1/people
///
/// Inbound Edges:
/// - `household-householdmembership-household`: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
/// - `household-organization-households`: https://api.planningcenteronline.com/people/v2/households
/// - `household-peopleimporthistory-household`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household
/// - `household-person-households`: https://api.planningcenteronline.com/people/v2/people/1/households
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeopleHousehold extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Household';
  static const String kTypeId = 'household';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/households';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/households';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people
  static List<String> get canInclude => ['people'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `member_count`: (URLParameter), query on a specific member_count, example: ?where[member_count]=1
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `primary_contact_name`: (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'created_at',
        'member_count',
        'name',
        'primary_contact_name',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `member_count`: (URLParameter), prefix with a hyphen (-member_count) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `primary_contact_name`: (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'created_at',
        'member_count',
        'name',
        'primary_contact_name',
        'updated_at'
      ];

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
  static const kName = 'name';
  static const kMemberCount = 'member_count';
  static const kPrimaryContactName = 'primary_contact_name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatar = 'avatar';
  static const kPrimaryContactId = 'primary_contact_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['name', 'member_count', 'avatar', 'primary_contact_id'];

  @override
  List<String> get updateAllowed =>
      ['name', 'member_count', 'avatar', 'primary_contact_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get memberCount => _attributes[kMemberCount] ?? 0;
  String get primaryContactName => _attributes[kPrimaryContactName] ?? '';
  String get avatar => _attributes[kAvatar] ?? '';
  String get primaryContactId => _attributes[kPrimaryContactId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set memberCount(int? x) => (x == null)
      ? _attributes.remove(kMemberCount)
      : _attributes[kMemberCount] = x;

  /// pass `null` to remove key from attributes
  set avatar(String? x) =>
      (x == null) ? _attributes.remove(kAvatar) : _attributes[kAvatar] = x;

  /// pass `null` to remove key from attributes
  set primaryContactId(String? x) => (x == null)
      ? _attributes.remove(kPrimaryContactId)
      : _attributes[kPrimaryContactId] = x;

  // typed getters for each relationship

  List<PcoPeoplePerson> get includedPeople =>
      (relationships['people'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeopleHousehold.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleHousehold.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleHousehold] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/households`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleHousehold(
      {String? name,
      int? memberCount,
      String? avatar,
      String? primaryContactId}) {
    var obj = PcoPeopleHousehold.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/households';
    if (name != null) obj.name = name;
    if (memberCount != null) obj.memberCount = memberCount;
    if (avatar != null) obj.avatar = avatar;
    if (primaryContactId != null) obj.primaryContactId = primaryContactId;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/households`
  static Future<PcoCollection<PcoPeopleHousehold>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url = '/people/v2/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/households/$householdId/household_memberships/$householdMembershipId/household`
  static Future<PcoCollection<PcoPeopleHousehold>>
      getFromHouseholdAndHouseholdMembership(
    String householdId,
    String householdMembershipId, {
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url =
        '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household';

    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting one)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/histories/$historyId/household`
  static Future<PcoCollection<PcoPeopleHousehold>>
      getFromPeopleImportAndHistory(
    String peopleImportId,
    String historyId, {
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url =
        '/people/v2/people_imports/$peopleImportId/histories/$historyId/household';

    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleHousehold] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/households`
  static Future<PcoCollection<PcoPeopleHousehold>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includePeople = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePeople) query.include.add('people');
    var url = '/people/v2/people/$personId/households';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleHousehold>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleHouseholdMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/household_memberships`
  Future<PcoCollection<PcoPeopleHouseholdMembership>> getHouseholdMemberships({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeHousehold = false,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleHousehold.canInclude);
    if (includeHousehold) query.include.add('household');
    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/household_memberships';
    return PcoCollection.fromApiCall<PcoPeopleHouseholdMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/households/1/people`
  ///
  /// Available Query Filters:
  /// - `non_pending`
  /// - `without_deceased`
  Future<PcoCollection<PcoPeoplePerson>> getPeople({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAddresses = false,
    bool includeEmails = false,
    bool includeFieldData = false,
    bool includeHouseholds = false,
    bool includeInactiveReason = false,
    bool includeMaritalStatus = false,
    bool includeNamePrefix = false,
    bool includeNameSuffix = false,
    bool includeOrganization = false,
    bool includePersonApps = false,
    bool includePhoneNumbers = false,
    bool includePlatformNotifications = false,
    bool includePrimaryCampus = false,
    bool includeSchool = false,
    bool includeSocialProfiles = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleHousehold.canInclude);
    if (includeAddresses) query.include.add('addresses');
    if (includeEmails) query.include.add('emails');
    if (includeFieldData) query.include.add('field_data');
    if (includeHouseholds) query.include.add('households');
    if (includeInactiveReason) query.include.add('inactive_reason');
    if (includeMaritalStatus) query.include.add('marital_status');
    if (includeNamePrefix) query.include.add('name_prefix');
    if (includeNameSuffix) query.include.add('name_suffix');
    if (includeOrganization) query.include.add('organization');
    if (includePersonApps) query.include.add('person_apps');
    if (includePhoneNumbers) query.include.add('phone_numbers');
    if (includePlatformNotifications)
      query.include.add('platform_notifications');
    if (includePrimaryCampus) query.include.add('primary_campus');
    if (includeSchool) query.include.add('school');
    if (includeSocialProfiles) query.include.add('social_profiles');
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
