/// This file was generated on 2021-11-17T23:59:29.992223


import '../../pco.dart';

/// This class represents a PCO Calendar EventResourceRequest Object
/// 
/// Application: calendar
/// Id:          event_resource_request
/// Type:        EventResourceRequest
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A room or resource request for a specific event.\n
/// 
/// Example:
/// 
/// {"type":"EventResourceRequest","id":"1","attributes":{"approval_sent":true,"approval_status":"string","created_at":"2000-01-01T12:00:00Z","percent_approved":1,"updated_at":"2000-01-01T12:00:00Z","quantity":1,"room_setup_info":"string"},"relationships":{"event":{"data":{"type":"Event","id":"1"}},"resource":{"data":{"type":"Resource","id":"1"}},"event_resource_request":{"data":{"type":"EventResourceRequest","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}},"updated_by":{"data":{"type":"Person","id":"1"}},"room_setup":{"data":{"type":"RoomSetup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
/// 
class PcoCalendarEventResourceRequest extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'EventResourceRequest';
  static const String typeId = 'event_resource_request';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'eventresourcerequest-organization-event_resource_requests';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kApprovalSent = 'approval_sent';
  static const kApprovalStatus = 'approval_status';
  static const kPercentApproved = 'percent_approved';
  static const kQuantity = 'quantity';
  static const kRoomSetupInfo = 'room_setup_info';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Whether or not an email has been sent to request approval
  bool get isApprovalSent => attributes[kApprovalSent] == true;

  /// Possible values:
  ///- `A`: approved
  ///- `P`: pending
  ///- `R`: rejected
  String get approvalStatus => attributes[kApprovalStatus] ?? '';

  /// Possible values:
  ///- `0`: request has not been approved
  ///- `100`: request has been approved
  int get percentApproved => attributes[kPercentApproved] ?? 0;

  /// How many of the rooms or resources are being requested.
  ///If the request pertains to a room, this will never exceed `1`.
  int get quantity => attributes[kQuantity] ?? 0;

  /// Additional information about the room or resource request
  String get roomSetupInfo => attributes[kRoomSetupInfo] ?? '';




  PcoCalendarEventResourceRequest() : super(pcoApplication, typeString);
  PcoCalendarEventResourceRequest.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromEventAndEventResourceRequestIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromPeopleAndEventResourceRequestIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/people/$peopleId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceApprovalGroupAndEventResourceRequestIds(String resourceApprovalGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceBookingAndEventResourceRequestIds(String resourceBookingId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceAndEventResourceRequestIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromEventAndEventResourceRequestIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromPeopleAndEventResourceRequestIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/people/$peopleId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceApprovalGroupAndEventResourceRequestIds(String resourceApprovalGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceBookingAndEventResourceRequestIds(String resourceBookingId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceAndEventResourceRequestIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
Future<List<PcoCalendarPerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
Future<List<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResourceBooking> retval = [];
  var url = '$apiEndpoint/resource_bookings';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceBooking.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
Future<List<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarRoomSetup> retval = [];
  var url = '$apiEndpoint/room_setup';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarRoomSetup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
Future<List<PcoCalendarPerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/updated_by';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
