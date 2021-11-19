/// This file was generated on 2021-11-19T12:10:42.242339


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
/// possible includes with parameter ?include=a,b
/// @check_ins: include associated check_ins 
/// @event_period: include associated event_period 
/// @print_station: include associated print_station 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsCheckInGroup extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInGroup';
  static const String kTypeId = 'check_in_group';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = 'checkingroup-station-check_in_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups';

  /// possible includes with parameter ?include=a,b
  /// @check_ins: include associated check_ins 
  /// @event_period: include associated event_period 
  /// @print_station: include associated print_station 
  static List<String> get canInclude => ['check_ins','event_period','print_station'];

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




  PcoCheckInsCheckInGroup() : super(kPcoApplication, kTypeString);
  PcoCheckInsCheckInGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsCheckInGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group;
  static Future<List<PcoCheckInsCheckInGroup>> getManyFromCheckInAndCheckInGroupIds(String checkInId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsCheckInGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckInGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCheckInsCheckInGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups;
  static Future<List<PcoCheckInsCheckInGroup>> getManyFromStationAndCheckInGroupIds(String stationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsCheckInGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/stations/$stationId/check_in_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsCheckInGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsCheckInGroup Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group;
  static Future<PcoCheckInsCheckInGroup?> getSingleFromCheckInAndCheckInGroupIds(String checkInId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsCheckInGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/check_ins/$checkInId/check_in_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckInGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCheckInsCheckInGroup Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups;
  static Future<PcoCheckInsCheckInGroup?> getSingleFromStationAndCheckInGroupIds(String stationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsCheckInGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    var url = '/check-ins/v2/stations/$stationId/check_in_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsCheckInGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
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
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
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
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
Future<List<PcoCheckInsStation>> getStationsPrintStation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsStation.canInclude;
  List<PcoCheckInsStation> retval = [];
  var url = '$apiEndpoint/print_station';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsStation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
