/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.124962
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `site` -> `?order=site`
/// - `updatedAt` -> `?order=updated_at`
/// - `url` -> `?order=url`
/// - `verified` -> `?order=verified`
enum PcoPeopleSocialProfileOrder { createdAt, site, updatedAt, url, verified }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleSocialProfileFilter { none }

/// Creates a [PcoPeopleSocialProfileQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleSocialProfileQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleSocialProfile] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereSite`: query on a specific site, example: ?where[site]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `whereUrl`: query on a specific url, example: ?where[url]=string
/// - `whereVerified`: query on a specific verified, example: ?where[verified]=true
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
/// - `PcoPeopleSocialProfileOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleSocialProfileOrder.site` : will order by `site`
/// - `PcoPeopleSocialProfileOrder.updatedAt` : will order by `updated_at`
/// - `PcoPeopleSocialProfileOrder.url` : will order by `url`
/// - `PcoPeopleSocialProfileOrder.verified` : will order by `verified`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleSocialProfileQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleSocialProfileOrder, String> _orderMap = {
    PcoPeopleSocialProfileOrder.createdAt: 'created_at',
    PcoPeopleSocialProfileOrder.site: 'site',
    PcoPeopleSocialProfileOrder.updatedAt: 'updated_at',
    PcoPeopleSocialProfileOrder.url: 'url',
    PcoPeopleSocialProfileOrder.verified: 'verified',
  };
  static String orderString(PcoPeopleSocialProfileOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleSocialProfileFilter, String> _filterMap = {};
  static String filterString(PcoPeopleSocialProfileFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleSocialProfileQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `site`
    /// query on a specific site, url example: ?where[site]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSite,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

    /// Query by `url`
    /// query on a specific url, url example: ?where[url]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUrl,

    /// Query by `verified`
    /// query on a specific verified, url example: ?where[verified]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereVerified,
    PcoPeopleSocialProfileOrder? orderBy,

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
    if (includePerson) include.add('person');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereSite != null)
      where.add(PlanningCenterApiWhere.parse('site', whereSite));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
    if (whereUrl != null)
      where.add(PlanningCenterApiWhere.parse('url', whereUrl));
    if (whereVerified != null)
      where.add(PlanningCenterApiWhere.parse('verified', whereVerified));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People SocialProfile Object
///
/// - Application:        people
/// - Id:                 social_profile
/// - Type:               SocialProfile
/// - ApiVersion:         2022-07-14
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
  static const String kApiVersion = '2022-07-14';
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
  String get site => _getAttribute<String>(kSite, '');
  String get url => _getAttribute<String>(kUrl, '');
  bool get isVerified => _getAttribute<bool>(kVerified, false);

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set site(String? x) =>
      (x == null) ? _attributes.remove(kSite) : _attributes[kSite] = x;

  ///
  /// pass `null` to remove key from attributes
  set url(String? x) =>
      (x == null) ? _attributes.remove(kUrl) : _attributes[kUrl] = x;

  ///
  /// pass `null` to remove key from attributes
  set isVerified(bool? x) =>
      (x == null) ? _attributes.remove(kVerified) : _attributes[kVerified] = x;

  // typed getters for each relationship

  PcoPeoplePerson? get includedPerson =>
      _firstOrNull<PcoPeoplePerson>(relationships['person']);

  // Class Constructors
  PcoPeopleSocialProfile.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleSocialProfile.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleSocialProfile] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/social_profiles`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `site`, `url`, `isVerified`
  /// - FIELDS USED WHEN UPDATING: `site`, `url`, `isVerified`
  factory PcoPeopleSocialProfile(
      {required String personId,
      String? id,
      String? site,
      String? url,
      bool? isVerified,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleSocialProfile.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/social_profiles';
    if (site != null) obj._attributes['site'] = site;
    if (url != null) obj._attributes['url'] = url;
    if (isVerified != null) obj._attributes['verified'] = isVerified;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/social_profiles`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleSocialProfile>> get({
    String? id,
    PcoPeopleSocialProfileQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleSocialProfile] object
  /// using a path like this: `/people/v2/social_profiles/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleSocialProfile?> getSingle(
    String id, {
    PcoPeopleSocialProfileQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/social_profiles/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/social_profiles`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleSocialProfile>> getAll({
    String? id,
    PcoPeopleSocialProfileQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();
    query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/social_profiles`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleSocialProfile>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleSocialProfileQuery? query,
    bool getAll = false,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();
    if (getAll) query.getAll = true;

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/social_profiles';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleSocialProfile] object
  /// using a path like this: `/people/v2/people/$personId/social_profiles/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleSocialProfile?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleSocialProfileQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();

    if (includePerson) query.include.add('person');
    var url = '/people/v2/people/$personId/social_profiles/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleSocialProfile>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleSocialProfile] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/social_profiles`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleSocialProfile>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleSocialProfileQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoPeopleSocialProfileQuery();
    query.getAll = true;

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
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/person';
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
