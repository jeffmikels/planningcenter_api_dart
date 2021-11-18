/// This file was generated on 2021-11-17T23:59:29.990825


import '../../pco.dart';

/// This class represents a PCO Calendar EventInstance Object
/// 
/// Application: calendar
/// Id:          event_instance
/// Type:        EventInstance
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A specific occurrence of an event.\n\nIf the event is recurring, `recurrence` will be set and\n`recurrence_description` will provide an overview of the recurrence pattern.\n
/// 
/// Example:
/// 
/// {"type":"EventInstance","id":"1","attributes":{"all_day_event":true,"created_at":"2000-01-01T12:00:00Z","ends_at":"2000-01-01T12:00:00Z","location":"string","recurrence":"string","recurrence_description":"string","starts_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","church_center_url":"string"},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/event_instances
/// 
class PcoCalendarEventInstance extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'EventInstance';
  static const String typeId = 'event_instance';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'eventinstance-organization-event_instances';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kAllDayEvent = 'all_day_event';
  static const kEndsAt = 'ends_at';
  static const kLocation = 'location';
  static const kRecurrence = 'recurrence';
  static const kRecurrenceDescription = 'recurrence_description';
  static const kStartsAt = 'starts_at';
  static const kChurchCenterUrl = 'church_center_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Indicates whether event instance lasts all day
  bool get isAllDayEvent => attributes[kAllDayEvent] == true;

  /// UTC time at which the event instance ends
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');

  /// Representation of where the event instance takes place
  String get location => attributes[kLocation] ?? '';

  /// For a recurring event instance, the interval of how often the event instance occurs
  String get recurrence => attributes[kRecurrence] ?? '';

  /// Compact representation of event instance's recurrence pattern
  String get recurrenceDescription => attributes[kRecurrenceDescription] ?? '';

  /// UTC time at which the event instance starts
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  /// The URL for the event on Church Center
  String get churchCenterUrl => attributes[kChurchCenterUrl] ?? '';




  PcoCalendarEventInstance() : super(pcoApplication, typeString);
  PcoCalendarEventInstance.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances;
  static Future<List<PcoCalendarEventInstance>> getManyFromEventAndEventInstanceIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances;
  static Future<List<PcoCalendarEventInstance>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance;
  static Future<List<PcoCalendarEventInstance>> getManyFromResourceBookingAndEventInstanceIds(String resourceBookingId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_instance';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances;
  static Future<List<PcoCalendarEventInstance>> getManyFromTagAndEventInstanceIds(String tagId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags/$tagId/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances;
  static Future<PcoCalendarEventInstance?> getSingleFromEventAndEventInstanceIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances;
  static Future<PcoCalendarEventInstance?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance;
  static Future<PcoCalendarEventInstance?> getSingleFromResourceBookingAndEventInstanceIds(String resourceBookingId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_instance' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances;
  static Future<PcoCalendarEventInstance?> getSingleFromTagAndEventInstanceIds(String tagId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags/$tagId/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
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
    
/// will get many PcoCalendarEventTime objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
Future<List<PcoCalendarEventTime>> getEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
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
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
Future<List<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
