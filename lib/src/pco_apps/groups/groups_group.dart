/// This file was generated on 2022-03-04T15:29:14.801898


import '../../pco.dart';

/// This class represents a PCO Groups Group Object
/// 
/// - Application:        groups
/// - Id:                 group
/// - Type:               Group
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Group",
///   "id": "1",
///   "attributes": {
///     "archived_at": "2000-01-01T12:00:00Z",
///     "contact_email": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "enrollment_open": true,
///     "enrollment_strategy": "value",
///     "events_visibility": "value",
///     "header_image": {},
///     "location_type_preference": "value",
///     "memberships_count": 1,
///     "name": "string",
///     "public_church_center_web_url": "string",
///     "schedule": "string",
///     "virtual_location_url": "string"
///   },
///   "relationships": {
///     "group_type": {
///       "data": {
///         "type": "GroupType",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - group_type: include associated group_type 
/// - location: include associated location 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// - `event-group-events`: https://api.planningcenteronline.com/groups/v2/groups/1/events
/// - `grouptype-group-group_type`: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `person-group-people`: https://api.planningcenteronline.com/groups/v2/groups/1/people
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `tag-group-tags`: https://api.planningcenteronline.com/groups/v2/groups/1/tags
/// 
/// All Inbound Edges:
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `group-grouptype-groups`: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
/// - `group-organization-groups`: https://api.planningcenteronline.com/groups/v2/groups
/// - `group-person-groups`: https://api.planningcenteronline.com/groups/v2/people/1/groups
/// - `group-tag-groups`: https://api.planningcenteronline.com/groups/v2/tags/1/groups
/// 
/// All Actions:
/// NONE
///
class PcoGroupsGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Group';
  static const String kTypeId = 'group';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'group-organization-groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups';

  /// possible includes with parameter ?include=a,b
  /// - `group_type`: include associated group_type 
  /// - `location`: include associated location 
  static List<String> get canInclude => ['group_type','location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
  static List<String> get canQuery => ['archive_status'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kArchiveStatus = 'archive_status';
  static const kArchivedAt = 'archived_at';
  static const kContactEmail = 'contact_email';
  static const kCreatedAt = 'created_at';
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

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  String get archiveStatus => attributes[kArchiveStatus] ?? '';
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  String get contactEmail => attributes[kContactEmail] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isEnrollmentOpen => attributes[kEnrollmentOpen] == true;
  String get enrollmentStrategy => attributes[kEnrollmentStrategy] ?? '';
  String get eventsVisibility => attributes[kEventsVisibility] ?? '';
  String get headerImage => attributes[kHeaderImage] ?? '';
  String get locationTypePreference => attributes[kLocationTypePreference] ?? '';
  int get membershipsCount => attributes[kMembershipsCount] ?? 0;
  String get name => attributes[kName] ?? '';
  String get publicChurchCenterWebUrl => attributes[kPublicChurchCenterWebUrl] ?? '';
  String get schedule => attributes[kSchedule] ?? '';
  String get virtualLocationUrl => attributes[kVirtualLocationUrl] ?? '';
  String get widgetStatus => attributes[kWidgetStatus] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGroupsGroup() : super(kPcoApplication, kTypeString);
  PcoGroupsGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/groups`
  static Future<PcoCollection<PcoGroupsGroup>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/events/$eventId/group`
  static Future<PcoCollection<PcoGroupsGroup>> getFromEvent(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/events/$eventId/group';
    
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupType(String groupTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/groups/$groupId/memberships/$membershipId/group`
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupAndMembership(String groupId,String membershipId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group';
    
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$peopleId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/people/$peopleId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tags/$tagId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromTag(String tagId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroup.canInclude;
    var url = '/groups/v2/tags/$tagId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/events`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  Future<PcoCollection<PcoGroupsEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/group_type`
  Future<PcoCollection<PcoGroupsGroupType>> getGroupType({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsGroupType.canInclude;
    var url = '$apiEndpoint/group_type';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/location`
  Future<PcoCollection<PcoGroupsLocation>> getLocation({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships`
  Future<PcoCollection<PcoGroupsMembership>> getMemberships({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsMembership.canInclude;
    var url = '$apiEndpoint/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/people`
  Future<PcoCollection<PcoGroupsPerson>> getPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/resources`
  /// 
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  /// 
  Future<PcoCollection<PcoGroupsResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsResource.canInclude;
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/tags`
  Future<PcoCollection<PcoGroupsTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
