/// This file was generated on 2021-11-25T00:07:20.850936


import '../../pco.dart';

/// This class represents a PCO Groups Membership Object
/// 
/// Application: groups
/// Id:          membership
/// Type:        Membership
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Membership","id":"1","attributes":{"account_center_identifier":"string","avatar_url":"string","color_identifier":"string","email_address":"string","first_name":"string","joined_at":"2000-01-01T12:00:00Z","last_name":"string","phone_number":"string","role":"string"},"relationships":{"group":{"data":{"type":"Group","id":"1"}},"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @role (URLParameter), query on a specific role, example: ?where[role]=string
/// possible orderings with parameter ?order=
/// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// @joined_at (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
/// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// @role (URLParameter), prefix with a hyphen (-role) to reverse the order
///
class PcoGroupsMembership extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Membership';
  static const String kTypeId = 'membership';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'membership-person-memberships';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people/1/memberships';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @role (URLParameter), query on a specific role, example: ?where[role]=string
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// @first_name (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// @joined_at (URLParameter), prefix with a hyphen (-joined_at) to reverse the order
  /// @last_name (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// @role (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy => ['first_name','joined_at','last_name','role'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAccountCenterIdentifier = 'account_center_identifier';
  static const kAvatarUrl = 'avatar_url';
  static const kColorIdentifier = 'color_identifier';
  static const kEmailAddress = 'email_address';
  static const kFirstName = 'first_name';
  static const kJoinedAt = 'joined_at';
  static const kLastName = 'last_name';
  static const kPhoneNumber = 'phone_number';
  static const kRole = 'role';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','role','joined_at'];
  @override
  List<String> get updateAllowed => ['role','joined_at'];

  String get accountCenterIdentifier => attributes[kAccountCenterIdentifier] ?? '';
  String get avatarUrl => attributes[kAvatarUrl] ?? '';

  /// The color theme of the group's group type
  String get colorIdentifier => attributes[kColorIdentifier] ?? '';
  String get emailAddress => attributes[kEmailAddress] ?? '';
  String get firstName => attributes[kFirstName] ?? '';
  DateTime get joinedAt => DateTime.parse(attributes[kJoinedAt] ?? '');
  String get lastName => attributes[kLastName] ?? '';
  String get phoneNumber => attributes[kPhoneNumber] ?? '';

  /// Can be either `leader` or `member`
  String get role => attributes[kRole] ?? '';


  set joinedAt(DateTime d) => attributes[kJoinedAt] = d.toIso8601String();

  /// Can be either `leader` or `member`
  set role(String s) => attributes[kRole] = s;


  PcoGroupsMembership() : super(kPcoApplication, kTypeString);
  PcoGroupsMembership.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships;
  static Future<PcoCollection<PcoGroupsMembership>> getManyFromGroupAndMembership(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships;
  static Future<PcoCollection<PcoGroupsMembership>> getManyFromPeopleAndMembership(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/people/$peopleId/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsMembership Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships;
  static Future<PcoCollection<PcoGroupsMembership>> getSingleFromGroupAndMembership(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsMembership.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsMembership Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships;
  static Future<PcoCollection<PcoGroupsMembership>> getSingleFromPeopleAndMembership(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '/groups/v2/people/$peopleId/memberships' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsMembership.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
Future<PcoCollection<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroup.canInclude;
  var url = '$apiEndpoint/group';
  return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:apiVersion);
}
    


}
