/// This file was generated on 2021-11-22T16:57:41.390024


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCheckInsOrganization extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2019-07-17';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

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




  PcoCheckInsOrganization() : super(kPcoApplication, kTypeString);
  PcoCheckInsOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCheckInsOrganization Objects
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization;
  static Future<List<PcoCheckInsOrganization>> getManyFromPeopleAndOrganizationIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCheckInsOrganization> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    var url = '/check-ins/v2/people/$peopleId/organization';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCheckInsOrganization.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCheckInsOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization;
  static Future<PcoCheckInsOrganization?> getSingleFromPeopleAndOrganizationIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCheckInsOrganization?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    var url = '/check-ins/v2/people/$peopleId/organization' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCheckInsOrganization.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins
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
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times
Future<List<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  List<PcoCheckInsEventTime> retval = [];
  var url = '$apiEndpoint/event_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEventTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events
Future<List<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  List<PcoCheckInsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts
Future<List<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
  List<PcoCheckInsHeadcount> retval = [];
  var url = '$apiEndpoint/headcounts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsHeadcount.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels
Future<List<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
  List<PcoCheckInsLabel> retval = [];
  var url = '$apiEndpoint/labels';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsLabel.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPas objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes
Future<List<PcoCheckInsPas>> getPasesPasses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPas.canInclude;
  List<PcoCheckInsPas> retval = [];
  var url = '$apiEndpoint/passes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPas.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people
Future<List<PcoCheckInsPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  List<PcoCheckInsPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations
Future<List<PcoCheckInsStation>> getStations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsStation.canInclude;
  List<PcoCheckInsStation> retval = [];
  var url = '$apiEndpoint/stations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsStation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCheckInsTheme objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/themes
Future<List<PcoCheckInsTheme>> getThemes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
  List<PcoCheckInsTheme> retval = [];
  var url = '$apiEndpoint/themes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCheckInsTheme.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: build_check_in_times_for_prepared_check_in
/// 
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> buildCheckInTimesForPreparedCheckIn(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/v2';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: build_recommended_check_in_times
/// 
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> buildRecommendedCheckInTimes(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/v2';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: bulk_check_in
/// 
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> bulkCheckIn(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/v2';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
