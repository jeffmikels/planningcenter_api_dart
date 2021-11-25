/// This file was generated on 2021-11-25T00:07:20.356242


import '../../pco.dart';

/// This class represents a PCO CheckIns Station Object
/// 
/// Application: check-ins
/// Id:          station
/// Type:        Station
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// A device where people can be checked in.\nA device may also be connected to a printer\nand print labels for itself or other stations.\n
/// 
/// Example:
/// 
/// {"type":"Station","id":"1","attributes":{"online":true,"mode":1,"name":"string","timeout_seconds":1,"input_type":"value","input_type_options":"value","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/stations
/// 
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
/// @location: include associated location 
/// @print_station: include associated print_station 
/// @theme: include associated theme 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsStation extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Station';
  static const String kTypeId = 'station';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'station-organization-stations';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  /// @location: include associated location 
  /// @print_station: include associated print_station 
  /// @theme: include associated theme 
  static List<String> get canInclude => ['event','location','print_station','theme'];

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
  static const kOnline = 'online';
  static const kMode = 'mode';
  static const kName = 'name';
  static const kTimeoutSeconds = 'timeout_seconds';
  static const kInputType = 'input_type';
  static const kInputTypeOptions = 'input_type_options';
  static const kCheckInCount = 'check_in_count';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isOnline => attributes[kOnline] == true;
  int get mode => attributes[kMode] ?? 0;
  String get name => attributes[kName] ?? '';
  int get timeoutSeconds => attributes[kTimeoutSeconds] ?? 0;

  /// Possible values: `scanner` or `keypad`
  String get inputType => attributes[kInputType] ?? '';

  /// Possible values: `all_input_types`, `only_keypad`, or `only_scanner`
  String get inputTypeOptions => attributes[kInputTypeOptions] ?? '';

  /// Only available when requested with the `?fields` param
  int get checkInCount => attributes[kCheckInCount] ?? 0;




  PcoCheckInsStation() : super(kPcoApplication, kTypeString);
  PcoCheckInsStation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at;
  static Future<PcoCollection<PcoCheckInsStation>> getManyFromCheckInAndCheckedInAt(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station;
  static Future<PcoCollection<PcoCheckInsStation>> getManyFromCheckInAndCheckInGroupAndPrintStation(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations;
  static Future<PcoCollection<PcoCheckInsStation>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station;
  static Future<PcoCollection<PcoCheckInsStation>> getManyFromStationAndPrintStation(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations/$stationId/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at;
  static Future<PcoCollection<PcoCheckInsStation>> getSingleFromCheckInAndCheckedInAt(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsStation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station;
  static Future<PcoCollection<PcoCheckInsStation>> getSingleFromCheckInAndCheckInGroupAndPrintStation(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsStation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations;
  static Future<PcoCollection<PcoCheckInsStation>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsStation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station;
  static Future<PcoCollection<PcoCheckInsStation>> getSingleFromStationAndPrintStation(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    var url = '/check-ins/v2/stations/$stationId/print_station' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsStation.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckInGroup objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
  var url = '$apiEndpoint/check_in_groups';
  return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckInsCheckedInAtCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/checked_in_at_check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
Future<PcoCollection<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  var url = '$apiEndpoint/event';
  return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
Future<PcoCollection<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
  var url = '$apiEndpoint/location';
  return PcoCollection.fromApiCall<PcoCheckInsLocation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
Future<PcoCollection<PcoCheckInsStation>> getStationsPrintStation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsStation.canInclude;
  var url = '$apiEndpoint/print_station';
  return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsTheme objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
Future<PcoCollection<PcoCheckInsTheme>> getThemes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
  var url = '$apiEndpoint/theme';
  return PcoCollection.fromApiCall<PcoCheckInsTheme>(url, query: query, apiVersion:apiVersion);
}
    


}
