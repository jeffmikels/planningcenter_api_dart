/// This file was generated on 2021-11-18T13:57:09.752583


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
class PcoServicesSignupSheetMetadata extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'SignupSheetMetadata';
  static const String typeId = 'signup_sheet_metadata';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'signupsheetmetadata-signupsheet-signup_sheet_metadata';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesSignupSheetMetadata() : super(pcoApplication, typeString);
  PcoServicesSignupSheetMetadata.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSignupSheetMetadata Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata;
  static Future<List<PcoServicesSignupSheetMetadata>> getManyFromPeopleAndAvailableSignupAndSignupSheetAndSignupSheetMetadataIds(String peopleId,String availableSignupId,String signupSheetId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSignupSheetMetadata> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSignupSheetMetadata.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSignupSheetMetadata Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata;
  static Future<PcoServicesSignupSheetMetadata?> getSingleFromPeopleAndAvailableSignupAndSignupSheetAndSignupSheetMetadataIds(String peopleId,String availableSignupId,String signupSheetId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSignupSheetMetadata?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSignupSheetMetadata.fromJson(res.data);
    }
    return retval;
  }




}
