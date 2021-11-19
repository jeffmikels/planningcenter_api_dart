/// This file was generated on 2021-11-19T12:10:42.720027


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
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @event_times: include associated event_times 
/// @resource_bookings: include associated resource_bookings 
/// @tags: include associated tags 
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
class PcoCalendarEventInstance extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventInstance';
  static const String kTypeId = 'event_instance';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'eventinstance-organization-event_instances';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @event_times: include associated event_times 
  /// @resource_bookings: include associated resource_bookings 
  /// @tags: include associated tags 
  static List<String> get canInclude => ['event','event_times','resource_bookings','tags'];

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




  PcoCalendarEventInstance() : super(kPcoApplication, kTypeString);
  PcoCalendarEventInstance.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances;
  static Future<List<PcoCalendarEventInstance>> getManyFromEventAndEventInstanceIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/events/$eventId/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances;
  static Future<List<PcoCalendarEventInstance>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance;
  static Future<List<PcoCalendarEventInstance>> getManyFromResourceBookingAndEventInstanceIds(String resourceBookingId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_instance';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEventInstance Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances;
  static Future<List<PcoCalendarEventInstance>> getManyFromTagAndEventInstanceIds(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventInstance> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/tags/$tagId/event_instances';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventInstance.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances;
  static Future<PcoCalendarEventInstance?> getSingleFromEventAndEventInstanceIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/events/$eventId/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances;
  static Future<PcoCalendarEventInstance?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/event_instance;
  static Future<PcoCalendarEventInstance?> getSingleFromResourceBookingAndEventInstanceIds(String resourceBookingId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/event_instance' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEventInstance Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances;
  static Future<PcoCalendarEventInstance?> getSingleFromTagAndEventInstanceIds(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventInstance?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
    var url = '/calendar/v2/tags/$tagId/event_instances' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventInstance.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event
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
    
/// will get many PcoCalendarEventTime objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
Future<List<PcoCalendarEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
  List<PcoCalendarEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/resource_bookings
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
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
Future<List<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTag.canInclude;
  List<PcoCalendarTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
