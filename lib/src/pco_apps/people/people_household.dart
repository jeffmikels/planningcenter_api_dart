/// This file was generated on 2021-11-17T23:59:27.313932


import '../../pco.dart';

/// This class represents a PCO People Household Object
/// 
/// Application: people
/// Id:          household
/// Type:        Household
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A household links people together and can have a primary contact. To add a person to an existing household, use the HouseholdMemberships endpoint.
/// 
/// Example:
/// 
/// {"type":"Household","id":"1","attributes":{"name":"string","member_count":1,"primary_contact_name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","avatar":"string","primary_contact_id":"primary_key"},"relationships":{"primary_contact":{"data":{"type":"Person","id":"1"}},"people":{"data":[{"type":"Person","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/households
/// 
class PcoPeopleHousehold extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Household';
  static const String typeId = 'household';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'household-organization-households';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/households';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kMemberCount = 'member_count';
  static const kPrimaryContactName = 'primary_contact_name';
  static const kAvatar = 'avatar';
  static const kPrimaryContactId = 'primary_contact_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','member_count','avatar','primary_contact_id'];
  @override
  List<String> get updateAllowed => ['name','member_count','avatar','primary_contact_id'];

  String get name => attributes[kName] ?? '';
  int get memberCount => attributes[kMemberCount] ?? 0;
  String get primaryContactName => attributes[kPrimaryContactName] ?? '';
  String get avatar => attributes[kAvatar] ?? '';
  String get primaryContactId => attributes[kPrimaryContactId] ?? '';


  set name(String s) => attributes[kName] = s;
  set memberCount(int n) => attributes[kMemberCount] = n;
  set avatar(String s) => attributes[kAvatar] = s;
  set primaryContactId(String s) => attributes[kPrimaryContactId] = s;


  PcoPeopleHousehold() : super(pcoApplication, typeString);
  PcoPeopleHousehold.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household;
  static Future<List<PcoPeopleHousehold>> getManyFromHouseholdAndHouseholdMembershipAndHouseholdIds(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households;
  static Future<List<PcoPeopleHousehold>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household;
  static Future<List<PcoPeopleHousehold>> getManyFromPeopleImportAndHistoryAndHouseholdIds(String peopleImportId,String historyId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/household';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households;
  static Future<List<PcoPeopleHousehold>> getManyFromPeopleAndHouseholdIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/households';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household;
  static Future<PcoPeopleHousehold?> getSingleFromHouseholdAndHouseholdMembershipAndHouseholdIds(String householdId,String householdMembershipId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households;
  static Future<PcoPeopleHousehold?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/households' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household;
  static Future<PcoPeopleHousehold?> getSingleFromPeopleImportAndHistoryAndHouseholdIds(String peopleImportId,String historyId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/household' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households;
  static Future<PcoPeopleHousehold?> getSingleFromPeopleAndHouseholdIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/households' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleHouseholdMembership objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
Future<List<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleHouseholdMembership> retval = [];
  var url = '$apiEndpoint/household_memberships';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHouseholdMembership.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people
Future<List<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
