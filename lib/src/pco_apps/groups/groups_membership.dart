/// This file was generated on 2021-11-18T13:57:10.271180


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
class PcoGroupsMembership extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Membership';
  static const String typeId = 'membership';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'membership-person-memberships';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people/1/memberships';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoGroupsMembership() : super(pcoApplication, typeString);
  PcoGroupsMembership.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships;
  static Future<List<PcoGroupsMembership>> getManyFromGroupAndMembershipIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsMembership.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsMembership Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships;
  static Future<List<PcoGroupsMembership>> getManyFromPeopleAndMembershipIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsMembership> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/memberships';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsMembership.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsMembership Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships;
  static Future<PcoGroupsMembership?> getSingleFromGroupAndMembershipIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsMembership?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsMembership.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsMembership Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships;
  static Future<PcoGroupsMembership?> getSingleFromPeopleAndMembershipIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsMembership?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/memberships' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsMembership.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData));
    }
  }
  return retval;
}
    

}
