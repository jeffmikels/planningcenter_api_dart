/// This file was generated on 2021-11-18T13:57:10.117143


import '../../pco.dart';

/// This class represents a PCO Calendar Person Object
/// 
/// Application: calendar
/// Id:          person
/// Type:        Person
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// The people in your organization with access to Calendar.\n
/// 
/// Example:
/// 
/// {"type":"Person","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","first_name":"string","last_name":"string","middle_name":"string","updated_at":"2000-01-01T12:00:00Z","avatar_url":"string","child":true,"contact_data":"string","gender":"string","has_access":true,"name_prefix":"string","name_suffix":"string","pending_request_count":1,"permissions":1,"resolves_conflicts":true,"site_administrator":true,"status":"value","event_permissions_type":"string","people_permissions_type":"string","room_permissions_type":"string","resources_permissions_type":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/people
/// 
class PcoCalendarPerson extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'Person';
  static const String typeId = 'person';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'person-organization-people';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/people';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kMiddleName = 'middle_name';
  static const kAvatarUrl = 'avatar_url';
  static const kChild = 'child';
  static const kContactData = 'contact_data';
  static const kGender = 'gender';
  static const kHasAccess = 'has_access';
  static const kNamePrefix = 'name_prefix';
  static const kNameSuffix = 'name_suffix';
  static const kPendingRequestCount = 'pending_request_count';
  static const kPermissions = 'permissions';
  static const kResolvesConflicts = 'resolves_conflicts';
  static const kSiteAdministrator = 'site_administrator';
  static const kStatus = 'status';
  static const kEventPermissionsType = 'event_permissions_type';
  static const kPeoplePermissionsType = 'people_permissions_type';
  static const kRoomPermissionsType = 'room_permissions_type';
  static const kResourcesPermissionsType = 'resources_permissions_type';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// The person's first name
  String get firstName => attributes[kFirstName] ?? '';

  /// The person's last name
  String get lastName => attributes[kLastName] ?? '';

  /// The person's middle name
  String get middleName => attributes[kMiddleName] ?? '';

  /// Path to where the avatar image is stored
  String get avatarUrl => attributes[kAvatarUrl] ?? '';

  /// Indicates whether the person is a child
  bool get isChild => attributes[kChild] == true;

  /// An object containing the person's contact data.
  ///This can include an array of `email_addresses`, `addresses` and `phone_numbers`
  String get contactData => attributes[kContactData] ?? '';

  /// `M` indicates male, `F` indicates female
  String get gender => attributes[kGender] ?? '';

  /// Indicates whether the person has access to Calendar
  bool get isHasAccess => attributes[kHasAccess] == true;

  /// Possible values:
  ///- `Mr.`
  ///- `Mrs.`
  ///- `Ms.`
  ///- `Miss`
  ///- `Dr.`
  ///- `Rev.`
  String get namePrefix => attributes[kNamePrefix] ?? '';

  /// Possible values:
  ///- `Jr.`
  ///- `Sr.`
  ///- `Ph.D.`
  ///- `II`
  ///- `III`
  String get nameSuffix => attributes[kNameSuffix] ?? '';

  /// If the person is a member of an approval group, the number of EventResourceRequests needing resolution.
  ///If `resolves_conflicts` is `true`, the count will also include the number of Conflicts needing resolution.
  int get pendingRequestCount => attributes[kPendingRequestCount] ?? 0;

  /// Integer that corresponds to the person's permissions in Calendar
  int get permissions => attributes[kPermissions] ?? 0;

  /// Indicates whether the person is able to resolve Conflicts
  bool get isResolvesConflicts => attributes[kResolvesConflicts] == true;

  /// Indicates whether the person is a Organization Administrator
  bool get isSiteAdministrator => attributes[kSiteAdministrator] == true;

  /// Possible values:
  ///- `active`: The person is marked "active" in People
  ///- `inactive`: The person is marked "inactive" in People
  ///
  ///Possible values: `active`, `pending`, or `inactive`
  String get status => attributes[kStatus] ?? '';

  /// Event permissions for the person
  String get eventPermissionsType => attributes[kEventPermissionsType] ?? '';

  /// People permissions for the person
  String get peoplePermissionsType => attributes[kPeoplePermissionsType] ?? '';

  /// Room permissions for the person
  String get roomPermissionsType => attributes[kRoomPermissionsType] ?? '';

  /// Resource permissions for the person
  String get resourcesPermissionsType => attributes[kResourcesPermissionsType] ?? '';




  PcoCalendarPerson() : super(pcoApplication, typeString);
  PcoCalendarPerson.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by;
  static Future<List<PcoCalendarPerson>> getManyFromConflictAndResolvedByIds(String conflictId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/conflicts/$conflictId/resolved_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/owner;
  static Future<List<PcoCalendarPerson>> getManyFromEventAndOwnerIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/owner';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by;
  static Future<List<PcoCalendarPerson>> getManyFromEventResourceRequestAndCreatedByIds(String eventResourceRequestId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by;
  static Future<List<PcoCalendarPerson>> getManyFromEventResourceRequestAndUpdatedByIds(String eventResourceRequestId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people;
  static Future<List<PcoCalendarPerson>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people;
  static Future<List<PcoCalendarPerson>> getManyFromResourceApprovalGroupAndPeopleIds(String resourceApprovalGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by;
  static Future<PcoCalendarPerson?> getSingleFromConflictAndResolvedByIds(String conflictId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/conflicts/$conflictId/resolved_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/owner;
  static Future<PcoCalendarPerson?> getSingleFromEventAndOwnerIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/owner' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/created_by;
  static Future<PcoCalendarPerson?> getSingleFromEventResourceRequestAndCreatedByIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/created_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/updated_by;
  static Future<PcoCalendarPerson?> getSingleFromEventResourceRequestAndUpdatedByIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/updated_by' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/people;
  static Future<PcoCalendarPerson?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarPerson Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people;
  static Future<PcoCalendarPerson?> getSingleFromResourceApprovalGroupAndPeopleIds(String resourceApprovalGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarPerson.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/people/1/event_resource_requests
Future<List<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventResourceRequest> retval = [];
  var url = '$apiEndpoint/event_resource_requests';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventResourceRequest.fromJson(itemData));
    }
  }
  return retval;
}
    

}
