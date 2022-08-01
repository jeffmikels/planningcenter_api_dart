/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.948104
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarEventResourceRequestOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarEventResourceRequestFilter { none }

/// Creates a [PcoCalendarEventResourceRequestQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCreatedBy`: include associated created_by
/// - `includeEvent`: include associated event
/// - `includeResource`: include associated resource
/// - `includeRoomSetup`: include associated room_setup
/// - `includeUpdatedBy`: include associated updated_by
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarEventResourceRequestQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarEventResourceRequest] objects can be requested with one or more of the following criteria:
/// - `whereApprovalSent`: query on a specific approval_sent, example: ?where[approval_sent]=true
/// - `whereApprovalStatus`: query on a specific approval_status, example: ?where[approval_status]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `wherePercentApproved`: query on a specific percent_approved, example: ?where[percent_approved]=1
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarEventResourceRequestQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarEventResourceRequestOrder, String> _orderMap = {};
  static String orderString(PcoCalendarEventResourceRequestOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarEventResourceRequestFilter, String> _filterMap =
      {};
  static String filterString(PcoCalendarEventResourceRequestFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarEventResourceRequestQuery({
    /// include associated created_by
    /// when true, adds `?include=created_by` to url
    bool includeCreatedBy = false,

    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated resource
    /// when true, adds `?include=resource` to url
    bool includeResource = false,

    /// include associated room_setup
    /// when true, adds `?include=room_setup` to url
    bool includeRoomSetup = false,

    /// include associated updated_by
    /// when true, adds `?include=updated_by` to url
    bool includeUpdatedBy = false,

    /// when true, adds `?include=created_by,event,resource,room_setup,updated_by` to url parameters
    bool includeAll = false,

    /// Query by `approval_sent`
    /// query on a specific approval_sent, url example: ?where[approval_sent]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereApprovalSent,

    /// Query by `approval_status`
    /// query on a specific approval_status, url example: ?where[approval_status]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereApprovalStatus,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `percent_approved`
    /// query on a specific percent_approved, url example: ?where[percent_approved]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePercentApproved,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

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
    if (includeAll || includeCreatedBy) include.add('created_by');
    if (includeAll || includeEvent) include.add('event');
    if (includeAll || includeResource) include.add('resource');
    if (includeAll || includeRoomSetup) include.add('room_setup');
    if (includeAll || includeUpdatedBy) include.add('updated_by');

    if (whereApprovalSent != null)
      where.add(
          PlanningCenterApiWhere.parse('approval_sent', whereApprovalSent));
    if (whereApprovalStatus != null)
      where.add(
          PlanningCenterApiWhere.parse('approval_status', whereApprovalStatus));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (wherePercentApproved != null)
      where.add(PlanningCenterApiWhere.parse(
          'percent_approved', wherePercentApproved));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
  }
}

/// This class represents a PCO Calendar EventResourceRequest Object
///
/// - Application:        calendar
/// - Id:                 event_resource_request
/// - Type:               EventResourceRequest
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEventResourceRequest.fromJson()` constructor.
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
/// A room or resource request for a specific event.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isApprovalSent` (ro) -> PCO: `approval_sent`
/// - `approvalStatus` (ro) -> PCO: `approval_status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `percentApproved` (ro) -> PCO: `percent_approved`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `roomSetupInfo` (ro) -> PCO: `room_setup_info`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-eventresourcerequest-created_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
/// - `event-eventresourcerequest-event`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resource-eventresourcerequest-resource`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `person-eventresourcerequest-updated_by`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
///
/// Inbound Edges:
/// - `eventresourcerequest-event-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
/// - `eventresourcerequest-organization-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// - `eventresourcerequest-person-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventResourceRequest",
///   "id": "1",
///   "attributes": {
///     "approval_sent": true,
///     "approval_status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "percent_approved": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "room_setup_info": "string"
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     },
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "event_resource_request": {
///       "data": {
///         "type": "EventResourceRequest",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarEventResourceRequest extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventResourceRequest';
  static const String kTypeId = 'event_resource_request';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by
  /// - `event`: include associated event
  /// - `resource`: include associated resource
  /// - `room_setup`: include associated room_setup
  /// - `updated_by`: include associated updated_by
  static List<String> get canInclude =>
      ['created_by', 'event', 'resource', 'room_setup', 'updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `approval_sent`: (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
  /// - `approval_status`: (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `percent_approved`: (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'approval_sent',
        'approval_status',
        'created_at',
        'percent_approved',
        'updated_at'
      ];

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
  static const kApprovalSent = 'approval_sent';
  static const kApprovalStatus = 'approval_status';
  static const kCreatedAt = 'created_at';
  static const kPercentApproved = 'percent_approved';
  static const kUpdatedAt = 'updated_at';
  static const kQuantity = 'quantity';
  static const kRoomSetupInfo = 'room_setup_info';

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
  bool get isApprovalSent => _attributes[kApprovalSent] == true;
  String get approvalStatus => _attributes[kApprovalStatus] ?? '';
  int get percentApproved => _attributes[kPercentApproved] ?? 0;
  int get quantity => _attributes[kQuantity] ?? 0;
  String get roomSetupInfo => _attributes[kRoomSetupInfo] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];

  PcoCalendarEvent? get includedEvent =>
      _firstOrNull<PcoCalendarEvent>(relationships['event']);
  PcoCalendarResource? get includedResource =>
      _firstOrNull<PcoCalendarResource>(relationships['resource']);
  PcoCalendarRoomSetup? get includedRoomSetup =>
      _firstOrNull<PcoCalendarRoomSetup>(relationships['room_setup']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedUpdatedBy<T extends PcoResource>() =>
      (relationships['updated_by'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarEventResourceRequest.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarEventResourceRequest.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarEventResourceRequest] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCalendarEventResourceRequest(
      {String? id,
      bool? isApprovalSent,
      String? approvalStatus,
      DateTime? createdAt,
      int? percentApproved,
      DateTime? updatedAt,
      int? quantity,
      String? roomSetupInfo,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarEventResourceRequest.empty();
    obj._id = id;
    if (isApprovalSent != null)
      obj._attributes['approval_sent'] = isApprovalSent;
    if (approvalStatus != null)
      obj._attributes['approval_status'] = approvalStatus;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (percentApproved != null)
      obj._attributes['percent_approved'] = percentApproved;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (roomSetupInfo != null)
      obj._attributes['room_setup_info'] = roomSetupInfo;

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

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> get({
    String? id,
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/event_resource_requests`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromEvent(
    String eventId, {
    String? id,
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/events/$eventId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/people/$personId/event_resource_requests`
  ///
  /// Available Query Filters:
  /// - `awaiting_response`
  /// - `future`
  /// - `not_overbooked`
  /// - `overbooked`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromPerson(
    String personId, {
    String? id,
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/people/$personId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getFromResourceApprovalGroup(
    String resourceApprovalGroupId, {
    String? id,
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url =
        '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting one)
  /// using a path like this: `/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>>
      getFromResourceBooking(
    String resourceBookingId, {
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url =
        '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request';

    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/event_resource_requests`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventResourceRequest>> getFromResource(
    String resourceId, {
    String? id,
    PcoCalendarEventResourceRequestQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeEvent = false,
    bool includeResource = false,
    bool includeRoomSetup = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    if (includeAll)
      query.include.addAll(PcoCalendarEventResourceRequest.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeEvent) query.include.add('event');
    if (includeResource) query.include.add('resource');
    if (includeRoomSetup) query.include.add('room_setup');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by`
  Future<PcoCollection<PcoCalendarPerson>> getCreatedBy(
      {PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings`
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
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings(
      {PcoCalendarResourceBookingQuery? query}) async {
    query ??= PcoCalendarResourceBookingQuery();
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource(
      {PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetup(
      {PcoCalendarRoomSetupQuery? query}) async {
    query ??= PcoCalendarRoomSetupQuery();
    var url = '$apiEndpoint/room_setup';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by`
  Future<PcoCollection<PcoCalendarPerson>> getUpdatedBy(
      {PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/updated_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
