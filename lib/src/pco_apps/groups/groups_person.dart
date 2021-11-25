/// This file was generated on 2021-11-25T00:07:20.852087


import '../../pco.dart';

/// This class represents a PCO Groups Person Object
/// 
/// Application: groups
/// Id:          person
/// Type:        Person
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"addresses":[],"avatar_url":"string","created_at":"2000-01-01T12:00:00Z","email_addresses":[],"first_name":"string","last_name":"string","permissions":"string","phone_numbers":[]},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/people
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
/// possible orderings with parameter ?order=
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
///
class PcoGroupsPerson extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'person-organization-people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @first_name (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// @last_name (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static List<String> get canQuery => ['first_name','last_name'];

  /// possible orderings with parameter ?order=
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  static List<String> get canOrderBy => ['first_name','last_name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAddresses = 'addresses';
  static const kAvatarUrl = 'avatar_url';
  static const kEmailAddresses = 'email_addresses';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kPermissions = 'permissions';
  static const kPhoneNumbers = 'phone_numbers';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  List get addresses => attributes[kAddresses] ?? [];
  String get avatarUrl => attributes[kAvatarUrl] ?? '';
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';

  /// Can be `administrator`, `group_type_manager`, `leader`, `member`, or `no access`.
  String get permissions => attributes[kPermissions] ?? '';
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];




  PcoGroupsPerson() : super(kPcoApplication, kTypeString);
  PcoGroupsPerson.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person;
  static Future<PcoCollection<PcoGroupsPerson>> getManyFromEventAndAttendance(String eventId,String attendanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people;
  static Future<PcoCollection<PcoGroupsPerson>> getManyFromGroupAndPeople(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/groups/$groupId/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people;
  static Future<PcoCollection<PcoGroupsPerson>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person;
  static Future<PcoCollection<PcoGroupsPerson>> getSingleFromEventAndAttendance(String eventId,String attendanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people;
  static Future<PcoCollection<PcoGroupsPerson>> getSingleFromGroupAndPeople(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/groups/$groupId/people' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people;
  static Future<PcoCollection<PcoGroupsPerson>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '/groups/v2/people' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsPerson.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events
Future<PcoCollection<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups
Future<PcoCollection<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroup.canInclude;
  var url = '$apiEndpoint/groups';
  return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsMembership objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships
Future<PcoCollection<PcoGroupsMembership>> getMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsMembership.canInclude;
  var url = '$apiEndpoint/memberships';
  return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:apiVersion);
}
    


}
