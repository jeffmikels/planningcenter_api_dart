/// This file was generated on 2021-11-18T13:57:09.983671


import '../../pco.dart';

/// This class represents a PCO People HouseholdMembership Object
/// 
/// Application: people
/// Id:          household_membership
/// Type:        HouseholdMembership
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A household membership is the linking record between a household and a person.
/// 
/// Example:
/// 
/// {"type":"HouseholdMembership","id":"1","attributes":{"person_name":"string","pending":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
/// 
class PcoPeopleHouseholdMembership extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'HouseholdMembership';
  static const String typeId = 'household_membership';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'householdmembership-person-household_memberships';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/household_memberships';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kPersonName = 'person_name';
  static const kPending = 'pending';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','pending'];
  @override
  List<String> get updateAllowed => ['person_id','pending'];

  String get personName => attributes[kPersonName] ?? '';

  /// False when a person's memership in a household is unverified.
  bool get isPending => attributes[kPending] == true;



  /// False when a person's memership in a household is unverified.
  set isPending(bool b) => attributes[kPending] = b;


  PcoPeopleHouseholdMembership() : super(pcoApplication, typeString);
  PcoPeopleHouseholdMembership.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleHouseholdMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships;
  static Future<List<PcoPeopleHouseholdMembership>> getManyFromHouseholdAndHouseholdMembershipIds(String householdId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHouseholdMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHouseholdMembership.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHouseholdMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships;
  static Future<List<PcoPeopleHouseholdMembership>> getManyFromPeopleAndHouseholdMembershipIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHouseholdMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/household_memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHouseholdMembership.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleHouseholdMembership Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships;
  static Future<PcoPeopleHouseholdMembership?> getSingleFromHouseholdAndHouseholdMembershipIds(String householdId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHouseholdMembership?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHouseholdMembership.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleHouseholdMembership Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships;
  static Future<PcoPeopleHouseholdMembership?> getSingleFromPeopleAndHouseholdMembershipIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHouseholdMembership?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/household_memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHouseholdMembership.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/household';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
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
