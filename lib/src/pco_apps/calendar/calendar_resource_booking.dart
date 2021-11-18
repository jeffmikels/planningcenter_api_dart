/// This file was generated on 2021-11-18T15:28:02.155341


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
class PcoCalendarResourceBooking extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceBooking';
  static const String kTypeId = 'resource_booking';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcebooking-organization-resource_bookings';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_bookings';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoCalendarResourceBooking.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings;
  static Future<List<PcoCalendarResourceBooking>> getManyFromEventInstanceAndResourceBookingIds(String eventInstanceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceBooking> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceBooking.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings;
  static Future<List<PcoCalendarResourceBooking>> getManyFromEventAndResourceBookingIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceBooking> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/resource_bookings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceBooking.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings;
  static Future<List<PcoCalendarResourceBooking>> getManyFromEventResourceRequestAndResourceBookingIds(String eventResourceRequestId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceBooking> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceBooking.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings;
  static Future<List<PcoCalendarResourceBooking>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceBooking> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceBooking.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResourceBooking Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings;
  static Future<List<PcoCalendarResourceBooking>> getManyFromResourceAndResourceBookingIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceBooking> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_bookings';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceBooking.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings;
  static Future<PcoCalendarResourceBooking?> getSingleFromEventInstanceAndResourceBookingIds(String eventInstanceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceBooking?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/resource_bookings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceBooking.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings;
  static Future<PcoCalendarResourceBooking?> getSingleFromEventAndResourceBookingIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceBooking?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/resource_bookings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceBooking.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings;
  static Future<PcoCalendarResourceBooking?> getSingleFromEventResourceRequestAndResourceBookingIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceBooking?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource_bookings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceBooking.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings;
  static Future<PcoCalendarResourceBooking?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceBooking?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceBooking.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarResourceBooking Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings;
  static Future<PcoCalendarResourceBooking?> getSingleFromResourceAndResourceBookingIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceBooking?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/resource_bookings' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceBooking.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance
Future<List<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventInstance> retval = [];
  var url = '$apiEndpoint/event_instance';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventInstance.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request
Future<List<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventResourceRequest> retval = [];
  var url = '$apiEndpoint/event_resource_request';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    

}
