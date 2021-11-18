/// This file was generated on 2021-11-18T13:57:09.866423


import '../../pco.dart';

/// This class represents a PCO CheckIns Organization Object
/// 
/// Application: check-ins
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2019-07-17
/// 
/// Description:
/// An organization which has people and events.\nThis contains its date format & time zone preferences.\n
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"date_format_pattern":"string","time_zone_olson":"string","name":"string","daily_check_ins":1,"time_zone":"string","avatar_url":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/check-ins/v2
/// 
class PcoCheckInsOrganization extends PcoResource {
  static const String pcoApplication = 'check-ins';
  static const String typeString = 'Organization';
  static const String typeId = 'organization';
  static const String apiVersion = '2019-07-17';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kDateFormatPattern = 'date_format_pattern';
  static const kTimeZoneOlson = 'time_zone_olson';
  static const kName = 'name';
  static const kDailyCheckIns = 'daily_check_ins';
  static const kTimeZone = 'time_zone';
  static const kAvatarUrl = 'avatar_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get dateFormatPattern => attributes[kDateFormatPattern] ?? '';
  String get timeZoneOlson => attributes[kTimeZoneOlson] ?? '';
  String get name => attributes[kName] ?? '';
  int get dailyCheckIns => attributes[kDailyCheckIns] ?? 0;
  String get timeZone => attributes[kTimeZone] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';




  PcoCheckInsOrganization() : super(pcoApplication, typeString);
  PcoCheckInsOrganization.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCheckInsOrganization Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization;
  static Future<List<PcoCheckInsOrganization>> getManyFromPeopleAndOrganizationIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoCheckInsOrganization> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/organization';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsOrganization.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization;
  static Future<PcoCheckInsOrganization?> getSingleFromPeopleAndOrganizationIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCheckInsOrganization?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/check-ins/v2/people/$peopleId/organization' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsOrganization.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins
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
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts
Future<List<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsHeadcount> retval = [];
  var url = '$apiEndpoint/headcounts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsHeadcount.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPas objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes
Future<List<PcoCheckInsPas>> getPasesPasses({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPas> retval = [];
  var url = '$apiEndpoint/passes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPas.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people
Future<List<PcoCheckInsPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations
Future<List<PcoCheckInsStation>> getStations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsStation> retval = [];
  var url = '$apiEndpoint/stations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsStation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsTheme objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/themes
Future<List<PcoCheckInsTheme>> getThemes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCheckInsTheme> retval = [];
  var url = '$apiEndpoint/themes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsTheme.fromJson(itemData));
    }
  }
  return retval;
}
    

}
