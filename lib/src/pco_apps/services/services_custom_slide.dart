/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.948280
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesCustomSlideOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesCustomSlideFilter { none }

/// Creates a [PcoServicesCustomSlideQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesCustomSlideQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesCustomSlideOrder, String> _orderMap = {};
  static String orderString(PcoServicesCustomSlideOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesCustomSlideFilter, String> _filterMap = {};
  static String filterString(PcoServicesCustomSlideFilter filter) =>
      _filterMap[filter]!;

  PcoServicesCustomSlideQuery({
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

/// This class represents a PCO Services CustomSlide Object
///
/// - Application:        services
/// - Id:                 custom_slide
/// - Type:               CustomSlide
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesCustomSlide()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesCustomSlide.fromJson()` constructor.
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
/// A CustomSlide is used for adding text intended for display on a screen.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (rw) -> PCO: `body`
/// - `label` (rw) -> PCO: `label`
/// - `order` (rw) -> PCO: `order`
/// - `isEnabled` (rw) -> PCO: `enabled`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `customslide-item-custom_slides`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CustomSlide",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "label": "string",
///     "order": 1,
///     "enabled": true
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     },
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesCustomSlide extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'CustomSlide';
  static const String kTypeId = 'custom_slide';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides';

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
  static const kBody = 'body';
  static const kLabel = 'label';
  static const kOrder = 'order';
  static const kEnabled = 'enabled';

  // getters and setters
  @override
  List<String> get createAllowed => ['body', 'enabled', 'label', 'order'];

  @override
  List<String> get updateAllowed => ['body', 'enabled', 'label', 'order'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get body => _getAttribute<String>(kBody, '');
  String get label => _getAttribute<String>(kLabel, '');
  int get order => _getAttribute<int>(kOrder, 0);
  bool get isEnabled => _getAttribute<bool>(kEnabled, false);

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set body(String? x) =>
      (x == null) ? _attributes.remove(kBody) : _attributes[kBody] = x;

  ///
  /// pass `null` to remove key from attributes
  set label(String? x) =>
      (x == null) ? _attributes.remove(kLabel) : _attributes[kLabel] = x;

  ///
  /// pass `null` to remove key from attributes
  set order(int? x) =>
      (x == null) ? _attributes.remove(kOrder) : _attributes[kOrder] = x;

  ///
  /// pass `null` to remove key from attributes
  set isEnabled(bool? x) =>
      (x == null) ? _attributes.remove(kEnabled) : _attributes[kEnabled] = x;

  // Class Constructors
  PcoServicesCustomSlide.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesCustomSlide.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesCustomSlide] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `body`, `isEnabled`, `label`, `order`
  /// - FIELDS USED WHEN UPDATING: `body`, `isEnabled`, `label`, `order`
  factory PcoServicesCustomSlide(
      {required String serviceTypeId,
      required String planId,
      required String itemId,
      String? id,
      String? body,
      String? label,
      int? order,
      bool? isEnabled,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesCustomSlide.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    if (body != null) obj._attributes['body'] = body;
    if (label != null) obj._attributes['label'] = label;
    if (order != null) obj._attributes['order'] = order;
    if (isEnabled != null) obj._attributes['enabled'] = isEnabled;

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

  /// Will get a [PcoCollection] of [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesCustomSlide>>
      getFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesCustomSlideQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesCustomSlideQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesCustomSlide] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesCustomSlide?> getSingleFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId,
    String id, {
    PcoServicesCustomSlideQuery? query,
  }) async {
    query ??= PcoServicesCustomSlideQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesCustomSlide>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesCustomSlide] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesCustomSlide>>
      getAllFromServiceTypeAndPlanAndItem(
    String serviceTypeId,
    String planId,
    String itemId, {
    String? id,
    PcoServicesCustomSlideQuery? query,
  }) async {
    query ??= PcoServicesCustomSlideQuery();
    query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesCustomSlide>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
