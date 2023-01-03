/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.977705
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesSongbookStatusOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesSongbookStatusFilter { none }

/// Creates a [PcoServicesSongbookStatusQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSongbookStatusQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSongbookStatusOrder, String> _orderMap = {};
  static String orderString(PcoServicesSongbookStatusOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSongbookStatusFilter, String> _filterMap = {};
  static String filterString(PcoServicesSongbookStatusFilter filter) =>
      _filterMap[filter]!;

  PcoServicesSongbookStatusQuery({
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

/// This class represents a PCO Services SongbookStatus Object
///
/// - Application:        services
/// - Id:                 songbook_status
/// - Type:               SongbookStatus
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSongbookStatus.fromJson()` constructor.
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
/// Used to get the status of an in progress songbook action. When FINISHED, will contain the url of the songbook.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `status` (ro) -> PCO: `status`
/// - `statusCode` (ro) -> PCO: `status_code`
/// - `statusToken` (ro) -> PCO: `status_token`
/// - `url` (ro) -> PCO: `url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// NONE
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SongbookStatus",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "status_code": "string",
///     "status_token": "string",
///     "url": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesSongbookStatus extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongbookStatus';
  static const String kTypeId = 'songbook_status';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2';
  static const String kCreatePathTemplate = 'null';

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
  static const kStatus = 'status';
  static const kStatusCode = 'status_code';
  static const kStatusToken = 'status_token';
  static const kUrl = 'url';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get status => _getAttribute<String>(kStatus, '');
  String get statusCode => _getAttribute<String>(kStatusCode, '');
  String get statusToken => _getAttribute<String>(kStatusToken, '');
  String get url => _getAttribute<String>(kUrl, '');

  // Class Constructors
  PcoServicesSongbookStatus.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSongbookStatus.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSongbookStatus] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSongbookStatus(
      {String? id,
      String? status,
      String? statusCode,
      String? statusToken,
      String? url,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSongbookStatus.empty();
    obj._id = id;
    if (status != null) obj._attributes['status'] = status;
    if (statusCode != null) obj._attributes['status_code'] = statusCode;
    if (statusToken != null) obj._attributes['status_token'] = statusToken;
    if (url != null) obj._attributes['url'] = url;

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

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
