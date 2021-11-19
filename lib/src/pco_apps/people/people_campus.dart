/// This file was generated on 2021-11-19T12:10:42.494438


import '../../pco.dart';

/// This class represents a PCO People Campus Object
/// 
/// Application: people
/// Id:          campus
/// Type:        Campus
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Campus is a location belonging to an Organization
/// 
/// Example:
/// 
/// {"type":"Campus","id":"1","attributes":{"latitude":1.42,"longitude":1.42,"description":"string","street":"string","city":"string","state":"string","zip":"string","country":"string","phone_number":"string","website":"string","twenty_four_hour_time":true,"date_format":1,"church_center_enabled":true,"contact_email_address":"string","time_zone":"string","geolocation_set_manually":true,"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","avatar_url":"string"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/campuses
/// 
/// possible includes with parameter ?include=a,b
/// @lists: include associated lists 
/// @service_times: include associated service_times 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleCampus extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'campus-organization-campuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses';

  /// possible includes with parameter ?include=a,b
  /// @lists: include associated lists 
  /// @service_times: include associated service_times 
  static List<String> get canInclude => ['lists','service_times'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kDescription = 'description';
  static const kStreet = 'street';
  static const kCity = 'city';
  static const kState = 'state';
  static const kZip = 'zip';
  static const kCountry = 'country';
  static const kPhoneNumber = 'phone_number';
  static const kWebsite = 'website';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kDateFormat = 'date_format';
  static const kChurchCenterEnabled = 'church_center_enabled';
  static const kContactEmailAddress = 'contact_email_address';
  static const kTimeZone = 'time_zone';
  static const kGeolocationSetManually = 'geolocation_set_manually';
  static const kName = 'name';
  static const kAvatarUrl = 'avatar_url';


  // getters and setters
  @override
  List<String> get createAllowed => ['latitude','longitude','description','street','city','state','zip','country','phone_number','website','twenty_four_hour_time','date_format','church_center_enabled','contact_email_address','time_zone','geolocation_set_manually','name'];
  @override
  List<String> get updateAllowed => ['latitude','longitude','description','street','city','state','zip','country','phone_number','website','twenty_four_hour_time','date_format','church_center_enabled','contact_email_address','time_zone','geolocation_set_manually','name'];

  double get latitude => attributes[kLatitude] ?? 0;
  double get longitude => attributes[kLongitude] ?? 0;
  String get description => attributes[kDescription] ?? '';
  String get street => attributes[kStreet] ?? '';
  String get city => attributes[kCity] ?? '';
  String get state => attributes[kState] ?? '';
  String get zip => attributes[kZip] ?? '';
  String get country => attributes[kCountry] ?? '';
  String get phoneNumber => attributes[kPhoneNumber] ?? '';
  String get website => attributes[kWebsite] ?? '';
  bool get isTwentyFourHourTime => attributes[kTwentyFourHourTime] == true;
  int get dateFormat => attributes[kDateFormat] ?? 0;
  bool get isChurchCenterEnabled => attributes[kChurchCenterEnabled] == true;
  String get contactEmailAddress => attributes[kContactEmailAddress] ?? '';
  String get timeZone => attributes[kTimeZone] ?? '';
  bool get isGeolocationSetManually => attributes[kGeolocationSetManually] == true;
  String get name => attributes[kName] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';


  set latitude(double n) => attributes[kLatitude] = n;
  set longitude(double n) => attributes[kLongitude] = n;
  set description(String s) => attributes[kDescription] = s;
  set street(String s) => attributes[kStreet] = s;
  set city(String s) => attributes[kCity] = s;
  set state(String s) => attributes[kState] = s;
  set zip(String s) => attributes[kZip] = s;
  set country(String s) => attributes[kCountry] = s;
  set phoneNumber(String s) => attributes[kPhoneNumber] = s;
  set website(String s) => attributes[kWebsite] = s;
  set isTwentyFourHourTime(bool b) => attributes[kTwentyFourHourTime] = b;
  set dateFormat(int n) => attributes[kDateFormat] = n;
  set isChurchCenterEnabled(bool b) => attributes[kChurchCenterEnabled] = b;
  set contactEmailAddress(String s) => attributes[kContactEmailAddress] = s;
  set timeZone(String s) => attributes[kTimeZone] = s;
  set isGeolocationSetManually(bool b) => attributes[kGeolocationSetManually] = b;
  set name(String s) => attributes[kName] = s;


  PcoPeopleCampus() : super(kPcoApplication, kTypeString);
  PcoPeopleCampus.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/campus;
  static Future<List<PcoPeopleCampus>> getManyFromFormAndCampusIds(String formId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/forms/$formId/campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/campus;
  static Future<List<PcoPeopleCampus>> getManyFromListAndCampusIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/lists/$listId/campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses;
  static Future<List<PcoPeopleCampus>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/campuses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/primary_campus;
  static Future<List<PcoPeopleCampus>> getManyFromPeopleAndPrimaryCampusIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/people/$peopleId/primary_campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleCampus Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/campus;
  static Future<PcoPeopleCampus?> getSingleFromFormAndCampusIds(String formId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/forms/$formId/campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleCampus Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/campus;
  static Future<PcoPeopleCampus?> getSingleFromListAndCampusIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/lists/$listId/campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleCampus Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses;
  static Future<PcoPeopleCampus?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/campuses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleCampus Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/primary_campus;
  static Future<PcoPeopleCampus?> getSingleFromPeopleAndPrimaryCampusIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCampus.canInclude;
    var url = '/people/v2/people/$peopleId/primary_campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/lists
Future<List<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleList.canInclude;
  List<PcoPeopleList> retval = [];
  var url = '$apiEndpoint/lists';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleList.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleServiceTime objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
Future<List<PcoPeopleServiceTime>> getServiceTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
  List<PcoPeopleServiceTime> retval = [];
  var url = '$apiEndpoint/service_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleServiceTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
