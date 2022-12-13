/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:25.962
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesLiveControllerOrder { createdAt, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesLiveControllerFilter { none }

/// Creates a [PcoServicesLiveControllerQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesLiveControllerOrder.createdAt` : will order by `created_at`
/// - `PcoServicesLiveControllerOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesLiveControllerQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesLiveControllerOrder, String> _orderMap = {
    PcoServicesLiveControllerOrder.createdAt: 'created_at',
    PcoServicesLiveControllerOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesLiveControllerOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesLiveControllerFilter, String> _filterMap = {};
  static String filterString(PcoServicesLiveControllerFilter filter) =>
      _filterMap[filter]!;

  PcoServicesLiveControllerQuery({
    PcoServicesLiveControllerOrder? orderBy,

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
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services LiveController Object
///
/// - Application:        services
/// - Id:                 live_controller
/// - Type:               LiveController
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesLiveController.fromJson()` constructor.
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
/// A person who can control Services LIVE without the required permissions
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `fullName` (ro) -> PCO: `full_name`
/// - `photoThumbnailUrl` (ro) -> PCO: `photo_thumbnail_url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `livecontroller-servicetype-live_controllers`: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LiveController",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "full_name": "string",
///     "photo_thumbnail_url": "string"
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
class PcoServicesLiveController extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'LiveController';
  static const String kTypeId = 'live_controller';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kFullName = 'full_name';
  static const kPhotoThumbnailUrl = 'photo_thumbnail_url';

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
  String get fullName => _attributes[kFullName] ?? '';
  String get photoThumbnailUrl => _attributes[kPhotoThumbnailUrl] ?? '';

  // Class Constructors
  PcoServicesLiveController.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesLiveController.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesLiveController] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesLiveController(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? fullName,
      String? photoThumbnailUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesLiveController.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (fullName != null) obj._attributes['full_name'] = fullName;
    if (photoThumbnailUrl != null)
      obj._attributes['photo_thumbnail_url'] = photoThumbnailUrl;

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

  /// Will get a collection of [PcoServicesLiveController] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/live_controllers`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesLiveController>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesLiveControllerQuery? query,
  }) async {
    query ??= PcoServicesLiveControllerQuery();

    var url = '/services/v2/service_types/$serviceTypeId/live_controllers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesLiveController>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
