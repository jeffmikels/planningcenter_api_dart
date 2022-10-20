/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.823546
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
enum PcoWebhooksDeliveryOrder { createdAt }

/// Filtering is not allowed when requesting this object.
enum PcoWebhooksDeliveryFilter { none }

/// Creates a [PcoWebhooksDeliveryQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoWebhooksDeliveryOrder.createdAt` : will order by `created_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoWebhooksDeliveryQuery extends PlanningCenterApiQuery {
  static final Map<PcoWebhooksDeliveryOrder, String> _orderMap = {
    PcoWebhooksDeliveryOrder.createdAt: 'created_at',
  };
  static String orderString(PcoWebhooksDeliveryOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoWebhooksDeliveryFilter, String> _filterMap = {};
  static String filterString(PcoWebhooksDeliveryFilter filter) =>
      _filterMap[filter]!;

  PcoWebhooksDeliveryQuery({
    PcoWebhooksDeliveryOrder? orderBy,

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

/// This class represents a PCO Webhooks Delivery Object
///
/// - Application:        webhooks
/// - Id:                 delivery
/// - Type:               Delivery
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoWebhooksDelivery.fromJson()` constructor.
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
/// - `status` (ro) -> PCO: `status`
/// - `requestHeaders` (ro) -> PCO: `request_headers`
/// - `requestBody` (ro) -> PCO: `request_body`
/// - `responseHeaders` (ro) -> PCO: `response_headers`
/// - `responseBody` (ro) -> PCO: `response_body`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `timing` (ro) -> PCO: `timing`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Delivery",
///   "id": "1",
///   "attributes": {
///     "status": 1,
///     "request_headers": "string",
///     "request_body": "string",
///     "response_headers": "string",
///     "response_body": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "timing": 1.42
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoWebhooksDelivery extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Delivery';
  static const String kTypeId = 'delivery';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

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
  static const kStatus = 'status';
  static const kRequestHeaders = 'request_headers';
  static const kRequestBody = 'request_body';
  static const kResponseHeaders = 'response_headers';
  static const kResponseBody = 'response_body';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kTiming = 'timing';

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
  int get status => _attributes[kStatus] ?? 0;
  String get requestHeaders => _attributes[kRequestHeaders] ?? '';
  String get requestBody => _attributes[kRequestBody] ?? '';
  String get responseHeaders => _attributes[kResponseHeaders] ?? '';
  String get responseBody => _attributes[kResponseBody] ?? '';
  double get timing => _attributes[kTiming]?.toDouble() ?? 0.0;

  // Class Constructors
  PcoWebhooksDelivery.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoWebhooksDelivery.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoWebhooksDelivery] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoWebhooksDelivery(
      {String? id,
      int? status,
      String? requestHeaders,
      String? requestBody,
      String? responseHeaders,
      String? responseBody,
      DateTime? createdAt,
      DateTime? updatedAt,
      double? timing,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoWebhooksDelivery.empty();
    obj._id = id;
    if (status != null) obj._attributes['status'] = status;
    if (requestHeaders != null)
      obj._attributes['request_headers'] = requestHeaders;
    if (requestBody != null) obj._attributes['request_body'] = requestBody;
    if (responseHeaders != null)
      obj._attributes['response_headers'] = responseHeaders;
    if (responseBody != null) obj._attributes['response_body'] = responseBody;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (timing != null) obj._attributes['timing'] = timing;

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

  /// Will get a collection of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoWebhooksDelivery>> getFromSubscriptionAndEvent(
    String subscriptionId,
    String eventId, {
    String? id,
    PcoWebhooksDeliveryQuery? query,
  }) async {
    query ??= PcoWebhooksDeliveryQuery();

    var url =
        '/webhooks/v2/subscriptions/$subscriptionId/events/$eventId/deliveries';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksDelivery>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
