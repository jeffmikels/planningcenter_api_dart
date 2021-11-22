/// This file was generated on 2021-11-22T16:37:08.762376


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
/// possible includes with parameter ?include=a,b
/// @signup_sheets: include associated signup_sheets 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesAvailableSignup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AvailableSignup';
  static const String kTypeId = 'available_signup';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'availablesignup-person-available_signups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups';

  /// possible includes with parameter ?include=a,b
  /// @signup_sheets: include associated signup_sheets 
  static List<String> get canInclude => ['signup_sheets'];

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
  PcoServicesAvailableSignup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesAvailableSignup Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups;
  static Future<List<PcoServicesAvailableSignup>> getManyFromPeopleAndAvailableSignupIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesAvailableSignup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesAvailableSignup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesAvailableSignup Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups;
  static Future<PcoServicesAvailableSignup?> getSingleFromPeopleAndAvailableSignupIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesAvailableSignup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesAvailableSignup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesSignupSheet objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
Future<List<PcoServicesSignupSheet>> getSignupSheets({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
  List<PcoServicesSignupSheet> retval = [];
  var url = '$apiEndpoint/signup_sheets';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSignupSheet.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
