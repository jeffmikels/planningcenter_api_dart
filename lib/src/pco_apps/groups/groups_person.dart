/// This file was generated on 2021-11-17T23:59:30.063307


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
class PcoGroupsPerson extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Person';
  static const String typeId = 'person';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'person-organization-people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGroupsPerson() : super(pcoApplication, typeString);
  PcoGroupsPerson.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person;
  static Future<List<PcoGroupsPerson>> getManyFromEventAndAttendanceAndPersonIds(String eventId,String attendanceId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people;
  static Future<List<PcoGroupsPerson>> getManyFromGroupAndPeopleIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people;
  static Future<List<PcoGroupsPerson>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person;
  static Future<PcoGroupsPerson?> getSingleFromEventAndAttendanceAndPersonIds(String eventId,String attendanceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/attendances/$attendanceId/person' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people;
  static Future<PcoGroupsPerson?> getSingleFromGroupAndPeopleIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsPerson Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people;
  static Future<PcoGroupsPerson?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsPerson.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events
Future<List<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/groups';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsMembership objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/memberships
Future<List<PcoGroupsMembership>> getMemberships({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsMembership> retval = [];
  var url = '$apiEndpoint/memberships';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsMembership.fromJson(itemData));
    }
  }
  return retval;
}
    

}
