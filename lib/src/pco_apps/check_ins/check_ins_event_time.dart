/// This file was generated on 2021-11-18T15:28:01.841046


import '../../pco.dart';

/// This class represents a PCO CheckIns EventTime Object
/// 
/// Application: check-ins
/// Id:          event_time
/// Type:        EventTime
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A time that someone may check in. Times are copied from session to session.\n
/// 
/// Example:
/// 
/// {"type":"EventTime","id":"1","attributes":{"total_count":1,"starts_at":"2000-01-01T12:00:00Z","shows_at":"2000-01-01T12:00:00Z","hides_at":"2000-01-01T12:00:00Z","regular_count":1,"guest_count":1,"volunteer_count":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string","hour":1,"minute":1,"day_of_week":1},"relationships":{"event":{"data":{"type":"Event","id":"1"}},"event_period":{"data":{"type":"EventPeriod","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/event_times
/// 
class PcoCheckInsEventTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventTime';
  static const String kTypeId = 'event_time';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'eventtime-organization-event_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/event_times';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kTotalCount = 'total_count';
  static const kStartsAt = 'starts_at';
  static const kShowsAt = 'shows_at';
  static const kHidesAt = 'hides_at';
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
  static const kName = 'name';
  static const kHour = 'hour';
  static const kMinute = 'minute';
  static const kDayOfWeek = 'day_of_week';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get totalCount => attributes[kTotalCount] ?? 0;
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get showsAt => DateTime.parse(attributes[kShowsAt] ?? '');
  DateTime get hidesAt => DateTime.parse(attributes[kHidesAt] ?? '');
  int get regularCount => attributes[kRegularCount] ?? 0;
  int get guestCount => attributes[kGuestCount] ?? 0;
  int get volunteerCount => attributes[kVolunteerCount] ?? 0;
  String get name => attributes[kName] ?? '';
  int get hour => attributes[kHour] ?? 0;
  int get minute => attributes[kMinute] ?? 0;
  int get dayOfWeek => attributes[kDayOfWeek] ?? 0;




  PcoCheckInsEventTime() : super(kPcoApplication, kTypeString);
  PcoCheckInsEventTime.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times;
  static Future<List<PcoCheckInsEventTime>> getManyFromCheckInAndEventTimeIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times;
  static Future<List<PcoCheckInsEventTime>> getManyFromEventAndCurrentEventTimeIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/current_event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times;
  static Future<List<PcoCheckInsEventTime>> getManyFromCheckInAndEventPeriodAndEventTimeIds(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time;
  static Future<List<PcoCheckInsEventTime>> getManyFromHeadcountAndEventTimeIds(String headcountId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts/$headcountId/event_time';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time;
  static Future<List<PcoCheckInsEventTime>> getManyFromEventTimeAndLocationEventTimeAndEventTimeIds(String eventTimeId,String locationEventTimeId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/event_time';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times;
  static Future<List<PcoCheckInsEventTime>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsEventTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEventTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_times;
  static Future<PcoCheckInsEventTime?> getSingleFromCheckInAndEventTimeIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times;
  static Future<PcoCheckInsEventTime?> getSingleFromEventAndCurrentEventTimeIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/events/$eventId/current_event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times;
  static Future<PcoCheckInsEventTime?> getSingleFromCheckInAndEventPeriodAndEventTimeIds(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time;
  static Future<PcoCheckInsEventTime?> getSingleFromHeadcountAndEventTimeIds(String headcountId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/headcounts/$headcountId/event_time' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time;
  static Future<PcoCheckInsEventTime?> getSingleFromEventTimeAndLocationEventTimeAndEventTimeIds(String eventTimeId,String locationEventTimeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times/$locationEventTimeId/event_time' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times;
  static Future<PcoCheckInsEventTime?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsEventTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/event_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEventTime.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/available_locations
Future<List<PcoCheckInsLocation>> getLocationsAvailableLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/available_locations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/check_ins
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
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event
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
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period
Future<List<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventPeriod> retval = [];
  var url = '$apiEndpoint/event_period';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
Future<List<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsHeadcount> retval = [];
  var url = '$apiEndpoint/headcounts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsHeadcount.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocationEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
Future<List<PcoCheckInsLocationEventTime>> getLocationEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocationEventTime> retval = [];
  var url = '$apiEndpoint/location_event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocationEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    

}
