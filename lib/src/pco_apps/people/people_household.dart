/// This file was generated on 2021-11-22T16:37:09.104429


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
/// possible includes with parameter ?include=a,b
/// @people: include associated people 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @member_count (URLParameter), query on a specific member_count, example: ?where[member_count]=1
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @primary_contact_name (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @member_count (URLParameter), prefix with a hyphen (-member_count) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @primary_contact_name (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleHousehold extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Household';
  static const String kTypeId = 'household';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'household-organization-households';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/households';

  /// possible includes with parameter ?include=a,b
  /// @people: include associated people 
  static List<String> get canInclude => ['people'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @member_count (URLParameter), query on a specific member_count, example: ?where[member_count]=1
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @primary_contact_name (URLParameter), query on a specific primary_contact_name, example: ?where[primary_contact_name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','member_count','name','primary_contact_name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @member_count (URLParameter), prefix with a hyphen (-member_count) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @primary_contact_name (URLParameter), prefix with a hyphen (-primary_contact_name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','member_count','name','primary_contact_name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleHousehold() : super(kPcoApplication, kTypeString);
  PcoPeopleHousehold.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household;
  static Future<List<PcoPeopleHousehold>> getManyFromHouseholdAndHouseholdMembershipAndHouseholdIds(String householdId,String householdMembershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households;
  static Future<List<PcoPeopleHousehold>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household;
  static Future<List<PcoPeopleHousehold>> getManyFromPeopleImportAndHistoryAndHouseholdIds(String peopleImportId,String historyId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/household';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHousehold Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households;
  static Future<List<PcoPeopleHousehold>> getManyFromPeopleAndHouseholdIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHousehold> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people/$peopleId/households';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household;
  static Future<PcoPeopleHousehold?> getSingleFromHouseholdAndHouseholdMembershipAndHouseholdIds(String householdId,String householdMembershipId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships/$householdMembershipId/household' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households;
  static Future<PcoPeopleHousehold?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/households' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people_imports/1/histories/1/household;
  static Future<PcoPeopleHousehold?> getSingleFromPeopleImportAndHistoryAndHouseholdIds(String peopleImportId,String historyId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/histories/$historyId/household' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleHousehold Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/households;
  static Future<PcoPeopleHousehold?> getSingleFromPeopleAndHouseholdIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHousehold?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
    var url = '/people/v2/people/$peopleId/households' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHousehold.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleHouseholdMembership objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships
Future<List<PcoPeopleHouseholdMembership>> getHouseholdMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
  List<PcoPeopleHouseholdMembership> retval = [];
  var url = '$apiEndpoint/household_memberships';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHouseholdMembership.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/people
Future<List<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
