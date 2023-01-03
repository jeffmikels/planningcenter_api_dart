/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.947788
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesContributorOrder { createdAt, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoServicesContributorFilter { none }

/// Creates a [PcoServicesContributorQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesContributorOrder.createdAt` : will order by `created_at`
/// - `PcoServicesContributorOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesContributorQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesContributorOrder, String> _orderMap = {
    PcoServicesContributorOrder.createdAt: 'created_at',
    PcoServicesContributorOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesContributorOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesContributorFilter, String> _filterMap = {};
  static String filterString(PcoServicesContributorFilter filter) =>
      _filterMap[filter]!;

  PcoServicesContributorQuery({
    PcoServicesContributorOrder? orderBy,

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

/// This class represents a PCO Services Contributor Object
///
/// - Application:        services
/// - Id:                 contributor
/// - Type:               Contributor
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series/1/plans/1/contributors
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesContributor.fromJson()` constructor.
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
/// A Contributor Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `contributableAction` (ro) -> PCO: `contributable_action`
/// - `contributableCategory` (ro) -> PCO: `contributable_category`
/// - `contributableType` (ro) -> PCO: `contributable_type`
/// - `fullName` (ro) -> PCO: `full_name`
/// - `photoThumbnailUrl` (ro) -> PCO: `photo_thumbnail_url`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `contributor-plan-contributors`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Contributor",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "contributable_action": "string",
///     "contributable_category": "string",
///     "contributable_type": "string",
///     "full_name": "string",
///     "photo_thumbnail_url": "string"
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesContributor extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Contributor';
  static const String kTypeId = 'contributor';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/series/1/plans/1/contributors';
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
  static const kContributableAction = 'contributable_action';
  static const kContributableCategory = 'contributable_category';
  static const kContributableType = 'contributable_type';
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
  String get contributableAction =>
      _getAttribute<String>(kContributableAction, '');
  String get contributableCategory =>
      _getAttribute<String>(kContributableCategory, '');
  String get contributableType => _getAttribute<String>(kContributableType, '');
  String get fullName => _getAttribute<String>(kFullName, '');
  String get photoThumbnailUrl => _getAttribute<String>(kPhotoThumbnailUrl, '');

  // Class Constructors
  PcoServicesContributor.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesContributor.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesContributor] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesContributor(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? contributableAction,
      String? contributableCategory,
      String? contributableType,
      String? fullName,
      String? photoThumbnailUrl,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesContributor.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (contributableAction != null)
      obj._attributes['contributable_action'] = contributableAction;
    if (contributableCategory != null)
      obj._attributes['contributable_category'] = contributableCategory;
    if (contributableType != null)
      obj._attributes['contributable_type'] = contributableType;
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

  /// Will get a [PcoCollection] of [PcoServicesContributor] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/contributors`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesContributor>>
      getFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesContributorQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesContributorQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/contributors';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesContributor>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesContributor] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/contributors/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesContributor?> getSingleFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId,
    String id, {
    PcoServicesContributorQuery? query,
  }) async {
    query ??= PcoServicesContributorQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/contributors/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesContributor>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesContributor] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/contributors`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesContributor>>
      getAllFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    String? id,
    PcoServicesContributorQuery? query,
  }) async {
    query ??= PcoServicesContributorQuery();
    query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/contributors';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesContributor>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
