/// This file was generated on 2021-11-18T15:28:01.839965


import '../../pco.dart';

/// This class represents a PCO CheckIns EventPeriod Object
/// 
/// Application: check-ins
/// Id:          event_period
/// Type:        EventPeriod
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A recurrence of an event, sometimes called a "session".\nFor weekly events, an event period is a week. For daily events, an event period is a day.\nAn event period has event times, which is what people select\nwhen they actually check in. When new sessions are created, times\nare copied from one session to the next.\n
/// 
/// Example:
/// 
/// {"type":"EventPeriod","id":"1","attributes":{"starts_at":"2000-01-01T12:00:00Z","ends_at":"2000-01-01T12:00:00Z","regular_count":1,"guest_count":1,"volunteer_count":1,"note":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period
/// 
class PcoCheckInsEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventPeriod';
  static const String kTypeId = 'event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'eventperiod-event-event_periods';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
  static const kNote = 'note';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  int get regularCount => attributes[kRegularCount] ?? 0;
  int get guestCount => attributes[kGuestCount] ?? 0;
  int get volunteerCount => attributes[kVolunteerCount] ?? 0;
  String get note => attributes[kNote] ?? '';




  PcoCheckInsEventPeriod() : super(kPcoApplication, kTypeString);
  PcoCheckInsEventPeriod.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period;
  static Future<List<PcoCheckInsEventPeriod>> getManyFromCheckInAndEventPeriodIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period;
  static Future<List<PcoCheckInsEventPeriod>> getManyFromCheckInAndCheckInGroupAndEventPeriodIds(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods;
  static Future<List<PcoCheckInsEventPeriod>> getManyFromEventAndEventPeriodIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_periods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period;
  static Future<List<PcoCheckInsEventPeriod>> getManyFromEventTimeAndEventPeriodIds(String eventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period;
  static Future<List<PcoCheckInsEventPeriod>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodAndEventPeriodIds(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period;
  static Future<PcoCheckInsEventPeriod?> getSingleFromCheckInAndEventPeriodIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventPeriod.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period;
  static Future<PcoCheckInsEventPeriod?> getSingleFromCheckInAndCheckInGroupAndEventPeriodIds(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventPeriod.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods;
  static Future<PcoCheckInsEventPeriod?> getSingleFromEventAndEventPeriodIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/event_periods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventPeriod.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period;
  static Future<PcoCheckInsEventPeriod?> getSingleFromEventTimeAndEventPeriodIds(String eventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventPeriod.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period;
  static Future<PcoCheckInsEventPeriod?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodAndEventPeriodIds(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventPeriod.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
Future<List<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationEventPeriod> retval = [];
  var url = '$apiEndpoint/location_event_periods';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData));
    }
  }
  return retval;
}
    

}
