/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.972515
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
enum PcoServicesSeriesOrder { createdAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesSeriesFilter { none }

/// Creates a [PcoServicesSeriesQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesSeries] objects can be requested with one or more of the following criteria:
/// - `whereTitle`: query on a specific title, example: ?where[title]=string
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
/// - `PcoServicesSeriesOrder.createdAt` : will order by `created_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesSeriesQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesSeriesOrder, String> _orderMap = {
    PcoServicesSeriesOrder.createdAt: 'created_at',
  };
  static String orderString(PcoServicesSeriesOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesSeriesFilter, String> _filterMap = {};
  static String filterString(PcoServicesSeriesFilter filter) =>
      _filterMap[filter]!;

  PcoServicesSeriesQuery({
    /// Query by `title`
    /// query on a specific title, url example: ?where[title]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereTitle,
    PcoServicesSeriesOrder? orderBy,

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
    if (whereTitle != null)
      where.add(PlanningCenterApiWhere.parse('title', whereTitle));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Services Series Object
///
/// - Application:        services
/// - Id:                 series
/// - Type:               Series
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesSeries.fromJson()` constructor.
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
/// A Series can be specified for each plan to tie plans with similar messages together, even across Service Types.
///
/// *Note*: A series is not created until artwork is added from the plan.  You can use `series_title` included in `Plan` attributes to get titles for series without artwork.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `artworkFileName` (ro) -> PCO: `artwork_file_name`
/// - `artworkContentType` (ro) -> PCO: `artwork_content_type`
/// - `artworkFileSize` (ro) -> PCO: `artwork_file_size`
/// - `title` (ro) -> PCO: `title`
/// - `artworkForDashboard` (ro) -> PCO: `artwork_for_dashboard`
/// - `artworkForMobile` (ro) -> PCO: `artwork_for_mobile`
/// - `artworkForPlan` (ro) -> PCO: `artwork_for_plan`
/// - `artworkOriginal` (ro) -> PCO: `artwork_original`
/// - `isHasArtwork` (ro) -> PCO: `has_artwork`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `plan-series-plans`: https://api.planningcenteronline.com/services/v2/series/1/plans
///
/// Inbound Edges:
/// - `series-organization-series`: https://api.planningcenteronline.com/services/v2/series
/// - `series-plan-series`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Series",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "artwork_file_name": "string",
///     "artwork_content_type": "string",
///     "artwork_file_size": 1,
///     "title": "string",
///     "artwork_for_dashboard": "string",
///     "artwork_for_mobile": "string",
///     "artwork_for_plan": "string",
///     "artwork_original": "string",
///     "has_artwork": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesSeries extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Series';
  static const String kTypeId = 'series';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/series';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['title'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kArtworkFileName = 'artwork_file_name';
  static const kArtworkContentType = 'artwork_content_type';
  static const kArtworkFileSize = 'artwork_file_size';
  static const kTitle = 'title';
  static const kArtworkForDashboard = 'artwork_for_dashboard';
  static const kArtworkForMobile = 'artwork_for_mobile';
  static const kArtworkForPlan = 'artwork_for_plan';
  static const kArtworkOriginal = 'artwork_original';
  static const kHasArtwork = 'has_artwork';

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
  String get artworkFileName => _getAttribute<String>(kArtworkFileName, '');
  String get artworkContentType =>
      _getAttribute<String>(kArtworkContentType, '');
  int get artworkFileSize => _getAttribute<int>(kArtworkFileSize, 0);
  String get title => _getAttribute<String>(kTitle, '');
  String get artworkForDashboard =>
      _getAttribute<String>(kArtworkForDashboard, '');
  String get artworkForMobile => _getAttribute<String>(kArtworkForMobile, '');
  String get artworkForPlan => _getAttribute<String>(kArtworkForPlan, '');
  String get artworkOriginal => _getAttribute<String>(kArtworkOriginal, '');
  bool get isHasArtwork => _getAttribute<bool>(kHasArtwork, false);

  // Class Constructors
  PcoServicesSeries.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesSeries.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesSeries] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesSeries(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? artworkFileName,
      String? artworkContentType,
      int? artworkFileSize,
      String? title,
      String? artworkForDashboard,
      String? artworkForMobile,
      String? artworkForPlan,
      String? artworkOriginal,
      bool? isHasArtwork,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesSeries.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (artworkFileName != null)
      obj._attributes['artwork_file_name'] = artworkFileName;
    if (artworkContentType != null)
      obj._attributes['artwork_content_type'] = artworkContentType;
    if (artworkFileSize != null)
      obj._attributes['artwork_file_size'] = artworkFileSize;
    if (title != null) obj._attributes['title'] = title;
    if (artworkForDashboard != null)
      obj._attributes['artwork_for_dashboard'] = artworkForDashboard;
    if (artworkForMobile != null)
      obj._attributes['artwork_for_mobile'] = artworkForMobile;
    if (artworkForPlan != null)
      obj._attributes['artwork_for_plan'] = artworkForPlan;
    if (artworkOriginal != null)
      obj._attributes['artwork_original'] = artworkOriginal;
    if (isHasArtwork != null) obj._attributes['has_artwork'] = isHasArtwork;

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

  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/series`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSeries>> get({
    String? id,
    PcoServicesSeriesQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesSeriesQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesSeries] object
  /// using a path like this: `/services/v2/series/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesSeries?> getSingle(
    String id, {
    PcoServicesSeriesQuery? query,
  }) async {
    query ??= PcoServicesSeriesQuery();

    var url = '/services/v2/series/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/series`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesSeries>> getAll({
    String? id,
    PcoServicesSeriesQuery? query,
  }) async {
    query ??= PcoServicesSeriesQuery();
    query.getAll = true;

    var url = '/services/v2/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/series`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesSeries>> getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesSeriesQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesSeriesQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesSeries] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/series/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesSeries?> getSingleFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId,
    String id, {
    PcoServicesSeriesQuery? query,
  }) async {
    query ??= PcoServicesSeriesQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/series/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/series`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesSeries>> getAllFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesSeriesQuery? query,
  }) async {
    query ??= PcoServicesSeriesQuery();
    query.getAll = true;

    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans`
  Future<PcoCollection<PcoServicesPlan>> getPlans(
      {PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
