/// This file was generated on 2021-11-17T23:59:27.186839


import '../../pco.dart';

/// This class represents a PCO CheckIns CheckInGroup Object
/// 
/// Application: check-ins
/// Id:          check_in_group
/// Type:        CheckInGroup
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// When one or more people check in, they're grouped in a `CheckInGroup`.\nThese check-ins all have the same "checked-in by" person. `CheckInGroup` is also\nthe basis for label printing.\n\n`print_status` may be:\n\n- `ready`: This group isn't printed or canceled yet\n- `printed`: This group was successfully printed at a station\n- `canceled`: This group was canceled at a station\n- `skipped`: This group had no labels to print, so it was never printed.\n
/// 
/// Example:
/// 
/// {"type":"CheckInGroup","id":"1","attributes":{"name_labels_count":1,"security_labels_count":1,"check_ins_count":1,"print_status":"value","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// 
class PcoCheckInsCheckInGroup extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'CheckInGroup';
  static const String typeId = 'check_in_group';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = 'checkingroup-station-check_in_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kNameLabelsCount = 'name_labels_count';
  static const kSecurityLabelsCount = 'security_labels_count';
  static const kCheckInsCount = 'check_ins_count';
  static const kPrintStatus = 'print_status';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get nameLabelsCount => attributes[kNameLabelsCount] ?? 0;
  int get securityLabelsCount => attributes[kSecurityLabelsCount] ?? 0;
  int get checkInsCount => attributes[kCheckInsCount] ?? 0;

  /// Possible values: `not_ready`, `ready`, `printed`, `canceled`, or `skipped`
  String get printStatus => attributes[kPrintStatus] ?? '';




  PcoCheckInsCheckInGroup() : super(pcoApplication, typeString);
  PcoCheckInsCheckInGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsCheckInGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group;
  static Future<List<PcoCheckInsCheckInGroup>> getManyFromCheckInAndCheckInGroupIds(String checkInId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckInGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckInGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckInGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups;
  static Future<List<PcoCheckInsCheckInGroup>> getManyFromStationAndCheckInGroupIds(String stationId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsCheckInGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/check_in_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckInGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsCheckInGroup Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group;
  static Future<PcoCheckInsCheckInGroup?> getSingleFromCheckInAndCheckInGroupIds(String checkInId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckInGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckInGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckInGroup Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups;
  static Future<PcoCheckInsCheckInGroup?> getSingleFromStationAndCheckInGroupIds(String stationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsCheckInGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/stations/$stationId/check_in_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckInGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
Future<List<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsCheckIn> retval = [];
  var url = '$apiEndpoint/check_ins';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsCheckIn.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEventPeriod objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
Future<List<PcoCheckInsEventPeriod>> getEventPeriods({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventPeriod> retval = [];
  var url = '$apiEndpoint/event_period';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventPeriod.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
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
    

}
