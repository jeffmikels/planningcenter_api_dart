/// This file was generated on 2021-11-25T00:07:20.353260


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
  static Future<PcoCollection<PcoCheckInsOrganization>> getManyFromPeople(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    var url = '/check-ins/v2/people/$peopleId/organization';
    return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCheckInsOrganization Object
  /// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people/1/organization;
  static Future<PcoCollection<PcoCheckInsOrganization>> getSingleFromPeople(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    var url = '/check-ins/v2/people/$peopleId/organization' + '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCheckInsOrganization.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCheckInsCheckIn objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/check_ins
Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
  var url = '$apiEndpoint/check_ins';
  return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEventTime objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/event_times
Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
  var url = '$apiEndpoint/event_times';
  return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsEvent objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/events
Future<PcoCollection<PcoCheckInsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoCheckInsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsHeadcount objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/headcounts
Future<PcoCollection<PcoCheckInsHeadcount>> getHeadcounts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
  var url = '$apiEndpoint/headcounts';
  return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsLabel objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/labels
Future<PcoCollection<PcoCheckInsLabel>> getLabels({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
  var url = '$apiEndpoint/labels';
  return PcoCollection.fromApiCall<PcoCheckInsLabel>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPas objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/passes
Future<PcoCollection<PcoCheckInsPas>> getPasesPasses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPas.canInclude;
  var url = '$apiEndpoint/passes';
  return PcoCollection.fromApiCall<PcoCheckInsPas>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsPerson objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/people
Future<PcoCollection<PcoCheckInsPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoCheckInsPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsStation objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/stations
Future<PcoCollection<PcoCheckInsStation>> getStations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsStation.canInclude;
  var url = '$apiEndpoint/stations';
  return PcoCollection.fromApiCall<PcoCheckInsStation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCheckInsTheme objects
/// using a path like this: https://api.planningcenteronline.com/check-ins/v2/themes
Future<PcoCollection<PcoCheckInsTheme>> getThemes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
  var url = '$apiEndpoint/themes';
  return PcoCollection.fromApiCall<PcoCheckInsTheme>(url, query: query, apiVersion:apiVersion);
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
