/// This file was generated on 2021-11-22T16:37:08.831513


import '../../pco.dart';

/// This class represents a PCO Services ScheduledPerson Object
/// 
/// Application: services
/// Id:          scheduled_person
/// Type:        ScheduledPerson
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A person already scheduled to a SignupSheet
/// 
/// Example:
/// 
/// {"type":"ScheduledPerson","id":"1","attributes":{"full_name":"string","status":"string","thumbnail":"string"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"signup_sheet":{"data":{"type":"SignupSheet","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesScheduledPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ScheduledPerson';
  static const String kTypeId = 'scheduled_person';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'scheduledperson-signupsheet-scheduled_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';

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
  static const kFullName = 'full_name';
  static const kStatus = 'status';
  static const kThumbnail = 'thumbnail';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get fullName => attributes[kFullName] ?? '';
  String get status => attributes[kStatus] ?? '';
  String get thumbnail => attributes[kThumbnail] ?? '';




  PcoServicesScheduledPerson() : super(kPcoApplication, kTypeString);
  PcoServicesScheduledPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesScheduledPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people;
  static Future<List<PcoServicesScheduledPerson>> getManyFromPeopleAndAvailableSignupAndSignupSheetAndScheduledPeopleIds(String peopleId,String availableSignupId,String signupSheetId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesScheduledPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesScheduledPerson.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesScheduledPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people;
  static Future<PcoServicesScheduledPerson?> getSingleFromPeopleAndAvailableSignupAndSignupSheetAndScheduledPeopleIds(String peopleId,String availableSignupId,String signupSheetId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesScheduledPerson?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesScheduledPerson.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesScheduledPerson.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
