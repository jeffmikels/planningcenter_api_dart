/// This file was generated on 2022-03-04T20:00:53.864003


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceBooking Object
/// 
/// - Application:        calendar
/// - Id:                 resource_booking
/// - Type:               ResourceBooking
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// 
/// Description:
/// A specific booking of a room or resource for an event instance.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - event_instance: include associated event_instance 
/// - event_resource_request: include associated event_resource_request 
/// - resource: include associated resource 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `eventinstance-resourcebooking-event_instance`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
/// - `eventresourcerequest-resourcebooking-event_resource_request`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
/// - `resource-resourcebooking-resource`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
/// 
/// All Inbound Edges:
/// - `resourcebooking-eventinstance-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
/// - `resourcebooking-event-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
/// - `resourcebooking-eventresourcerequest-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
/// - `resourcebooking-organization-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// - `resourcebooking-resource-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
/// 
/// All Actions:
/// NONE
///
class PcoCalendarResourceBooking extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceBooking';
  static const String kTypeId = 'resource_booking';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcebooking-organization-resource_bookings';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';

  /// possible includes with parameter ?include=a,b
  /// - `event_instance`: include associated event_instance 
  /// - `event_resource_request`: include associated event_resource_request 
  /// - `resource`: include associated resource 
  static List<String> get canInclude => ['event_instance','event_resource_request','resource'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','ends_at','starts_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','ends_at','starts_at','updated_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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

  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  int get quantity => attributes[kQuantity] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarResourceBooking() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceBooking.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



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
  static Future<PcoCollection<PcoCalendarResourceBooking>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `resources`
  /// - `rooms`
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromEventInstance(String eventInstanceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `future`
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/events/$eventId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
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
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromEventResourceRequest(String eventResourceRequestId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
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
  static Future<PcoCollection<PcoCalendarResourceBooking>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_bookings';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstance({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '$apiEndpoint/event_instance';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequest({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '$apiEndpoint/event_resource_request';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
