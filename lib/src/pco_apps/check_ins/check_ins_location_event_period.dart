/// This file was generated on 2021-11-22T16:57:41.362410


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
/// possible includes with parameter ?include=a,b
/// @event_period: include associated event_period 
/// @location: include associated location 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsLocationEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventPeriod';
  static const String kTypeId = 'location_event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'locationeventperiod-location-location_event_periods';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods';

  /// possible includes with parameter ?include=a,b
  /// @event_period: include associated event_period 
  /// @location: include associated location 
  static List<String> get canInclude => ['event_period','location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoCheckInsLocationEventPeriod.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsLocationEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods;
  static Future<List<PcoCheckInsLocationEventPeriod>> getManyFromCheckInAndEventPeriodAndLocationEventPeriodIds(String checkInId,String eventPeriodId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocationEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsLocationEventPeriod Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods;
  static Future<List<PcoCheckInsLocationEventPeriod>> getManyFromCheckInAndLocationAndLocationEventPeriodIds(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsLocationEventPeriod> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsLocationEventPeriod.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsLocationEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods;
  static Future<PcoCheckInsLocationEventPeriod?> getSingleFromCheckInAndEventPeriodAndLocationEventPeriodIds(String checkInId,String eventPeriodId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocationEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationEventPeriod.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsLocationEventPeriod Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods;
  static Future<PcoCheckInsLocationEventPeriod?> getSingleFromCheckInAndLocationAndLocationEventPeriodIds(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsLocationEventPeriod?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventPeriod.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsLocationEventPeriod.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
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
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period
Future<List<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
  List<PcoCheckInsEventPeriod> retval = [];
  var url = '$apiEndpoint/event_period';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventPeriod.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
