/// This file was generated on 2021-11-18T15:28:01.681733


import '../../pco.dart';

/// This class represents a PCO Services AvailableSignup Object
/// 
/// Application: services
/// Id:          available_signup
/// Type:        AvailableSignup
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Signups that are available.
/// 
/// Example:
/// 
/// {"type":"AvailableSignup","id":"1","attributes":{"organization_name":"string","planning_center_url":"string","service_type_name":"string","signups_available":true},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}},"person":{"data":{"type":"Person","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// 
class PcoServicesAvailableSignup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AvailableSignup';
  static const String kTypeId = 'available_signup';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'availablesignup-person-available_signups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kOrganizationName = 'organization_name';
  static const kPlanningCenterUrl = 'planning_center_url';
  static const kServiceTypeName = 'service_type_name';
  static const kSignupsAvailable = 'signups_available';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get organizationName => attributes[kOrganizationName] ?? '';
  String get planningCenterUrl => attributes[kPlanningCenterUrl] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  bool get isSignupsAvailable => attributes[kSignupsAvailable] == true;




  PcoServicesAvailableSignup() : super(kPcoApplication, kTypeString);
  PcoServicesAvailableSignup.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesAvailableSignup Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups;
  static Future<List<PcoServicesAvailableSignup>> getManyFromPeopleAndAvailableSignupIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesAvailableSignup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAvailableSignup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesAvailableSignup Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups;
  static Future<PcoServicesAvailableSignup?> getSingleFromPeopleAndAvailableSignupIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesAvailableSignup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAvailableSignup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesSignupSheet objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
Future<List<PcoServicesSignupSheet>> getSignupSheets({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesSignupSheet> retval = [];
  var url = '$apiEndpoint/signup_sheets';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSignupSheet.fromJson(itemData));
    }
  }
  return retval;
}
    

}
