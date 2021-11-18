/// This file was generated on 2021-11-18T15:28:02.031653


import '../../pco.dart';

/// This class represents a PCO People ConnectedPerson Object
/// 
/// Application: people
/// Id:          connected_person
/// Type:        ConnectedPerson
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Connected Person is an account from a different organization linked to an account in this organization.
/// 
/// Example:
/// 
/// {"type":"ConnectedPerson","id":"1","attributes":{"given_name":"string","first_name":"string","nickname":"string","middle_name":"string","last_name":"string","gender":"string","organization_name":"string","organization_id":"primary_key"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/connected_people
/// 
class PcoPeopleConnectedPerson extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ConnectedPerson';
  static const String kTypeId = 'connected_person';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'connectedperson-person-connected_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/connected_people';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kGivenName = 'given_name';
  static const kFirstName = 'first_name';
  static const kNickname = 'nickname';
  static const kMiddleName = 'middle_name';
  static const kLastName = 'last_name';
  static const kGender = 'gender';
  static const kOrganizationName = 'organization_name';
  static const kOrganizationId = 'organization_id';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get givenName => attributes[kGivenName] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  String get nickname => attributes[kNickname] ?? '';
  String get middleName => attributes[kMiddleName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  String get gender => attributes[kGender] ?? '';
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get organizationId => attributes[kOrganizationId] ?? '';




  PcoPeopleConnectedPerson() : super(kPcoApplication, kTypeString);
  PcoPeopleConnectedPerson.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleConnectedPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/connected_people;
  static Future<List<PcoPeopleConnectedPerson>> getManyFromPeopleAndConnectedPeopleIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleConnectedPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/connected_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleConnectedPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleConnectedPerson Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/connected_people;
  static Future<PcoPeopleConnectedPerson?> getSingleFromPeopleAndConnectedPeopleIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleConnectedPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/connected_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleConnectedPerson.fromJson(res.data);
    }
    return retval;
  }




}
