/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.701943
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People Address Object
///
/// - Application:        people
/// - Id:                 address
/// - Type:               Address
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/addresses
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/addresses
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleAddress()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleAddress.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleAddress.manual()` constructor.
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
/// An address represents a physical and/or mailing address for a person.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `city` (rw) -> PCO: `city`
/// - `state` (rw) -> PCO: `state`
/// - `zip` (rw) -> PCO: `zip`
/// - `street` (rw) -> PCO: `street`
/// - `location` (rw) -> PCO: `location`
/// - `isPrimary` (rw) -> PCO: `primary`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
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
/// - `city`: (URLParameter), query on a specific city, example: ?where[city]=string
/// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
/// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
/// - `state`: (URLParameter), query on a specific state, example: ?where[state]=string
/// - `street`: (URLParameter), query on a specific street, example: ?where[street]=string
/// - `zip`: (URLParameter), query on a specific zip, example: ?where[zip]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `city`: (URLParameter), prefix with a hyphen (-city) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
/// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
/// - `state`: (URLParameter), prefix with a hyphen (-state) to reverse the order
/// - `street`: (URLParameter), prefix with a hyphen (-street) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
/// - `zip`: (URLParameter), prefix with a hyphen (-zip) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `address-organization-addresses`: https://api.planningcenteronline.com/people/v2/addresses
/// - `address-person-addresses`: https://api.planningcenteronline.com/people/v2/people/1/addresses
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Address",
///   "id": "1",
///   "attributes": {
///     "city": "string",
///     "state": "string",
///     "zip": "string",
///     "street": "string",
///     "location": "string",
///     "primary": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
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
class PcoPeopleAddress extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Address';
  static const String kTypeId = 'address';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/addresses';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/addresses';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `city`: (URLParameter), query on a specific city, example: ?where[city]=string
  /// - `location`: (URLParameter), query on a specific location, example: ?where[location]=string
  /// - `primary`: (URLParameter), query on a specific primary, example: ?where[primary]=true
  /// - `state`: (URLParameter), query on a specific state, example: ?where[state]=string
  /// - `street`: (URLParameter), query on a specific street, example: ?where[street]=string
  /// - `zip`: (URLParameter), query on a specific zip, example: ?where[zip]=string
  static List<String> get canQuery =>
      ['city', 'location', 'primary', 'state', 'street', 'zip'];

  /// possible orderings with parameter ?order=
  /// - `city`: (URLParameter), prefix with a hyphen (-city) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `location`: (URLParameter), prefix with a hyphen (-location) to reverse the order
  /// - `primary`: (URLParameter), prefix with a hyphen (-primary) to reverse the order
  /// - `state`: (URLParameter), prefix with a hyphen (-state) to reverse the order
  /// - `street`: (URLParameter), prefix with a hyphen (-street) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `zip`: (URLParameter), prefix with a hyphen (-zip) to reverse the order
  static List<String> get canOrderBy => [
        'city',
        'created_at',
        'location',
        'primary',
        'state',
        'street',
        'updated_at',
        'zip'
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
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kStreet = 'street';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['city', 'state', 'zip', 'street', 'location', 'primary'];

  @override
  List<String> get updateAllowed =>
      ['city', 'state', 'zip', 'street', 'location', 'primary'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get city => _attributes[kCity] ?? '';
  String get state => _attributes[kState] ?? '';
  String get zip => _attributes[kZip] ?? '';
  String get street => _attributes[kStreet] ?? '';
  String get location => _attributes[kLocation] ?? '';
  bool get isPrimary => _attributes[kPrimary] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set city(String? x) =>
      (x == null) ? _attributes.remove(kCity) : _attributes[kCity] = x;

  /// pass `null` to remove key from attributes
  set state(String? x) =>
      (x == null) ? _attributes.remove(kState) : _attributes[kState] = x;

  /// pass `null` to remove key from attributes
  set zip(String? x) =>
      (x == null) ? _attributes.remove(kZip) : _attributes[kZip] = x;

  /// pass `null` to remove key from attributes
  set street(String? x) =>
      (x == null) ? _attributes.remove(kStreet) : _attributes[kStreet] = x;

  /// pass `null` to remove key from attributes
  set location(String? x) =>
      (x == null) ? _attributes.remove(kLocation) : _attributes[kLocation] = x;

  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) =>
      (x == null) ? _attributes.remove(kPrimary) : _attributes[kPrimary] = x;

  // Class Constructors
  PcoPeopleAddress.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleAddress.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleAddress] object using this endpoint: `https://api.planningcenteronline.com/people/v2/people/$personId/addresses`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `city`, `state`, `zip`, `street`, `location`, `isPrimary`
  /// - FIELDS USED WHEN UPDATING: `city`, `state`, `zip`, `street`, `location`, `isPrimary`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleAddress(
      {required String personId,
      String? id,
      String? city,
      String? state,
      String? zip,
      String? street,
      String? location,
      bool? isPrimary,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleAddress.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$personId/addresses';
    if (city != null) obj._attributes['city'] = city;
    if (state != null) obj._attributes['state'] = state;
    if (zip != null) obj._attributes['zip'] = zip;
    if (street != null) obj._attributes['street'] = street;
    if (location != null) obj._attributes['location'] = location;
    if (isPrimary != null) obj._attributes['primary'] = isPrimary;
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

  /// Will get a collection of [PcoPeopleAddress] objects (expecting many)
  /// using a path like this: `/people/v2/addresses`
  static Future<PcoCollection<PcoPeopleAddress>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/addresses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAddress>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleAddress] objects (expecting many)
  /// using a path like this: `/people/v2/people/$personId/addresses`
  static Future<PcoCollection<PcoPeopleAddress>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/people/$personId/addresses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAddress>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
