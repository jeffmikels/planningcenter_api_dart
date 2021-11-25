/// This file was generated on 2021-11-25T00:07:20.285586


import '../../pco.dart';

/// This class represents a PCO Services SignupSheetMetadata Object
/// 
/// Application: services
/// Id:          signup_sheet_metadata
/// Type:        SignupSheetMetadata
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A SignupSheetMetadata Resource
/// 
/// Example:
/// 
/// {"type":"SignupSheetMetadata","id":"1","attributes":{"conflicts":{},"time_type":"string","time_name":"string","starts_at":"2000-01-01T12:00:00Z"},"relationships":{"plan_time":{"data":{"type":"PlanTime","id":"1"}}}}
/// 
/// Collection Only: true
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesSignupSheetMetadata extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheetMetadata';
  static const String kTypeId = 'signup_sheet_metadata';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'signupsheetmetadata-signupsheet-signup_sheet_metadata';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';

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
  static const kConflicts = 'conflicts';
  static const kTimeType = 'time_type';
  static const kTimeName = 'time_name';
  static const kStartsAt = 'starts_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get conflicts => attributes[kConflicts] ?? '';
  String get timeType => attributes[kTimeType] ?? '';
  String get timeName => attributes[kTimeName] ?? '';
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');




  PcoServicesSignupSheetMetadata() : super(kPcoApplication, kTypeString);
  PcoServicesSignupSheetMetadata.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSignupSheetMetadata Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata;
  static Future<PcoCollection<PcoServicesSignupSheetMetadata>> getManyFromPeopleAndAvailableSignupAndSignupSheet(String peopleId,String availableSignupId,String signupSheetId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata';
    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadata>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesSignupSheetMetadata Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata;
  static Future<PcoCollection<PcoServicesSignupSheetMetadata>> getSingleFromPeopleAndAvailableSignupAndSignupSheet(String peopleId,String availableSignupId,String signupSheetId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadata>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesSignupSheetMetadata.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
