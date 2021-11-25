/// This file was generated on 2021-11-25T00:07:20.351029


import '../../pco.dart';

/// This class represents a PCO CheckIns LocationEventTime Object
/// 
/// Application: check-ins
/// Id:          location_event_time
/// Type:        LocationEventTime
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// Counts check-ins for a location for a given event time.\nThis is useful for checking occupancy.\n
/// 
/// Example:
/// 
/// {"type":"LocationEventTime","id":"1","attributes":{"regular_count":1,"guest_count":1,"volunteer_count":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// 
/// possible includes with parameter ?include=a,b
/// @event_time: include associated event_time 
/// @location: include associated location 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=

///
class PcoCheckInsLocationEventTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventTime';
  static const String kTypeId = 'location_event_time';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'locationeventtime-eventtime-location_event_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times';

  /// possible includes with parameter ?include=a,b
  /// @event_time: include associated event_time 
  /// @location: include associated location 
  static List<String> get canInclude => ['event_time','location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

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




  PcoCheckInsLocationEventTime() : super(kPcoApplication, kTypeString);
  PcoCheckInsLocationEventTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsLocationEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times;
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getManyFromEventTimeAndLocationEventTime(String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsLocationEventTime Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times;
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getManyFromCheckInAndLocationAndLocationEventTime(String checkInId,String locationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsLocationEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times;
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getSingleFromEventTimeAndLocationEventTime(String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsLocationEventTime.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsLocationEventTime Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times;
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getSingleFromCheckInAndLocationAndLocationEventTime(String checkInId,String locationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsLocationEventTime.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsLocationEventTime.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time
Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  var url = '$apiEndpoint/event_time';
  return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location
Future<PcoCollection<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  var url = '$apiEndpoint/location';
  return PcoCollection.fromApiCall<PcoCheckInsLocation>(url, query: query, apiVersion:apiVersion);
}
    


}
