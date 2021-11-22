/// This file was generated on 2021-11-22T16:37:08.838582


import '../../pco.dart';

/// This class represents a PCO Services SignupSheet Object
/// 
/// Application: services
/// Id:          signup_sheet
/// Type:        SignupSheet
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Available positions to sign up for
/// 
/// Example:
/// 
/// {"type":"SignupSheet","id":"1","attributes":{"sort_date":"2000-01-01T12:00:00Z","group_key":"string","team_name":"string","display_times":"string","position_name":"string","title":"string","sort_index":1},"relationships":{"plan":{"data":{"type":"Plan","id":"1"}},"team_position":{"data":{"type":"TeamPosition","id":"1"}},"team":{"data":{"type":"Team","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
/// 
/// possible includes with parameter ?include=a,b
/// @scheduled_people: include associated scheduled_people 
/// @signup_sheet_metadata: include associated signup_sheet_metadata 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesSignupSheet extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheet';
  static const String kTypeId = 'signup_sheet';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'signupsheet-availablesignup-signup_sheets';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets';

  /// possible includes with parameter ?include=a,b
  /// @scheduled_people: include associated scheduled_people 
  /// @signup_sheet_metadata: include associated signup_sheet_metadata 
  static List<String> get canInclude => ['scheduled_people','signup_sheet_metadata'];

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
  static const kSortDate = 'sort_date';
  static const kGroupKey = 'group_key';
  static const kTeamName = 'team_name';
  static const kDisplayTimes = 'display_times';
  static const kPositionName = 'position_name';
  static const kTitle = 'title';
  static const kSortIndex = 'sort_index';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  String get groupKey => attributes[kGroupKey] ?? '';
  String get teamName => attributes[kTeamName] ?? '';
  String get displayTimes => attributes[kDisplayTimes] ?? '';
  String get positionName => attributes[kPositionName] ?? '';
  String get title => attributes[kTitle] ?? '';
  int get sortIndex => attributes[kSortIndex] ?? 0;




  PcoServicesSignupSheet() : super(kPcoApplication, kTypeString);
  PcoServicesSignupSheet.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSignupSheet Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets;
  static Future<List<PcoServicesSignupSheet>> getManyFromPeopleAndAvailableSignupAndSignupSheetIds(String peopleId,String availableSignupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSignupSheet> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSignupSheet.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSignupSheet Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets;
  static Future<PcoServicesSignupSheet?> getSingleFromPeopleAndAvailableSignupAndSignupSheetIds(String peopleId,String availableSignupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSignupSheet?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSignupSheet.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesScheduledPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
Future<List<PcoServicesScheduledPerson>> getScheduledPersonsScheduledPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
  List<PcoServicesScheduledPerson> retval = [];
  var url = '$apiEndpoint/scheduled_people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesScheduledPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSignupSheetMetadata objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
Future<List<PcoServicesSignupSheetMetadata>> getSignupSheetMetadatas({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
  List<PcoServicesSignupSheetMetadata> retval = [];
  var url = '$apiEndpoint/signup_sheet_metadata';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSignupSheetMetadata.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// Accept a signup sheet
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/accept
/// 
/// Details:
/// 
Future<PlanningCenterApiResponse> accept(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/accept';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
