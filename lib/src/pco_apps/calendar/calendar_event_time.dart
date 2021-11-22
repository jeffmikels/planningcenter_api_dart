/// This file was generated on 2021-11-22T16:57:41.690564


import '../../pco.dart';

/// This class represents a PCO Calendar EventTime Object
/// 
/// Application: calendar
/// Id:          event_time
/// Type:        EventTime
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// Start and end times for each event instance.\n\nIn the Calendar UI, these are represented under the "Schedule" section and\nmay include "Setup" and "Teardown" times for the instance.\n
/// 
/// Example:
/// 
/// {"type":"EventTime","id":"1","attributes":{"ends_at":"2000-01-01T12:00:00Z","starts_at":"2000-01-01T12:00:00Z","name":"2000-01-01T12:00:00Z","visible_on_kiosks":true,"visible_on_widget_and_ical":true},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// 
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
/// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// @visible_on_kiosks (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
/// @visible_on_widget_and_ical (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
/// possible orderings with parameter ?order=
/// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
class PcoCalendarEventTime extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventTime';
  static const String kTypeId = 'event_time';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'eventtime-eventinstance-event_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
  /// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// @visible_on_kiosks (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
  /// @visible_on_widget_and_ical (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
  static List<String> get canQuery => ['ends_at','name','starts_at','visible_on_kiosks','visible_on_widget_and_ical'];

  /// possible orderings with parameter ?order=
  /// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at','starts_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kEndsAt = 'ends_at';
  static const kStartsAt = 'starts_at';
  static const kName = 'name';
  static const kVisibleOnKiosks = 'visible_on_kiosks';
  static const kVisibleOnWidgetAndIcal = 'visible_on_widget_and_ical';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// UTC time at which the event time ends
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');

  /// UTC time at which the event time starts
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  /// Name of the event time
  DateTime get name => DateTime.parse(attributes[kName] ?? '');

  /// Set to `true` if the time is visible on kiosk
  bool get isVisibleOnKiosks => attributes[kVisibleOnKiosks] == true;

  /// Set to `true` if the time is visible on widget or iCal
  bool get isVisibleOnWidgetAndIcal => attributes[kVisibleOnWidgetAndIcal] == true;




  PcoCalendarEventTime() : super(kPcoApplication, kTypeString);
  PcoCalendarEventTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times;
  static Future<List<PcoCalendarEventTime>> getManyFromEventInstanceAndEventTimeIds(String eventInstanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times;
  static Future<PcoCalendarEventTime?> getSingleFromEventInstanceAndEventTimeIds(String eventInstanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
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
    


}
