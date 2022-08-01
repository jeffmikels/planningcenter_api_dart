/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.953410
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `endsAt` -> `?order=ends_at`
/// - `startsAt` -> `?order=starts_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarResourceBookingOrder { createdAt, endsAt, startsAt, updatedAt }

/// Possible Inbound Filters:
/// - `approved` -> `?filter=approved` : -- no description
/// - `approvedPending` -> `?filter=approved_pending` : -- no description
/// - `approvedPendingRejected` -> `?filter=approved_pending_rejected` : -- no description
/// - `approvedRejected` -> `?filter=approved_rejected` : -- no description
/// - `future` -> `?filter=future` : -- no description
/// - `pending` -> `?filter=pending` : -- no description
/// - `pendingRejected` -> `?filter=pending_rejected` : -- no description
/// - `rejected` -> `?filter=rejected` : -- no description
/// - `resources` -> `?filter=resources` : -- no description
/// - `rooms` -> `?filter=rooms` : -- no description
enum PcoCalendarResourceBookingFilter {
  approved,
  approvedPending,
  approvedPendingRejected,
  approvedRejected,
  future,
  pending,
  pendingRejected,
  rejected,
  resources,
  rooms
}

/// Creates a [PcoCalendarResourceBookingQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEventInstance`: include associated event_instance
/// - `includeEventResourceRequest`: include associated event_resource_request
/// - `includeResource`: include associated resource
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarResourceBookingQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarResourceBooking] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereEndsAt`: query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `whereStartsAt`: query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `PcoCalendarResourceBookingOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarResourceBookingOrder.endsAt` : will order by `ends_at`
/// - `PcoCalendarResourceBookingOrder.startsAt` : will order by `starts_at`
/// - `PcoCalendarResourceBookingOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarResourceBookingQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceBookingOrder, String> _orderMap = {
    PcoCalendarResourceBookingOrder.createdAt: 'created_at',
    PcoCalendarResourceBookingOrder.endsAt: 'ends_at',
    PcoCalendarResourceBookingOrder.startsAt: 'starts_at',
    PcoCalendarResourceBookingOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarResourceBookingOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceBookingFilter, String> _filterMap = {
    PcoCalendarResourceBookingFilter.approved: 'approved',
    PcoCalendarResourceBookingFilter.approvedPending: 'approved_pending',
    PcoCalendarResourceBookingFilter.approvedPendingRejected:
        'approved_pending_rejected',
    PcoCalendarResourceBookingFilter.approvedRejected: 'approved_rejected',
    PcoCalendarResourceBookingFilter.future: 'future',
    PcoCalendarResourceBookingFilter.pending: 'pending',
    PcoCalendarResourceBookingFilter.pendingRejected: 'pending_rejected',
    PcoCalendarResourceBookingFilter.rejected: 'rejected',
    PcoCalendarResourceBookingFilter.resources: 'resources',
    PcoCalendarResourceBookingFilter.rooms: 'rooms',
  };
  static String filterString(PcoCalendarResourceBookingFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarResourceBookingQuery({
    /// include associated event_instance
    /// when true, adds `?include=event_instance` to url
    bool includeEventInstance = false,

    /// include associated event_resource_request
    /// when true, adds `?include=event_resource_request` to url
    bool includeEventResourceRequest = false,

    /// include associated resource
    /// when true, adds `?include=resource` to url
    bool includeResource = false,

    /// when true, adds `?include=event_instance,event_resource_request,resource` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `ends_at`
    /// query on a specific ends_at, url example: ?where[ends_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndsAt,

    /// Query by `starts_at`
    /// query on a specific starts_at, url example: ?where[starts_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStartsAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCalendarResourceBookingFilter? filterBy,
    PcoCalendarResourceBookingOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeEventInstance) include.add('event_instance');
    if (includeAll || includeEventResourceRequest)
      include.add('event_resource_request');
    if (includeAll || includeResource) include.add('resource');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereEndsAt != null)
      where.add(PlanningCenterApiWhere.parse('ends_at', whereEndsAt));
    if (whereStartsAt != null)
      where.add(PlanningCenterApiWhere.parse('starts_at', whereStartsAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar ResourceBooking Object
///
/// - Application:        calendar
/// - Id:                 resource_booking
/// - Type:               ResourceBooking
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceBooking.fromJson()` constructor.
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
/// A specific booking of a room or resource for an event instance.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `quantity` (ro) -> PCO: `quantity`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `eventinstance-resourcebooking-event_instance`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `resource-resourcebooking-resource`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
///
/// Inbound Edges:
/// - `resourcebooking-eventinstance-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resourcebooking-organization-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// - `resourcebooking-resource-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceBooking",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "quantity": 1
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "event_instance": {
///       "data": {
///         "type": "EventInstance",
///         "id": "1"
///       }
///     },
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarResourceBooking extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceBooking';
  static const String kTypeId = 'resource_booking';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/resource_bookings';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event_instance`: include associated event_instance
  /// - `event_resource_request`: include associated event_resource_request
  /// - `resource`: include associated resource
  static List<String> get canInclude =>
      ['event_instance', 'event_resource_request', 'resource'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'ends_at', 'starts_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'ends_at', 'starts_at', 'updated_at'];

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
  static const kEndsAt = 'ends_at';
  static const kStartsAt = 'starts_at';
  static const kUpdatedAt = 'updated_at';
  static const kQuantity = 'quantity';

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
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  int get quantity => _attributes[kQuantity] ?? 0;

  // typed getters for each relationship

  PcoCalendarEventInstance? get includedEventInstance =>
      _firstOrNull<PcoCalendarEventInstance>(relationships['event_instance']);
  PcoCalendarEventResourceRequest? get includedEventResourceRequest =>
      _firstOrNull<PcoCalendarEventResourceRequest>(
          relationships['event_resource_request']);
  PcoCalendarResource? get includedResource =>
      _firstOrNull<PcoCalendarResource>(relationships['resource']);

  // Class Constructors
  PcoCalendarResourceBooking.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarResourceBooking.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResourceBooking] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCalendarResourceBooking(
      {String? id,
      DateTime? createdAt,
      DateTime? endsAt,
      DateTime? startsAt,
      DateTime? updatedAt,
      int? quantity,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarResourceBooking.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (quantity != null) obj._attributes['quantity'] = quantity;

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

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  /// - `resources`
  /// - `rooms`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceBooking>> get({
    String? id,
    PcoCalendarResourceBookingQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarResourceBookingQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceBooking.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `resources`
  /// - `rooms`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromEventInstance(
    String eventInstanceId, {
    String? id,
    PcoCalendarResourceBookingQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarResourceBookingQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceBooking.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `future`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromEvent(
    String eventId, {
    String? id,
    PcoCalendarResourceBookingQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarResourceBookingQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceBooking.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/events/$eventId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceBooking>>
      getFromEventResourceRequest(
    String eventResourceRequestId, {
    String? id,
    PcoCalendarResourceBookingQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarResourceBookingQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceBooking.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_bookings`
  ///
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromResource(
    String resourceId, {
    String? id,
    PcoCalendarResourceBookingQuery? query,
    bool includeAll = false,
    bool includeEventInstance = false,
    bool includeEventResourceRequest = false,
    bool includeResource = false,
  }) async {
    query ??= PcoCalendarResourceBookingQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceBooking.canInclude);
    if (includeEventInstance) query.include.add('event_instance');
    if (includeEventResourceRequest)
      query.include.add('event_resource_request');
    if (includeResource) query.include.add('resource');
    var url = '/calendar/v2/resources/$resourceId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstance(
      {PcoCalendarEventInstanceQuery? query}) async {
    query ??= PcoCalendarEventInstanceQuery();
    var url = '$apiEndpoint/event_instance';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request`
  Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getEventResourceRequest(
          {PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_request';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource(
      {PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
