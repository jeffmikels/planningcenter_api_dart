/// This file was generated on 2021-11-17T23:59:27.207461


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
class PcoCheckInsStation extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Station';
  static const String typeId = 'station';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'station-organization-stations';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCheckInsStation() : super(pcoApplication, typeString);
  PcoCheckInsStation.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at;
  static Future<List<PcoCheckInsStation>> getManyFromCheckInAndCheckedInAtIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsStation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsStation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station;
  static Future<List<PcoCheckInsStation>> getManyFromCheckInAndCheckInGroupAndPrintStationIds(String checkInId,String checkInGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsStation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsStation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations;
  static Future<List<PcoCheckInsStation>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsStation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsStation.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsStation Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station;
  static Future<List<PcoCheckInsStation>> getManyFromStationAndPrintStationIds(String stationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsStation> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/print_station';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsStation.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at;
  static Future<PcoCheckInsStation?> getSingleFromCheckInAndCheckedInAtIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsStation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsStation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station;
  static Future<PcoCheckInsStation?> getSingleFromCheckInAndCheckInGroupAndPrintStationIds(String checkInId,String checkInGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsStation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsStation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations;
  static Future<PcoCheckInsStation?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsStation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsStation.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsStation Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station;
  static Future<PcoCheckInsStation?> getSingleFromStationAndPrintStationIds(String stationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsStation?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/print_station' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsStation.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckInGroup objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
Future<List<PcoCheckInsCheckInGroup>> getCheckInGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckInGroup> retval = [];
  var url = '$apiEndpoint/check_in_groups';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckInGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
Future<List<PcoCheckInsCheckIn>> getCheckInsCheckedInAtCheckIns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/checked_in_at_check_ins';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLocation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
Future<List<PcoCheckInsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
Future<List<PcoCheckInsStation>> getStationsPrintStation({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsStation> retval = [];
  var url = '$apiEndpoint/print_station';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsStation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsTheme objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
Future<List<PcoCheckInsTheme>> getThemes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsTheme> retval = [];
  var url = '$apiEndpoint/theme';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsTheme.fromJson(itemData));
    }
  }
  return retval;
}
    

}
