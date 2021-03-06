/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.325454
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services BlockoutException Object
///
/// - Application:        services
/// - Id:                 blockout_exception
/// - Type:               BlockoutException
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesBlockoutException()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesBlockoutException.fromJson()` constructor.
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
/// A single exception for the dates generated from the blockout
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `date` (rw) -> PCO: `date`
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
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "BlockoutException",
///   "id": "1",
///   "attributes": {
///     "date": "2000-01-01",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "blockout": {
///       "data": {
///         "type": "Blockout",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesBlockoutException extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'BlockoutException';
  static const String kTypeId = 'blockout_exception';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kDate = 'date';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => ['date'];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get date => _attributes[kDate] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set date(String? x) =>
      (x == null) ? _attributes.remove(kDate) : _attributes[kDate] = x;

  // Class Constructors
  PcoServicesBlockoutException.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesBlockoutException.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesBlockoutException] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesBlockoutException(String personId, String blockoutId,
      {String? date}) {
    var obj = PcoServicesBlockoutException.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions';
    if (date != null) obj.date = date;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions`
  static Future<PcoCollection<PcoServicesBlockoutException>>
      getFromPersonAndBlockout(
    String personId,
    String blockoutId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockoutException>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
