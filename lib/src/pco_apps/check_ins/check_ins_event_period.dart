/// This file was generated on 2021-11-25T00:07:20.346345


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
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @event_times: include associated event_times 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
class PcoCheckInsEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventPeriod';
  static const String kTypeId = 'event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'eventperiod-event-event_periods';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @event_times: include associated event_times 
  static List<String> get canInclude => ['event','event_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['starts_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoCheckInsEventPeriod.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getManyFromCheckIn(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getManyFromCheckInAndCheckInGroup(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getManyFromEventAndEventPeriod(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_periods';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getManyFromEventTime(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getManyFromCheckInAndEventPeriodAndLocationEventPeriod(String checkInId,String eventPeriodId,String locationEventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getSingleFromCheckIn(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEventPeriod.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getSingleFromCheckInAndCheckInGroup(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/event_period' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEventPeriod.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getSingleFromEventAndEventPeriod(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_periods' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEventPeriod.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getSingleFromEventTime(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event_period' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEventPeriod.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period;
  static Future<PcoCollection<PcoCheckInsEventPeriod>> getSingleFromCheckInAndEventPeriodAndLocationEventPeriod(String checkInId,String eventPeriodId,String locationEventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods/$locationEventPeriodId/event_period' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEventPeriod.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event
Future<PcoCollection<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  var url = '$apiEndpoint/event';
  return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event_times
Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  var url = '$apiEndpoint/event_times';
  return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLocationEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
Future<PcoCollection<PcoCheckInsLocationEventPeriod>> getLocationEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
  var url = '$apiEndpoint/location_event_periods';
  return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url, query: query, apiVersion:apiVersion);
}
    


}
