/// This file was generated on 2021-11-19T12:10:42.511822


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
/// possible includes with parameter ?include=a,b
/// @household: include associated household 
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @pending (URLParameter), query on a specific pending, example: ?where[pending]=true
/// @person_name (URLParameter), query on a specific person_name, example: ?where[person_name]=string
/// possible orderings with parameter ?order=
/// @pending (URLParameter), prefix with a hyphen (-pending) to reverse the order
/// @person_name (URLParameter), prefix with a hyphen (-person_name) to reverse the order
///
class PcoPeopleHouseholdMembership extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'HouseholdMembership';
  static const String kTypeId = 'household_membership';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'householdmembership-person-household_memberships';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/household_memberships';

  /// possible includes with parameter ?include=a,b
  /// @household: include associated household 
  /// @person: include associated person 
  static List<String> get canInclude => ['household','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @pending (URLParameter), query on a specific pending, example: ?where[pending]=true
  /// @person_name (URLParameter), query on a specific person_name, example: ?where[person_name]=string
  static List<String> get canQuery => ['pending','person_name'];

  /// possible orderings with parameter ?order=
  /// @pending (URLParameter), prefix with a hyphen (-pending) to reverse the order
  /// @person_name (URLParameter), prefix with a hyphen (-person_name) to reverse the order
  static List<String> get canOrderBy => ['pending','person_name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleHouseholdMembership() : super(kPcoApplication, kTypeString);
  PcoPeopleHouseholdMembership.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleHouseholdMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships;
  static Future<List<PcoPeopleHouseholdMembership>> getManyFromHouseholdAndHouseholdMembershipIds(String householdId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHouseholdMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHouseholdMembership.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleHouseholdMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships;
  static Future<List<PcoPeopleHouseholdMembership>> getManyFromPeopleAndHouseholdMembershipIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleHouseholdMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/people/$peopleId/household_memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleHouseholdMembership.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleHouseholdMembership Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships;
  static Future<PcoPeopleHouseholdMembership?> getSingleFromHouseholdAndHouseholdMembershipIds(String householdId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHouseholdMembership?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/households/$householdId/household_memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHouseholdMembership.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleHouseholdMembership Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/household_memberships;
  static Future<PcoPeopleHouseholdMembership?> getSingleFromPeopleAndHouseholdMembershipIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleHouseholdMembership?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleHouseholdMembership.canInclude;
    var url = '/people/v2/people/$peopleId/household_memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleHouseholdMembership.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleHousehold objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/household
Future<List<PcoPeopleHousehold>> getHouseholds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleHousehold.canInclude;
  List<PcoPeopleHousehold> retval = [];
  var url = '$apiEndpoint/household';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleHousehold.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/households/1/household_memberships/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
