/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.651086
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleCampusOrder { createdAt, name, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleCampusFilter { none }

/// Creates a [PcoPeopleCampusQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeLists`: include associated lists
/// - `includeServiceTimes`: include associated service_times
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleCampusQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleCampus] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
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
/// - `PcoPeopleCampusOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleCampusOrder.name` : will order by `name`
/// - `PcoPeopleCampusOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleCampusQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleCampusOrder, String> _orderMap = {
    PcoPeopleCampusOrder.createdAt: 'created_at',
    PcoPeopleCampusOrder.name: 'name',
    PcoPeopleCampusOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleCampusOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleCampusFilter, String> _filterMap = {};
  static String filterString(PcoPeopleCampusFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleCampusQuery({
    /// include associated lists
    /// when true, adds `?include=lists` to url
    bool includeLists = false,

    /// include associated service_times
    /// when true, adds `?include=service_times` to url
    bool includeServiceTimes = false,

    /// when true, adds `?include=lists,service_times` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleCampusOrder? orderBy,

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
    if (includeAll || includeLists) include.add('lists');
    if (includeAll || includeServiceTimes) include.add('service_times');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Campus Object
///
/// - Application:        people
/// - Id:                 campus
/// - Type:               Campus
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/campuses
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleCampus()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleCampus.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// Must be an Organization Administrator
///
///
/// #### UPDATING
/// Must be an Organization Administrator
///
///
/// #### DELETING
/// Must be an Organization Administrator
///
/// ## Description
/// A Campus is a location belonging to an Organization
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `latitude` (rw) -> PCO: `latitude`
/// - `longitude` (rw) -> PCO: `longitude`
/// - `description` (rw) -> PCO: `description`
/// - `street` (rw) -> PCO: `street`
/// - `city` (rw) -> PCO: `city`
/// - `state` (rw) -> PCO: `state`
/// - `zip` (rw) -> PCO: `zip`
/// - `country` (rw) -> PCO: `country`
/// - `phoneNumber` (rw) -> PCO: `phone_number`
/// - `website` (rw) -> PCO: `website`
/// - `isTwentyFourHourTime` (rw) -> PCO: `twenty_four_hour_time`
/// - `dateFormat` (rw) -> PCO: `date_format`
/// - `isChurchCenterEnabled` (rw) -> PCO: `church_center_enabled`
/// - `contactEmailAddress` (rw) -> PCO: `contact_email_address`
/// - `timeZone` (rw) -> PCO: `time_zone`
/// - `isGeolocationSetManually` (rw) -> PCO: `geolocation_set_manually`
/// - `name` (rw) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `list-campus-lists`: https://api.planningcenteronline.com/people/v2/campuses/1/lists
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
///
/// Inbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `campus-list-campus`: https://api.planningcenteronline.com/people/v2/lists/1/campus
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/people/v2/campuses
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/people/v2/people/1/primary_campus
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeopleCampus extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/campuses';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/campuses';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists
  /// - `service_times`: include associated service_times
  static List<String> get canInclude => ['lists', 'service_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'name', 'updated_at'];

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
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kDescription = 'description';
  static const kStreet = 'street';
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kCountry = 'country';
  static const kPhoneNumber = 'phone_number';
  static const kWebsite = 'website';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kDateFormat = 'date_format';
  static const kChurchCenterEnabled = 'church_center_enabled';
  static const kContactEmailAddress = 'contact_email_address';
  static const kTimeZone = 'time_zone';
  static const kGeolocationSetManually = 'geolocation_set_manually';
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAvatarUrl = 'avatar_url';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'latitude',
        'longitude',
        'description',
        'street',
        'city',
        'state',
        'zip',
        'country',
        'phone_number',
        'website',
        'twenty_four_hour_time',
        'date_format',
        'church_center_enabled',
        'contact_email_address',
        'time_zone',
        'geolocation_set_manually',
        'name'
      ];

  @override
  List<String> get updateAllowed => [
        'latitude',
        'longitude',
        'description',
        'street',
        'city',
        'state',
        'zip',
        'country',
        'phone_number',
        'website',
        'twenty_four_hour_time',
        'date_format',
        'church_center_enabled',
        'contact_email_address',
        'time_zone',
        'geolocation_set_manually',
        'name'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  double get latitude => _attributes[kLatitude]?.toDouble() ?? 0.0;
  double get longitude => _attributes[kLongitude]?.toDouble() ?? 0.0;
  String get description => _attributes[kDescription] ?? '';
  String get street => _attributes[kStreet] ?? '';
  String get city => _attributes[kCity] ?? '';
  String get state => _attributes[kState] ?? '';
  String get zip => _attributes[kZip] ?? '';
  String get country => _attributes[kCountry] ?? '';
  String get phoneNumber => _attributes[kPhoneNumber] ?? '';
  String get website => _attributes[kWebsite] ?? '';
  bool get isTwentyFourHourTime => _attributes[kTwentyFourHourTime] == true;
  int get dateFormat => _attributes[kDateFormat] ?? 0;
  bool get isChurchCenterEnabled => _attributes[kChurchCenterEnabled] == true;
  String get contactEmailAddress => _attributes[kContactEmailAddress] ?? '';
  String get timeZone => _attributes[kTimeZone] ?? '';
  bool get isGeolocationSetManually =>
      _attributes[kGeolocationSetManually] == true;
  String get name => _attributes[kName] ?? '';
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set latitude(double? x) =>
      (x == null) ? _attributes.remove(kLatitude) : _attributes[kLatitude] = x;

  ///
  /// pass `null` to remove key from attributes
  set longitude(double? x) => (x == null)
      ? _attributes.remove(kLongitude)
      : _attributes[kLongitude] = x;

  ///
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  ///
  /// pass `null` to remove key from attributes
  set street(String? x) =>
      (x == null) ? _attributes.remove(kStreet) : _attributes[kStreet] = x;

  ///
  /// pass `null` to remove key from attributes
  set city(String? x) =>
      (x == null) ? _attributes.remove(kCity) : _attributes[kCity] = x;

  ///
  /// pass `null` to remove key from attributes
  set state(String? x) =>
      (x == null) ? _attributes.remove(kState) : _attributes[kState] = x;

  ///
  /// pass `null` to remove key from attributes
  set zip(String? x) =>
      (x == null) ? _attributes.remove(kZip) : _attributes[kZip] = x;

  ///
  /// pass `null` to remove key from attributes
  set country(String? x) =>
      (x == null) ? _attributes.remove(kCountry) : _attributes[kCountry] = x;

  ///
  /// pass `null` to remove key from attributes
  set phoneNumber(String? x) => (x == null)
      ? _attributes.remove(kPhoneNumber)
      : _attributes[kPhoneNumber] = x;

  ///
  /// pass `null` to remove key from attributes
  set website(String? x) =>
      (x == null) ? _attributes.remove(kWebsite) : _attributes[kWebsite] = x;

  ///
  /// pass `null` to remove key from attributes
  set isTwentyFourHourTime(bool? x) => (x == null)
      ? _attributes.remove(kTwentyFourHourTime)
      : _attributes[kTwentyFourHourTime] = x;

  ///
  /// pass `null` to remove key from attributes
  set dateFormat(int? x) => (x == null)
      ? _attributes.remove(kDateFormat)
      : _attributes[kDateFormat] = x;

  ///
  /// pass `null` to remove key from attributes
  set isChurchCenterEnabled(bool? x) => (x == null)
      ? _attributes.remove(kChurchCenterEnabled)
      : _attributes[kChurchCenterEnabled] = x;

  ///
  /// pass `null` to remove key from attributes
  set contactEmailAddress(String? x) => (x == null)
      ? _attributes.remove(kContactEmailAddress)
      : _attributes[kContactEmailAddress] = x;

  ///
  /// pass `null` to remove key from attributes
  set timeZone(String? x) =>
      (x == null) ? _attributes.remove(kTimeZone) : _attributes[kTimeZone] = x;

  ///
  /// pass `null` to remove key from attributes
  set isGeolocationSetManually(bool? x) => (x == null)
      ? _attributes.remove(kGeolocationSetManually)
      : _attributes[kGeolocationSetManually] = x;

  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // typed getters for each relationship

  List<PcoPeopleList> get includedLists =>
      (relationships['lists'] as List?)?.cast<PcoPeopleList>() ?? [];
  List<PcoPeopleServiceTime> get includedServiceTimes =>
      (relationships['service_times'] as List?)?.cast<PcoPeopleServiceTime>() ??
      [];

  // Class Constructors
  PcoPeopleCampus.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleCampus.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleCampus] object using this endpoint: `https://api.planningcenteronline.com/people/v2/campuses`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `latitude`, `longitude`, `description`, `street`, `city`, `state`, `zip`, `country`, `phoneNumber`, `website`, `isTwentyFourHourTime`, `dateFormat`, `isChurchCenterEnabled`, `contactEmailAddress`, `timeZone`, `isGeolocationSetManually`, `name`
  /// - FIELDS USED WHEN UPDATING: `latitude`, `longitude`, `description`, `street`, `city`, `state`, `zip`, `country`, `phoneNumber`, `website`, `isTwentyFourHourTime`, `dateFormat`, `isChurchCenterEnabled`, `contactEmailAddress`, `timeZone`, `isGeolocationSetManually`, `name`
  factory PcoPeopleCampus(
      {String? id,
      double? latitude,
      double? longitude,
      String? description,
      String? street,
      String? city,
      String? state,
      String? zip,
      String? country,
      String? phoneNumber,
      String? website,
      bool? isTwentyFourHourTime,
      int? dateFormat,
      bool? isChurchCenterEnabled,
      String? contactEmailAddress,
      String? timeZone,
      bool? isGeolocationSetManually,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? avatarUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleCampus.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/campuses';
    if (latitude != null) obj._attributes['latitude'] = latitude;
    if (longitude != null) obj._attributes['longitude'] = longitude;
    if (description != null) obj._attributes['description'] = description;
    if (street != null) obj._attributes['street'] = street;
    if (city != null) obj._attributes['city'] = city;
    if (state != null) obj._attributes['state'] = state;
    if (zip != null) obj._attributes['zip'] = zip;
    if (country != null) obj._attributes['country'] = country;
    if (phoneNumber != null) obj._attributes['phone_number'] = phoneNumber;
    if (website != null) obj._attributes['website'] = website;
    if (isTwentyFourHourTime != null)
      obj._attributes['twenty_four_hour_time'] = isTwentyFourHourTime;
    if (dateFormat != null) obj._attributes['date_format'] = dateFormat;
    if (isChurchCenterEnabled != null)
      obj._attributes['church_center_enabled'] = isChurchCenterEnabled;
    if (contactEmailAddress != null)
      obj._attributes['contact_email_address'] = contactEmailAddress;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (isGeolocationSetManually != null)
      obj._attributes['geolocation_set_manually'] = isGeolocationSetManually;
    if (name != null) obj._attributes['name'] = name;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;

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

  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `/people/v2/campuses`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleCampus>> get({
    String? id,
    PcoPeopleCampusQuery? query,
    bool includeAll = false,
    bool includeLists = false,
    bool includeServiceTimes = false,
  }) async {
    query ??= PcoPeopleCampusQuery();
    if (includeAll) query.include.addAll(PcoPeopleCampus.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '/people/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/campus`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleCampus>> getFromForm(
    String formId, {
    PcoPeopleCampusQuery? query,
    bool includeAll = false,
    bool includeLists = false,
    bool includeServiceTimes = false,
  }) async {
    query ??= PcoPeopleCampusQuery();
    if (includeAll) query.include.addAll(PcoPeopleCampus.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '/people/v2/forms/$formId/campus';

    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/campus`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleCampus>> getFromList(
    String listId, {
    PcoPeopleCampusQuery? query,
    bool includeAll = false,
    bool includeLists = false,
    bool includeServiceTimes = false,
  }) async {
    query ??= PcoPeopleCampusQuery();
    if (includeAll) query.include.addAll(PcoPeopleCampus.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '/people/v2/lists/$listId/campus';

    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/primary_campus`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleCampus>> getPrimaryCampusFromPerson(
    String personId, {
    PcoPeopleCampusQuery? query,
    bool includeAll = false,
    bool includeLists = false,
    bool includeServiceTimes = false,
  }) async {
    query ??= PcoPeopleCampusQuery();
    if (includeAll) query.include.addAll(PcoPeopleCampus.canInclude);
    if (includeLists) query.include.add('lists');
    if (includeServiceTimes) query.include.add('service_times');
    var url = '/people/v2/people/$personId/primary_campus';

    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/lists`
  Future<PcoCollection<PcoPeopleList>> getLists(
      {PcoPeopleListQuery? query}) async {
    query ??= PcoPeopleListQuery();
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/campuses/1/service_times`
  Future<PcoCollection<PcoPeopleServiceTime>> getServiceTimes(
      {PcoPeopleServiceTimeQuery? query}) async {
    query ??= PcoPeopleServiceTimeQuery();
    var url = '$apiEndpoint/service_times';
    return PcoCollection.fromApiCall<PcoPeopleServiceTime>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
