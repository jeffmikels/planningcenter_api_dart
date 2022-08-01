/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.679582
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
enum PcoWebhooksEventOrder { createdAt }

/// Filtering is not allowed when requesting this object.
enum PcoWebhooksEventFilter { none }

/// Creates a [PcoWebhooksEventQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoWebhooksEvent] objects can be requested with one or more of the following criteria:
/// - `whereUuid`: query on a specific uuid, example: ?where[uuid]=string
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
/// - `PcoWebhooksEventOrder.createdAt` : will order by `created_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoWebhooksEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoWebhooksEventOrder, String> _orderMap = {
    PcoWebhooksEventOrder.createdAt: 'created_at',
  };
  static String orderString(PcoWebhooksEventOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoWebhooksEventFilter, String> _filterMap = {};
  static String filterString(PcoWebhooksEventFilter filter) =>
      _filterMap[filter]!;

  PcoWebhooksEventQuery({
    /// Query by `uuid`
    /// query on a specific uuid, url example: ?where[uuid]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUuid,
    PcoWebhooksEventOrder? orderBy,

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
    if (whereUuid != null)
      where.add(PlanningCenterApiWhere.parse('uuid', whereUuid));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Webhooks Event Object
///
/// - Application:        webhooks
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoWebhooksEvent.fromJson()` constructor.
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
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `uuid` (ro) -> PCO: `uuid`
/// - `payload` (ro) -> PCO: `payload`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
///
/// Inbound Edges:
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
///
/// Actions:
/// - `redeliver`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "uuid": "string",
///     "payload": "string"
///   },
///   "relationships": {
///     "subscription": {
///       "data": {
///         "type": "Subscription",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoWebhooksEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => ['uuid'];

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
  static const kUuid = 'uuid';
  static const kPayload = 'payload';

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
  String get uuid => _attributes[kUuid] ?? '';
  String get payload => _attributes[kPayload] ?? '';

  // Class Constructors
  PcoWebhooksEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoWebhooksEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoWebhooksEvent] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoWebhooksEvent(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? uuid,
      String? payload,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoWebhooksEvent.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (uuid != null) obj._attributes['uuid'] = uuid;
    if (payload != null) obj._attributes['payload'] = payload;

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

  /// Will get a collection of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/$subscriptionId/events`
  static Future<PcoCollection<PcoWebhooksEvent>> getFromSubscription(
    String subscriptionId, {
    String? id,
    PcoWebhooksEventQuery? query,
  }) async {
    query ??= PcoWebhooksEventQuery();

    var url = '/webhooks/v2/subscriptions/$subscriptionId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries`
  Future<PcoCollection<PcoWebhooksDelivery>> getDeliveries(
      {PcoWebhooksDeliveryQuery? query}) async {
    query ??= PcoWebhooksDeliveryQuery();
    var url = '$apiEndpoint/deliveries';
    return PcoCollection.fromApiCall<PcoWebhooksDelivery>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `redeliver`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> redeliver(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/redeliver';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
