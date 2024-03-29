/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.954395
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesItemTimeOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesItemTimeFilter { none }

/// Creates a [PcoServicesItemTimeQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesItemTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesItemTimeOrder, String> _orderMap = {};
  static String orderString(PcoServicesItemTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesItemTimeFilter, String> _filterMap = {};
  static String filterString(PcoServicesItemTimeFilter filter) =>
      _filterMap[filter]!;

  PcoServicesItemTimeQuery({
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

/// This class represents a PCO Services ItemTime Object
///
/// - Application:        services
/// - Id:                 item_time
/// - Type:               ItemTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesItemTime.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `liveStartAt` (ro) -> PCO: `live_start_at`
/// - `liveEndAt` (ro) -> PCO: `live_end_at`
/// - `isExclude` (ro) -> PCO: `exclude`
/// - `length` (ro) -> PCO: `length`
/// - `lengthOffset` (ro) -> PCO: `length_offset`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `itemtime-item-item_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times
/// - `itemtime-live-current_item_time`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/current_item_time
/// - `itemtime-live-next_item_time`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/next_item_time
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ItemTime",
///   "id": "1",
///   "attributes": {
///     "live_start_at": "2000-01-01T12:00:00Z",
///     "live_end_at": "2000-01-01T12:00:00Z",
///     "exclude": true,
///     "length": 1,
///     "length_offset": 1
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     },
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesItemTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemTime';
  static const String kTypeId = 'item_time';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times';
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
  static const kLiveStartAt = 'live_start_at';
  static const kLiveEndAt = 'live_end_at';
  static const kExclude = 'exclude';
  static const kLength = 'length';
  static const kLengthOffset = 'length_offset';

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
  DateTime get liveStartAt =>
      _getAttribute<DateTime>(kLiveStartAt, DateTime(0));
  DateTime get liveEndAt => _getAttribute<DateTime>(kLiveEndAt, DateTime(0));
  bool get isExclude => _getAttribute<bool>(kExclude, false);
  int get length => _getAttribute<int>(kLength, 0);
  int get lengthOffset => _getAttribute<int>(kLengthOffset, 0);

  // Class Constructors
  PcoServicesItemTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesItemTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesItemTime] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesItemTime(
      {String? id,
      DateTime? liveStartAt,
      DateTime? liveEndAt,
      bool? isExclude,
      int? length,
      int? lengthOffset,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesItemTime.empty();
    obj._id = id;
    if (liveStartAt != null)
      obj._attributes['live_start_at'] = liveStartAt.toIso8601String();
    if (liveEndAt != null)
      obj._attributes['live_end_at'] = liveEndAt.toIso8601String();
    if (isExclude != null) obj._attributes['exclude'] = isExclude;
    if (length != null) obj._attributes['length'] = length;
    if (lengthOffset != null) obj._attributes['length_offset'] = lengthOffset;

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

  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItemTime>>
      getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesItemTimeQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesItemTimeQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesItemTime] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesItemTime?> getSingleFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId,
    String id, {
    PcoServicesItemTimeQuery? query,
  }) async {
    query ??= PcoServicesItemTimeQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesItemTime>>
      getAllFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesItemTimeQuery? query,
  }) async {
    query ??= PcoServicesItemTimeQuery();
    query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/live/$liveId/current_item_time`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItemTime>>
      getCurrentItemTimeFromSeriesAndPlanAndLive(
    String seriesId,
    String planId,
    String liveId, {
    PcoServicesItemTimeQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesItemTimeQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/series/$seriesId/plans/$planId/live/$liveId/current_item_time';

    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/series/$seriesId/plans/$planId/live/$liveId/next_item_time`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesItemTime>>
      getNextItemTimeFromSeriesAndPlanAndLive(
    String seriesId,
    String planId,
    String liveId, {
    PcoServicesItemTimeQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesItemTimeQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/series/$seriesId/plans/$planId/live/$liveId/next_item_time';

    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
