/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.424683
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `carrier` -> `?order=carrier`
/// - `createdAt` -> `?order=created_at`
/// - `location` -> `?order=location`
/// - `number` -> `?order=number`
/// - `primary` -> `?order=primary`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeoplePhoneNumberOrder {
  carrier,
  createdAt,
  location,
  number,
  primary,
  updatedAt
}

/// Filtering is not allowed when requesting this object.
enum PcoPeoplePhoneNumberFilter { none }

/// Creates a [PcoPeoplePhoneNumberQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeoplePhoneNumber] objects can be requested with one or more of the following criteria:
/// - `whereCarrier`: query on a specific carrier, example: ?where[carrier]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereLocation`: query on a specific location, example: ?where[location]=string
/// - `whereNumber`: query on a specific number, example: ?where[number]=string
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
/// - `PcoPeoplePhoneNumberOrder.carrier` : will order by `carrier`
/// - `PcoPeoplePhoneNumberOrder.createdAt` : will order by `created_at`
/// - `PcoPeoplePhoneNumberOrder.location` : will order by `location`
/// - `PcoPeoplePhoneNumberOrder.number` : will order by `number`
/// - `PcoPeoplePhoneNumberOrder.primary` : will order by `primary`
/// - `PcoPeoplePhoneNumberOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePhoneNumberQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePhoneNumberOrder, String> _orderMap = {
    PcoPeoplePhoneNumberOrder.carrier: 'carrier',
    PcoPeoplePhoneNumberOrder.createdAt: 'created_at',
    PcoPeoplePhoneNumberOrder.location: 'location',
    PcoPeoplePhoneNumberOrder.number: 'number',
    PcoPeoplePhoneNumberOrder.primary: 'primary',
    PcoPeoplePhoneNumberOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeoplePhoneNumberOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePhoneNumberFilter, String> _filterMap = {};
  static String filterString(PcoPeoplePhoneNumberFilter filter) =>
      _filterMap[filter]!;

  PcoPeoplePhoneNumberQuery({
    /// Query by `carrier`
    /// query on a specific carrier, url example: ?where[carrier]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCarrier,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `location`
    /// query on a specific location, url example: ?where[location]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLocation,

    /// Query by `number`
    /// query on a specific number, url example: ?where[number]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereNumber,

    /// Query by `primary`
    /// query on a specific primary, url example: ?where[primary]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePrimary,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeoplePhoneNumberOrder? orderBy,

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
    if (whereCarrier != null)
      where.add(PlanningCenterApiWhere.parse('carrier', whereCarrier));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereLocation != null)
      where.add(PlanningCenterApiWhere.parse('location', whereLocation));
    if (whereNumber != null)
      where.add(PlanningCenterApiWhere.parse('number', whereNumber));
    if (wherePrimary != null)
      where.add(PlanningCenterApiWhere.parse('primary', wherePrimary));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People PhoneNumber Object
///
/// - Application:        people
/// - Id:                 phone_number
/// - Type:               PhoneNumber
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/phone_numbers
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeoplePhoneNumber()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeoplePhoneNumber.fromJson()` constructor.
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
/// A phone number represents a single telephone number and location.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `number` (rw) -> PCO: `number`
/// - `carrier` (rw) -> PCO: `carrier`
/// - `location` (rw) -> PCO: `location`
/// - `isPrimary` (rw) -> PCO: `primary`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `e164` (ro) -> PCO: `e164`
/// - `international` (ro) -> PCO: `international`
/// - `national` (ro) -> PCO: `national`
/// - `countryCode` (ro) -> PCO: `country_code`
/// - `formattedNumber` (ro) -> PCO: `formatted_number`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `phonenumber-organization-phone_numbers`: https://api.planningcenteronline.com/people/v2/phone_numbers
/// - `phonenumber-person-phone_numbers`: https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeoplePhoneNumber extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PhoneNumber';
  static const String kTypeId = 'phone_number';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/phone_numbers';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['carrier', 'created_at', 'location', 'number', 'primary', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['carrier', 'created_at', 'location', 'number', 'primary', 'updated_at'];

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
  static const kNumber = 'number';
  static const kCarrier = 'carrier';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kE164 = 'e164';
  static const kInternational = 'international';
  static const kNational = 'national';
  static const kCountryCode = 'country_code';
  static const kFormattedNumber = 'formatted_number';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['number', 'carrier', 'location', 'primary'];

  @override
  List<String> get updateAllowed =>
      ['number', 'carrier', 'location', 'primary'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get number => _attributes[kNumber] ?? '';
  String get carrier => _attributes[kCarrier] ?? '';
  String get location => _attributes[kLocation] ?? '';
  bool get isPrimary => _attributes[kPrimary] == true;
  String get e164 => _attributes[kE164] ?? '';
  String get international => _attributes[kInternational] ?? '';
  String get national => _attributes[kNational] ?? '';
  String get countryCode => _attributes[kCountryCode] ?? '';
  String get formattedNumber => _attributes[kFormattedNumber] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set number(String? x) =>
      (x == null) ? _attributes.remove(kNumber) : _attributes[kNumber] = x;

  ///
  /// pass `null` to remove key from attributes
  set carrier(String? x) =>
      (x == null) ? _attributes.remove(kCarrier) : _attributes[kCarrier] = x;

  ///
  /// pass `null` to remove key from attributes
  set location(String? x) =>
      (x == null) ? _attributes.remove(kLocation) : _attributes[kLocation] = x;

  ///
  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) =>
      (x == null) ? _attributes.remove(kPrimary) : _attributes[kPrimary] = x;

  // Class Constructors
  PcoPeoplePhoneNumber.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeoplePhoneNumber.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePhoneNumber] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/phone_numbers`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `number`, `carrier`, `location`, `isPrimary`
  /// - FIELDS USED WHEN UPDATING: `number`, `carrier`, `location`, `isPrimary`
  factory PcoPeoplePhoneNumber(
      {required String personId,
      String? id,
      String? number,
      String? carrier,
      String? location,
      bool? isPrimary,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? e164,
      String? international,
      String? national,
      String? countryCode,
      String? formattedNumber,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeoplePhoneNumber.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/phone_numbers';
    if (number != null) obj._attributes['number'] = number;
    if (carrier != null) obj._attributes['carrier'] = carrier;
    if (location != null) obj._attributes['location'] = location;
    if (isPrimary != null) obj._attributes['primary'] = isPrimary;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (e164 != null) obj._attributes['e164'] = e164;
    if (international != null) obj._attributes['international'] = international;
    if (national != null) obj._attributes['national'] = national;
    if (countryCode != null) obj._attributes['country_code'] = countryCode;
    if (formattedNumber != null)
      obj._attributes['formatted_number'] = formattedNumber;

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

  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `/people/v2/phone_numbers`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePhoneNumber>> get({
    String? id,
    PcoPeoplePhoneNumberQuery? query,
  }) async {
    query ??= PcoPeoplePhoneNumberQuery();

    var url = '/people/v2/phone_numbers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/phone_numbers`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePhoneNumber>> getFromPerson(
    String personId, {
    String? id,
    PcoPeoplePhoneNumberQuery? query,
  }) async {
    query ??= PcoPeoplePhoneNumberQuery();

    var url = '/people/v2/people/$personId/phone_numbers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePhoneNumber>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
