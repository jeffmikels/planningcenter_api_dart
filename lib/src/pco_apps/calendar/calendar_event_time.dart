/// This file was generated on 2021-11-17T23:59:29.993796


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
class PcoCalendarEventTime extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'EventTime';
  static const String typeId = 'event_time';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'eventtime-eventinstance-event_times';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCalendarEventTime() : super(pcoApplication, typeString);
  PcoCalendarEventTime.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times;
  static Future<List<PcoCalendarEventTime>> getManyFromEventInstanceAndEventTimeIds(String eventInstanceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEventTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times;
  static Future<PcoCalendarEventTime?> getSingleFromEventInstanceAndEventTimeIds(String eventInstanceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEventTime.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
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
    

}
