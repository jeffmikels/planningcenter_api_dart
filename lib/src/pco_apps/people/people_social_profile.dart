/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.032049
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People SocialProfile Object
///
/// - Application:        people
/// - Id:                 social_profile
/// - Type:               SocialProfile
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/social_profiles
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/social_profiles
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleSocialProfile()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleSocialProfile.fromJson()` constructor.
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
/// A social profile represents a members's Twitter, Facebook, or other social media account.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `site` (rw) -> PCO: `site`
/// - `url` (rw) -> PCO: `url`
/// - `isVerified` (rw) -> PCO: `verified`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `person`: include associated person
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
/// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
/// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-socialprofile-person`: https://api.planningcenteronline.com/people/v2/social_profiles/1/person
///
/// Inbound Edges:
/// - `socialprofile-organization-social_profiles`: https://api.planningcenteronline.com/people/v2/social_profiles
/// - `socialprofile-person-social_profiles`: https://api.planningcenteronline.com/people/v2/people/1/social_profiles
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SocialProfile",
///   "id": "1",
///   "attributes": {
///     "site": "string",
///     "url": "string",
///     "verified": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleSocialProfile extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'SocialProfile';
  static const String kTypeId = 'social_profile';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/social_profiles';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/social_profiles';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `site`: (URLParameter), query on a specific site, example: ?where[site]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `url`: (URLParameter), query on a specific url, example: ?where[url]=string
  /// - `verified`: (URLParameter), query on a specific verified, example: ?where[verified]=true
  static List<String> get canQuery =>
      ['created_at', 'site', 'updated_at', 'url', 'verified'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `site`: (URLParameter), prefix with a hyphen (-site) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `url`: (URLParameter), prefix with a hyphen (-url) to reverse the order
  /// - `verified`: (URLParameter), prefix with a hyphen (-verified) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'site', 'updated_at', 'url', 'verified'];

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
  static const kSite = 'site';
  static const kUrl = 'url';
  static const kVerified = 'verified';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => ['site', 'url', 'verified'];

  @override
  List<String> get updateAllowed => ['site', 'url', 'verified'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get site => _attributes[kSite] ?? '';
  String get url => _attributes[kUrl] ?? '';
  bool get isVerified => _attributes[kVerified] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set site(String? x) =>
      (x == null) ? _attributes.remove(kSite) : _attributes[kSite] = x;

  /// pass `null` to remove key from attributes
  set url(String? x) =>
      (x == null) ? _attributes.remove(kUrl) : _attributes[kUrl] = x;

  /// pass `null` to remove key from attributes
  set isVerified(bool? x) =>
      (x == null) ? _attributes.remove(kVerified) : _attributes[kVerified] = x;

  // typed getters for each relationship

  List<PcoPeoplePerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoPeoplePerson>() ?? [];

  // Class Constructors
  PcoPeopleSocialProfile.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleSocialProfile.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleSocialProfile] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$personId/social_profiles`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleSocialProfile(String personId,
      {String? site, String? url, bool? isVerified}) {
    var obj = PcoPeopleSocialProfile.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/social_profiles';
    if (site != null) obj.site = site;
    if (url != null) obj.url = url;
    if (isVerified != null) obj.isVerified = isVerified;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/social_profiles`
  static Future<PcoCollection<PcoPeopleSocialProfile>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/social_profiles`
  static Future<PcoCollection<PcoPeopleSocialProfile>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/social_profiles/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({
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
    if (includeAll) query.include.addAll(PcoPeopleSocialProfile.canInclude);
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
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
