/// This file was generated on 2021-11-18T13:57:10.268967


import '../../pco.dart';

/// This class represents a PCO Groups Group Object
/// 
/// Application: groups
/// Id:          group
/// Type:        Group
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Group","id":"1","attributes":{"archived_at":"2000-01-01T12:00:00Z","contact_email":"string","created_at":"2000-01-01T12:00:00Z","description":"string","enrollment_open":true,"enrollment_strategy":"value","events_visibility":"value","header_image":{},"location_type_preference":"value","memberships_count":1,"name":"string","public_church_center_web_url":"string","schedule":"string","virtual_location_url":"string"},"relationships":{"group_type":{"data":{"type":"GroupType","id":"1"}},"location":{"data":{"type":"Location","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/groups
/// 
class PcoGroupsGroup extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Group';
  static const String typeId = 'group';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'group-organization-groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kArchiveStatus = 'archive_status';
  static const kArchivedAt = 'archived_at';
  static const kContactEmail = 'contact_email';
  static const kDescription = 'description';
  static const kEnrollmentOpen = 'enrollment_open';
  static const kEnrollmentStrategy = 'enrollment_strategy';
  static const kEventsVisibility = 'events_visibility';
  static const kHeaderImage = 'header_image';
  static const kLocationTypePreference = 'location_type_preference';
  static const kMembershipsCount = 'memberships_count';
  static const kName = 'name';
  static const kPublicChurchCenterWebUrl = 'public_church_center_web_url';
  static const kSchedule = 'schedule';
  static const kVirtualLocationUrl = 'virtual_location_url';
  static const kWidgetStatus = 'widget_status';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values: `not_archived`, `only`, or `include`
  String get archiveStatus => attributes[kArchiveStatus] ?? '';
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get contactEmail => attributes[kContactEmail] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isEnrollmentOpen => attributes[kEnrollmentOpen] == true;

  /// Possible values: `open`, `request_to_join`, or `open_signup`
  String get enrollmentStrategy => attributes[kEnrollmentStrategy] ?? '';

  /// Possible values: `public` or `members`
  String get eventsVisibility => attributes[kEventsVisibility] ?? '';
  String get headerImage => attributes[kHeaderImage] ?? '';

  /// Possible values: `physical` or `virtual`
  String get locationTypePreference => attributes[kLocationTypePreference] ?? '';
  int get membershipsCount => attributes[kMembershipsCount] ?? 0;
  String get name => attributes[kName] ?? '';
  String get publicChurchCenterWebUrl => attributes[kPublicChurchCenterWebUrl] ?? '';
  String get schedule => attributes[kSchedule] ?? '';
  String get virtualLocationUrl => attributes[kVirtualLocationUrl] ?? '';

  /// Only available when requested with the `?fields` param
  String get widgetStatus => attributes[kWidgetStatus] ?? '';




  PcoGroupsGroup() : super(pcoApplication, typeString);
  PcoGroupsGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group;
  static Future<List<PcoGroupsGroup>> getManyFromEventAndGroupIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/groups;
  static Future<List<PcoGroupsGroup>> getManyFromGroupTypeAndGroupIds(String groupTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group;
  static Future<List<PcoGroupsGroup>> getManyFromGroupAndMembershipAndGroupIds(String groupId,String membershipId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups;
  static Future<List<PcoGroupsGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups;
  static Future<List<PcoGroupsGroup>> getManyFromPeopleAndGroupIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tags/1/groups;
  static Future<List<PcoGroupsGroup>> getManyFromTagAndGroupIds(String tagId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tags/$tagId/groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group;
  static Future<PcoGroupsGroup?> getSingleFromEventAndGroupIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events/$eventId/group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/groups;
  static Future<PcoGroupsGroup?> getSingleFromGroupTypeAndGroupIds(String groupTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group;
  static Future<PcoGroupsGroup?> getSingleFromGroupAndMembershipAndGroupIds(String groupId,String membershipId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups;
  static Future<PcoGroupsGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups;
  static Future<PcoGroupsGroup?> getSingleFromPeopleAndGroupIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tags/1/groups;
  static Future<PcoGroupsGroup?> getSingleFromTagAndGroupIds(String tagId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/tags/$tagId/groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events
Future<List<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroupType objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
Future<List<PcoGroupsGroupType>> getGroupTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroupType> retval = [];
  var url = '$apiEndpoint/group_type';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroupType.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsLocation objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location
Future<List<PcoGroupsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsMembership objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
Future<List<PcoGroupsMembership>> getMemberships({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsMembership> retval = [];
  var url = '$apiEndpoint/memberships';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsMembership.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people
Future<List<PcoGroupsPerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources
Future<List<PcoGroupsResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsResource> retval = [];
  var url = '$apiEndpoint/resources';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsResource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsTag objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/tags
Future<List<PcoGroupsTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
