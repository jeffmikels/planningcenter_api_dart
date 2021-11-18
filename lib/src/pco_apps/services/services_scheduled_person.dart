/// This file was generated on 2021-11-17T23:59:27.134991


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
class PcoServicesScheduledPerson extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'ScheduledPerson';
  static const String typeId = 'scheduled_person';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'scheduledperson-signupsheet-scheduled_people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesScheduledPerson() : super(pcoApplication, typeString);
  PcoServicesScheduledPerson.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesScheduledPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people;
  static Future<List<PcoServicesScheduledPerson>> getManyFromPeopleAndAvailableSignupAndSignupSheetAndScheduledPeopleIds(String peopleId,String availableSignupId,String signupSheetId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesScheduledPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesScheduledPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesScheduledPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/scheduled_people;
  static Future<PcoServicesScheduledPerson?> getSingleFromPeopleAndAvailableSignupAndSignupSheetAndScheduledPeopleIds(String peopleId,String availableSignupId,String signupSheetId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesScheduledPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/scheduled_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesScheduledPerson.fromJson(res.data);
    }
    return retval;
  }




}
