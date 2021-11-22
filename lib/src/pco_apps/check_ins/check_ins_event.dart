/// This file was generated on 2021-11-22T16:37:08.901528


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
  static Future<List<PcoCheckInsEvent>> getManyFromAttendanceTypeAndEventIds(String attendanceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromCheckInAndEventIds(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromEventAndEventLabelAndEventIds(String eventId,String eventLabelId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromCheckInAndEventPeriodAndEventIds(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromEventTimeAndEventIds(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromCheckInAndLocationAndEventIds(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events;
  static Future<List<PcoCheckInsEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromEventAndPersonEventAndEventIds(String eventId,String personEventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event;
  static Future<List<PcoCheckInsEvent>> getManyFromStationAndEventIds(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/stations/$stationId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromAttendanceTypeAndEventIds(String attendanceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromCheckInAndEventIds(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromEventAndEventLabelAndEventIds(String eventId,String eventLabelId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromCheckInAndEventPeriodAndEventIds(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromEventTimeAndEventIds(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromCheckInAndLocationAndEventIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events;
  static Future<PcoCheckInsEvent?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromEventAndPersonEventAndEventIds(String eventId,String personEventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/events/$eventId/person_events/$personEventId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event;
  static Future<PcoCheckInsEvent?> getSingleFromStationAndEventIds(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    var url = '/check-ins/v2/stations/$stationId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsAttendanceType objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
Future<List<PcoCheckInsAttendanceType>> getAttendanceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
  List<PcoCheckInsAttendanceType> retval = [];
  var url = '$apiEndpoint/attendance_types';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsAttendanceType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
Future<List<PcoCheckInsEventTime>> getEventTimesCurrentEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/current_event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
Future<List<PcoCheckInsEventLabel>> getEventLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventLabel.canInclude;
  List<PcoCheckInsEventLabel> retval = [];
  var url = '$apiEndpoint/event_labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods
Future<List<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
  List<PcoCheckInsEventPeriod> retval = [];
  var url = '$apiEndpoint/event_periods';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventPeriod.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/locations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPersonEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
Future<List<PcoCheckInsPersonEvent>> getPersonEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPersonEvent.canInclude;
  List<PcoCheckInsPersonEvent> retval = [];
  var url = '$apiEndpoint/person_events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPersonEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
