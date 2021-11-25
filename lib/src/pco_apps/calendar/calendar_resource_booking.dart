/// This file was generated on 2021-11-25T00:07:20.714292


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceBooking Object
/// 
/// Application: calendar
/// Id:          resource_booking
/// Type:        ResourceBooking
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A specific booking of a room or resource for an event instance.\n
/// 
/// Example:
/// 
/// {"type":"ResourceBooking","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","ends_at":"2000-01-01T12:00:00Z","starts_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","quantity":1},"relationships":{"event":{"data":{"type":"Event","id":"1"}},"event_instance":{"data":{"type":"EventInstance","id":"1"}},"resource":{"data":{"type":"Resource","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/resource_bookings
/// 
/// possible includes with parameter ?include=a,b
/// @event_instance: include associated event_instance 
/// @event_resource_request: include associated event_resource_request 
/// @resource: include associated resource 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCalendarResourceBooking extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceBooking';
  static const String kTypeId = 'resource_booking';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcebooking-organization-resource_bookings';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';

  /// possible includes with parameter ?include=a,b
  /// @event_instance: include associated event_instance 
  /// @event_resource_request: include associated event_resource_request 
  /// @resource: include associated resource 
  static List<String> get canInclude => ['event_instance','event_resource_request','resource'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','ends_at','starts_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','ends_at','starts_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kEndsAt = 'ends_at';
  static const kStartsAt = 'starts_at';
  static const kQuantity = 'quantity';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// UTC time at which usage of the booked room or resource ends
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');

  /// UTC time at which usage of the booked room or resource starts
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  /// The quantity of the rooms or resources booked
  int get quantity => attributes[kQuantity] ?? 0;




  PcoCalendarResourceBooking() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceBooking.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getManyFromEventInstanceAndResourceBooking(String eventInstanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getManyFromEventAndResourceBooking(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/events/$eventId/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getManyFromEventResourceRequestAndResourceBooking(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getManyFromResourceAndResourceBooking(String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getSingleFromEventInstanceAndResourceBooking(String eventInstanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceBooking.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getSingleFromEventAndResourceBooking(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/events/$eventId/resource_bookings' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceBooking.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getSingleFromEventResourceRequestAndResourceBooking(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceBooking.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resource_bookings' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceBooking.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings;
  static Future<PcoCollection<PcoCalendarResourceBooking>> getSingleFromResourceAndResourceBooking(String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_bookings' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResourceBooking.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
  var url = '$apiEndpoint/event_instance';
  return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  var url = '$apiEndpoint/event_resource_request';
  return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
Future<PcoCollection<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  var url = '$apiEndpoint/resource';
  return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:apiVersion);
}
    


}
