/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.500598
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People PhoneNumber Object
///
/// - Application:        people
/// - Id:                 phone_number
/// - Type:               PhoneNumber
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/phone_numbers
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
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `carrier`: (URLParameter), query on a specific carrier, example: ?where[carrier]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `number`: (URLParameter), query on a specific number, example: ?where[number]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `carrier`: (URLParameter), prefix with a hyphen (-carrier) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `number`: (URLParameter), prefix with a hyphen (-number) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
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
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/phone_numbers';
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

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set number(String? x) =>
      (x == null) ? _attributes.remove(kNumber) : _attributes[kNumber] = x;

  /// pass `null` to remove key from attributes
  set carrier(String? x) =>
      (x == null) ? _attributes.remove(kCarrier) : _attributes[kCarrier] = x;

  /// pass `null` to remove key from attributes
  set location(String? x) =>
      (x == null) ? _attributes.remove(kLocation) : _attributes[kLocation] = x;

  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) =>
      (x == null) ? _attributes.remove(kPrimary) : _attributes[kPrimary] = x;

  // Class Constructors
  PcoPeoplePhoneNumber.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeoplePhoneNumber.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePhoneNumber] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$personId/phone_numbers`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeoplePhoneNumber(String personId,
      {String? number, String? carrier, String? location, bool? isPrimary}) {
    var obj = PcoPeoplePhoneNumber.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/phone_numbers';
    if (number != null) obj.number = number;
    if (carrier != null) obj.carrier = carrier;
    if (location != null) obj.location = location;
    if (isPrimary != null) obj.isPrimary = isPrimary;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeoplePhoneNumber] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/phone_numbers`
  static Future<PcoCollection<PcoPeoplePhoneNumber>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
