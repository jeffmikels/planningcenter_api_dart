/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.470143
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesBlockoutExceptionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesBlockoutExceptionFilter { none }

/// Creates a [PcoServicesBlockoutExceptionQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesBlockoutExceptionQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesBlockoutExceptionOrder, String> _orderMap = {};
  static String orderString(PcoServicesBlockoutExceptionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesBlockoutExceptionFilter, String> _filterMap = {};
  static String filterString(PcoServicesBlockoutExceptionFilter filter) =>
      _filterMap[filter]!;

  PcoServicesBlockoutExceptionQuery({
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
  }) : super();
}

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
  ///
  /// pass `null` to remove key from attributes
  set date(String? x) =>
      (x == null) ? _attributes.remove(kDate) : _attributes[kDate] = x;

  // Class Constructors
  PcoServicesBlockoutException.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesBlockoutException.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesBlockoutException] object using this endpoint: `https://api.planningcenteronline.com/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `date`
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesBlockoutException(
      {required String personId,
      required String blockoutId,
      String? id,
      String? date,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesBlockoutException.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions';
    if (date != null) obj._attributes['date'] = date;
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

  /// Will get a collection of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/blockouts/$blockoutId/blockout_exceptions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesBlockoutException>>
      getFromPersonAndBlockout(
    String personId,
    String blockoutId, {
    String? id,
    PcoServicesBlockoutExceptionQuery? query,
  }) async {
    query ??= PcoServicesBlockoutExceptionQuery();

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
