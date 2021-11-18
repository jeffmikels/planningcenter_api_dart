/// This file was generated on 2021-11-18T15:28:02.032592


import '../../pco.dart';

/// This class represents a PCO People Email Object
/// 
/// Application: people
/// Id:          email
/// Type:        Email
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// An email represents an email address and location.
/// 
/// Example:
/// 
/// {"type":"Email","id":"1","attributes":{"address":"string","location":"string","primary":true,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","blocked":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/emails
/// 
class PcoPeopleEmail extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Email';
  static const String kTypeId = 'email';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'email-organization-emails';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/emails';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kAddress = 'address';
  static const kLocation = 'location';
  static const kPrimary = 'primary';
  static const kBlocked = 'blocked';


  // getters and setters
  @override
  List<String> get createAllowed => ['address','location','primary'];
  @override
  List<String> get updateAllowed => ['address','location','primary'];

  String get address => attributes[kAddress] ?? '';
  String get location => attributes[kLocation] ?? '';
  bool get isPrimary => attributes[kPrimary] == true;
  bool get isBlocked => attributes[kBlocked] == true;


  set address(String s) => attributes[kAddress] = s;
  set location(String s) => attributes[kLocation] = s;
  set isPrimary(bool b) => attributes[kPrimary] = b;


  PcoPeopleEmail() : super(kPcoApplication, kTypeString);
  PcoPeopleEmail.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleEmail Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails;
  static Future<List<PcoPeopleEmail>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleEmail> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/emails';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleEmail.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleEmail Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails;
  static Future<List<PcoPeopleEmail>> getManyFromPeopleAndEmailIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleEmail> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/emails';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleEmail.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleEmail Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/emails;
  static Future<PcoPeopleEmail?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleEmail?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/emails' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleEmail.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleEmail Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/emails;
  static Future<PcoPeopleEmail?> getSingleFromPeopleAndEmailIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleEmail?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/emails' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleEmail.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/emails/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
