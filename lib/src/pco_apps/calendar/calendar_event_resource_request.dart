/// This file was generated on 2021-11-22T16:57:41.687693


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
/// possible includes with parameter ?include=a,b
/// @created_by: include associated created_by 
/// @event: include associated event 
/// @resource: include associated resource 
/// @room_setup: include associated room_setup 
/// @updated_by: include associated updated_by 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @approval_sent (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
/// @approval_status (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @percent_approved (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=

///
class PcoCalendarEventResourceRequest extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventResourceRequest';
  static const String kTypeId = 'event_resource_request';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'eventresourcerequest-organization-event_resource_requests';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_resource_requests';

  /// possible includes with parameter ?include=a,b
  /// @created_by: include associated created_by 
  /// @event: include associated event 
  /// @resource: include associated resource 
  /// @room_setup: include associated room_setup 
  /// @updated_by: include associated updated_by 
  static List<String> get canInclude => ['created_by','event','resource','room_setup','updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @approval_sent (URLParameter), query on a specific approval_sent, example: ?where[approval_sent]=true
  /// @approval_status (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @percent_approved (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['approval_sent','approval_status','created_at','percent_approved','updated_at'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCalendarEventResourceRequest() : super(kPcoApplication, kTypeString);
  PcoCalendarEventResourceRequest.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromEventAndEventResourceRequestIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/events/$eventId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromPeopleAndEventResourceRequestIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/people/$peopleId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceApprovalGroupAndEventResourceRequestIds(String resourceApprovalGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceBookingAndEventResourceRequestIds(String resourceBookingId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventResourceRequest Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests;
  static Future<List<PcoCalendarEventResourceRequest>> getManyFromResourceAndEventResourceRequestIds(String resourceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventResourceRequest> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromEventAndEventResourceRequestIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/events/$eventId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromPeopleAndEventResourceRequestIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/people/$peopleId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceApprovalGroupAndEventResourceRequestIds(String resourceApprovalGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_resource_request;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceBookingAndEventResourceRequestIds(String resourceBookingId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_resource_request' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventResourceRequest Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests;
  static Future<PcoCalendarEventResourceRequest?> getSingleFromResourceAndEventResourceRequestIds(String resourceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventResourceRequest?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '/calendar/v2/resources/$resourceId/event_resource_requests' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventResourceRequest.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by
Future<List<PcoCalendarPerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource_bookings
Future<List<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
  List<PcoCalendarResourceBooking> retval = [];
  var url = '$apiEndpoint/resource_bookings';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceBooking.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
Future<List<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
  List<PcoCalendarRoomSetup> retval = [];
  var url = '$apiEndpoint/room_setup';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarRoomSetup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by
Future<List<PcoCalendarPerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/updated_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
