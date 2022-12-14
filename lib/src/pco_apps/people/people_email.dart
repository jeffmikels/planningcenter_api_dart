/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.993640
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `address` -> `?order=address`
/// - `createdAt` -> `?order=created_at`
/// - `location` -> `?order=location`
/// - `primary` -> `?order=primary`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleEmailOrder { address, createdAt, location, primary, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleEmailFilter { none }

/// Creates a [PcoPeopleEmailQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleEmail] objects can be requested with one or more of the following criteria:
/// - `whereAddress`: query on a specific address, example: ?where[address]=string
/// - `whereBlocked`: query on a specific blocked, example: ?where[blocked]=true
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereLocation`: query on a specific location, example: ?where[location]=string
/// - `wherePrimary`: query on a specific primary, example: ?where[primary]=true
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `PcoPeopleEmailOrder.address` : will order by `address`
/// - `PcoPeopleEmailOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleEmailOrder.location` : will order by `location`
/// - `PcoPeopleEmailOrder.primary` : will order by `primary`
/// - `PcoPeopleEmailOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleEmailQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleEmailOrder, String> _orderMap = {
    PcoPeopleEmailOrder.address: 'address',
    PcoPeopleEmailOrder.createdAt: 'created_at',
    PcoPeopleEmailOrder.location: 'location',
    PcoPeopleEmailOrder.primary: 'primary',
    PcoPeopleEmailOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleEmailOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleEmailFilter, String> _filterMap = {};
  static String filterString(PcoPeopleEmailFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleEmailQuery({
    /// Query by `address`
    /// query on a specific address, url example: ?where[address]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereAddress,

    /// Query by `blocked`
    /// query on a specific blocked, url example: ?where[blocked]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereBlocked,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `location`
    /// query on a specific location, url example: ?where[location]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLocation,

    /// Query by `primary`
    /// query on a specific primary, url example: ?where[primary]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePrimary,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleEmailOrder? orderBy,

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
    if (whereAddress != null)
      where.add(PlanningCenterApiWhere.parse('address', whereAddress));
    if (whereBlocked != null)
      where.add(PlanningCenterApiWhere.parse('blocked', whereBlocked));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereLocation != null)
      where.add(PlanningCenterApiWhere.parse('location', whereLocation));
    if (wherePrimary != null)
      where.add(PlanningCenterApiWhere.parse('primary', wherePrimary));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Email Object
///
/// - Application:        people
/// - Id:                 email
/// - Type:               Email
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/emails
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/emails
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleEmail()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleEmail.fromJson()` constructor.
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
/// An email represents an email address and location.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `address` (rw) -> PCO: `address`
/// - `location` (rw) -> PCO: `location`
/// - `isPrimary` (rw) -> PCO: `primary`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isBlocked` (ro) -> PCO: `blocked`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-email-person`: https://api.planningcenteronline.com/people/v2/emails/1/person
///
/// Inbound Edges:
/// - `email-organization-emails`: https://api.planningcenteronline.com/people/v2/emails
/// - `email-person-emails`: https://api.planningcenteronline.com/people/v2/people/1/emails
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeopleEmail extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Email';
  static const String kTypeId = 'email';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/emails';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/emails';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `address`: (URLParameter), query on a specific address, example: ?where[address]=string
  /// - `blocked`: (URLParameter), query on a specific blocked, example: ?where[blocked]=true
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['address', 'blocked', 'created_at', 'location', 'primary', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `address`: (URLParameter), prefix with a hyphen (-address) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['address', 'created_at', 'location', 'primary', 'updated_at'];

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
  static const kAddress = 'address';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kBlocked = 'blocked';

  // getters and setters
  @override
  List<String> get createAllowed => ['address', 'location', 'primary'];

  @override
  List<String> get updateAllowed => ['address', 'location', 'primary'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get address => _attributes[kAddress] ?? '';
  String get location => _attributes[kLocation] ?? '';
  bool get isPrimary => _attributes[kPrimary] == true;
  bool get isBlocked => _attributes[kBlocked] == true;

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set address(String? x) =>
      (x == null) ? _attributes.remove(kAddress) : _attributes[kAddress] = x;

  ///
  /// pass `null` to remove key from attributes
  set location(String? x) =>
      (x == null) ? _attributes.remove(kLocation) : _attributes[kLocation] = x;

  ///
  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) =>
      (x == null) ? _attributes.remove(kPrimary) : _attributes[kPrimary] = x;

  // Class Constructors
  PcoPeopleEmail.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleEmail.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleEmail] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/emails`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `address`, `location`, `isPrimary`
  /// - FIELDS USED WHEN UPDATING: `address`, `location`, `isPrimary`
  factory PcoPeopleEmail(
      {required String personId,
      String? id,
      String? address,
      String? location,
      bool? isPrimary,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? isBlocked,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleEmail.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/emails';
    if (address != null) obj._attributes['address'] = address;
    if (location != null) obj._attributes['location'] = location;
    if (isPrimary != null) obj._attributes['primary'] = isPrimary;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isBlocked != null) obj._attributes['blocked'] = isBlocked;

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

  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/emails`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleEmail>> get({
    String? id,
    PcoPeopleEmailQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleEmailQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleEmail] object
  /// using a path like this: `/people/v2/emails/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleEmail?> getSingle(
    String id, {
    PcoPeopleEmailQuery? query,
  }) async {
    query ??= PcoPeopleEmailQuery();

    var url = '/people/v2/emails/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/emails`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleEmail>> getAll({
    String? id,
    PcoPeopleEmailQuery? query,
  }) async {
    query ??= PcoPeopleEmailQuery();
    query.getAll = true;

    var url = '/people/v2/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/emails`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleEmail>> getFromPerson(
    String personId, {
    String? id,
    PcoPeopleEmailQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoPeopleEmailQuery();
    if (getAll) query.getAll = true;

    var url = '/people/v2/people/$personId/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleEmail] object
  /// using a path like this: `/people/v2/people/$personId/emails/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleEmail?> getSingleFromPerson(
    String personId,
    String id, {
    PcoPeopleEmailQuery? query,
  }) async {
    query ??= PcoPeopleEmailQuery();

    var url = '/people/v2/people/$personId/emails/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleEmail] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/emails`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleEmail>> getAllFromPerson(
    String personId, {
    String? id,
    PcoPeopleEmailQuery? query,
  }) async {
    query ??= PcoPeopleEmailQuery();
    query.getAll = true;

    var url = '/people/v2/people/$personId/emails';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleEmail>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/emails/1/person`
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
