/// This file was generated on 2021-11-25T00:07:20.848677


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
/// possible includes with parameter ?include=a,b
/// @group_type: include associated group_type 
/// @location: include associated location 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @archive_status (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoGroupsGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Group';
  static const String kTypeId = 'group';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'group-organization-groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';

  /// possible includes with parameter ?include=a,b
  /// @group_type: include associated group_type 
  /// @location: include associated location 
  static List<String> get canInclude => ['group_type','location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @archive_status (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
  static List<String> get canQuery => ['archive_status'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoGroupsGroup() : super(kPcoApplication, kTypeString);
  PcoGroupsGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group;
  static Future<PcoCollection<PcoGroupsGroup>> getManyFromEvent(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/events/$eventId/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getManyFromGroupTypeAndGroup(String groupTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group;
  static Future<PcoCollection<PcoGroupsGroup>> getManyFromGroupAndMembership(String groupId,String membershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getManyFromPeopleAndGroup(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/people/$peopleId/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tags/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getManyFromTagAndGroup(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/tags/$tagId/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group;
  static Future<PcoCollection<PcoGroupsGroup>> getSingleFromEvent(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/events/$eventId/group' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getSingleFromGroupTypeAndGroup(String groupTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/groups' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group;
  static Future<PcoCollection<PcoGroupsGroup>> getSingleFromGroupAndMembership(String groupId,String membershipId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getSingleFromPeopleAndGroup(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/people/$peopleId/groups' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsGroup Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/tags/1/groups;
  static Future<PcoCollection<PcoGroupsGroup>> getSingleFromTagAndGroup(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/tags/$tagId/groups' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsEvent objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events
Future<PcoCollection<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsGroupType objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
Future<PcoCollection<PcoGroupsGroupType>> getGroupTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
  var url = '$apiEndpoint/group_type';
  return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsLocation objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/location
Future<PcoCollection<PcoGroupsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsLocation.canInclude;
  var url = '$apiEndpoint/location';
  return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsMembership objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
Future<PcoCollection<PcoGroupsMembership>> getMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsMembership.canInclude;
  var url = '$apiEndpoint/memberships';
  return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsPerson objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/people
Future<PcoCollection<PcoGroupsPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsPerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsResource objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/resources
Future<PcoCollection<PcoGroupsResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsResource.canInclude;
  var url = '$apiEndpoint/resources';
  return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsTag objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/tags
Future<PcoCollection<PcoGroupsTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsTag.canInclude;
  var url = '$apiEndpoint/tags';
  return PcoCollection.fromApiCall<PcoGroupsTag>(url, query: query, apiVersion:apiVersion);
}
    


}
