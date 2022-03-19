/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.346219
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
class PcoPeopleAddres extends PcoResource {
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
  String get city => attributes[kCity] ?? '';
  String get state => attributes[kState] ?? '';
  String get zip => attributes[kZip] ?? '';
  String get street => attributes[kStreet] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set city(String? x) =>
      (x == null) ? attributes.remove(kCity) : attributes[kCity] = x;

  /// pass `null` to remove key from attributes
  set state(String? x) =>
      (x == null) ? attributes.remove(kState) : attributes[kState] = x;

  /// pass `null` to remove key from attributes
  set zip(String? x) =>
      (x == null) ? attributes.remove(kZip) : attributes[kZip] = x;

  /// pass `null` to remove key from attributes
  set street(String? x) =>
      (x == null) ? attributes.remove(kStreet) : attributes[kStreet] = x;

  /// pass `null` to remove key from attributes
  set location(String? x) =>
      (x == null) ? attributes.remove(kLocation) : attributes[kLocation] = x;

  /// pass `null` to remove key from attributes
  set isPrimary(bool? x) =>
      (x == null) ? attributes.remove(kPrimary) : attributes[kPrimary] = x;

  // Class Constructors
  PcoPeopleAddres.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleAddres.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleAddres] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/addresses`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleAddres(String peopleId,
      {String? city,
      String? state,
      String? zip,
      String? street,
      String? location,
      bool? isPrimary}) {
    var obj = PcoPeopleAddres.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$peopleId/addresses';
    if (city != null) obj.city = city;
    if (state != null) obj.state = state;
    if (zip != null) obj.zip = zip;
    if (street != null) obj.street = street;
    if (location != null) obj.location = location;
    if (isPrimary != null) obj.isPrimary = isPrimary;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `/people/v2/addresses`
  static Future<PcoCollection<PcoPeopleAddres>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/addresses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAddres>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleAddres] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/addresses`
  static Future<PcoCollection<PcoPeopleAddres>> getFromPeople(String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAddres.canInclude;
    var url = '/people/v2/people/$peopleId/addresses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAddres>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
