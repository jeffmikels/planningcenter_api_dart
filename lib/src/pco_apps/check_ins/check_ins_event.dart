/// This file was generated on 2021-11-25T00:07:20.344830


import '../../pco.dart';

/// This class represents a PCO CheckIns Event Object
/// 
/// Application: check-ins
/// Id:          event
/// Type:        Event
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A recurring event which people may attend.\n\nEach recurrence is an _event period_ (which often corresponds to a week).\n\nEvent periods have _event times_ where people may actually check in.\n
/// 
/// Example:
/// 
/// {"type":"Event","id":"1","attributes":{"name":"string","frequency":"string","enable_services_integration":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","archived_at":"2000-01-01T12:00:00Z","integration_key":"string","location_times_enabled":true,"pre_select_enabled":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/events
/// 
/// possible includes with parameter ?include=a,b
/// @attendance_types: include associated attendance_types 
/// @event_periods: include associated event_periods 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoCheckInsEvent extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'event-organization-events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/events';

  /// possible includes with parameter ?include=a,b
  /// @attendance_types: include associated attendance_types 
  /// @event_periods: include associated event_periods 
  static List<String> get canInclude => ['attendance_types','event_periods'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id','name'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['created_at','name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kFrequency = 'frequency';
  static const kEnableServicesIntegration = 'enable_services_integration';
  static const kArchivedAt = 'archived_at';
  static const kIntegrationKey = 'integration_key';
  static const kLocationTimesEnabled = 'location_times_enabled';
  static const kPreSelectEnabled = 'pre_select_enabled';
  static const kAppSource = 'app_source';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get frequency => attributes[kFrequency] ?? '';
  bool get isEnableServicesIntegration => attributes[kEnableServicesIntegration] == true;
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get integrationKey => attributes[kIntegrationKey] ?? '';
  bool get isLocationTimesEnabled => attributes[kLocationTimesEnabled] == true;
  bool get isPreSelectEnabled => attributes[kPreSelectEnabled] == true;

  /// Only available when requested with the `?fields` param
  String get appSource => attributes[kAppSource] ?? '';




  PcoCheckInsEvent() : super(kPcoApplication, kTypeString);
  PcoCheckInsEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromAttendanceType(String attendanceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromCheckIn(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromEventAndEventLabel(String eventId,String eventLabelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromCheckInAndEventPeriod(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromEventTime(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromCheckInAndLocation(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events;
  static Future<PcoCollection<PcoCheckInsEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromEventAndPersonEvent(String eventId,String personEventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getManyFromStation(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/stations/$stationId/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromAttendanceType(String attendanceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromCheckIn(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromEventAndEventLabel(String eventId,String eventLabelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromCheckInAndEventPeriod(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromEventTime(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromCheckInAndLocation(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromEventAndPersonEvent(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event;
  static Future<PcoCollection<PcoCheckInsEvent>> getSingleFromStation(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/stations/$stationId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsAttendanceType objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
Future<PcoCollection<PcoCheckInsAttendanceType>> getAttendanceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
  var url = '$apiEndpoint/attendance_types';
  return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
Future<PcoCollection<PcoCheckInsEventTime>> getEventTimesCurrentEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  var url = '$apiEndpoint/current_event_times';
  return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
Future<PcoCollection<PcoCheckInsEventLabel>> getEventLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
  var url = '$apiEndpoint/event_labels';
  return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods
Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
  var url = '$apiEndpoint/event_periods';
  return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
Future<PcoCollection<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  var url = '$apiEndpoint/locations';
  return PcoCollection.fromApiCall<PcoCheckInsLocation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPersonEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
Future<PcoCollection<PcoCheckInsPersonEvent>> getPersonEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
  var url = '$apiEndpoint/person_events';
  return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url, query: query, apiVersion:apiVersion);
}
    


}
