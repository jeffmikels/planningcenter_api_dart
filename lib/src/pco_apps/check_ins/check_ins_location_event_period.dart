/// This file was generated on 2021-11-18T15:28:01.846665


import '../../pco.dart';

/// This class represents a PCO CheckIns LocationEventPeriod Object
/// 
/// Application: check-ins
/// Id:          location_event_period
/// Type:        LocationEventPeriod
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Counts check-ins for a location during a certain event period.\n
/// 
/// Example:
/// 
/// {"type":"LocationEventPeriod","id":"1","attributes":{"regular_count":1,"guest_count":1,"volunteer_count":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
/// 
class PcoCheckInsLocationEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventPeriod';
  static const String kTypeId = 'location_event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'locationeventperiod-location-location_event_periods';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get regularCount => attributes[kRegularCount] ?? 0;
  int get guestCount => attributes[kGuestCount] ?? 0;
  int get volunteerCount => attributes[kVolunteerCount] ?? 0;




  PcoCheckInsLocationEventPeriod() : super(kPcoApplication, kTypeString);
  PcoCheckInsLocationEventPeriod.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoCheckInsLocationEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods;
  static Future<List<PcoCheckInsLocationEventPeriod>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodIds(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocationEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocationEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods;
  static Future<List<PcoCheckInsLocationEventPeriod>> getManyFromCheckInAndLocationAndLocationEventPeriodIds(String checkInId,String locationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsLocationEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLocationEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods;
  static Future<PcoCheckInsLocationEventPeriod?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodIds(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocationEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationEventPeriod.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocationEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods;
  static Future<PcoCheckInsLocationEventPeriod?> getSingleFromCheckInAndLocationAndLocationEventPeriodIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsLocationEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationEventPeriod.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
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
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period
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
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
