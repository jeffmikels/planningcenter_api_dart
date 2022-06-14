/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.144933
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Groups Group Object
///
/// - Application:        groups
/// - Id:                 group
/// - Type:               Group
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/groups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsGroup.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `archiveStatus` (ro) -> PCO: `archive_status`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `contactEmail` (ro) -> PCO: `contact_email`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `description` (ro) -> PCO: `description`
/// - `isEnrollmentOpen` (ro) -> PCO: `enrollment_open`
/// - `enrollmentStrategy` (ro) -> PCO: `enrollment_strategy`
/// - `eventsVisibility` (ro) -> PCO: `events_visibility`
/// - `headerImage` (ro) -> PCO: `header_image`
/// - `locationTypePreference` (ro) -> PCO: `location_type_preference`
/// - `membershipsCount` (ro) -> PCO: `memberships_count`
/// - `name` (ro) -> PCO: `name`
/// - `publicChurchCenterWebUrl` (ro) -> PCO: `public_church_center_web_url`
/// - `schedule` (ro) -> PCO: `schedule`
/// - `virtualLocationUrl` (ro) -> PCO: `virtual_location_url`
/// - `widgetStatus` (ro) -> PCO: `widget_status`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `group_type`: include associated group_type
/// - `location`: include associated location
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-group-events`: https://api.planningcenteronline.com/groups/v2/groups/1/events
/// - `grouptype-group-group_type`: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
/// - `membership-group-memberships`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships
/// - `person-group-people`: https://api.planningcenteronline.com/groups/v2/groups/1/people
/// - `resource-group-resources`: https://api.planningcenteronline.com/groups/v2/groups/1/resources
/// - `tag-group-tags`: https://api.planningcenteronline.com/groups/v2/groups/1/tags
///
/// Inbound Edges:
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `group-grouptype-groups`: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
/// - `group-membership-group`: https://api.planningcenteronline.com/groups/v2/groups/1/memberships/1/group
/// - `group-organization-groups`: https://api.planningcenteronline.com/groups/v2/groups
/// - `group-person-groups`: https://api.planningcenteronline.com/groups/v2/people/1/groups
/// - `group-tag-groups`: https://api.planningcenteronline.com/groups/v2/tags/1/groups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoGroupsGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Group';
  static const String kTypeId = 'group';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `group_type`: include associated group_type
  /// - `location`: include associated location
  static List<String> get canInclude => ['group_type', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `archive_status`: (URLParameter), Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
  static List<String> get canQuery => ['archive_status'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

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
  String get archiveStatus => _attributes[kArchiveStatus] ?? '';
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  String get contactEmail => _attributes[kContactEmail] ?? '';
  String get description => _attributes[kDescription] ?? '';
  bool get isEnrollmentOpen => _attributes[kEnrollmentOpen] == true;
  String get enrollmentStrategy => _attributes[kEnrollmentStrategy] ?? '';
  String get eventsVisibility => _attributes[kEventsVisibility] ?? '';
  String get headerImage => _attributes[kHeaderImage] ?? '';
  String get locationTypePreference =>
      _attributes[kLocationTypePreference] ?? '';
  int get membershipsCount => _attributes[kMembershipsCount] ?? 0;
  String get name => _attributes[kName] ?? '';
  String get publicChurchCenterWebUrl =>
      _attributes[kPublicChurchCenterWebUrl] ?? '';
  String get schedule => _attributes[kSchedule] ?? '';
  String get virtualLocationUrl => _attributes[kVirtualLocationUrl] ?? '';
  String get widgetStatus => _attributes[kWidgetStatus] ?? '';

  // typed getters for each relationship

  List<PcoGroupsGroupType> get includedGroupType =>
      (relationships['group_type'] as List?)?.cast<PcoGroupsGroupType>() ?? [];
  List<PcoGroupsLocation> get includedLocation =>
      (relationships['location'] as List?)?.cast<PcoGroupsLocation>() ?? [];

  // Class Constructors
  PcoGroupsGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/groups`
  static Future<PcoCollection<PcoGroupsGroup>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/events/$eventId/group`
  static Future<PcoCollection<PcoGroupsGroup>> getFromEvent(
    String eventId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events/$eventId/group';

    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupType(
    String groupTypeId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/group_types/$groupTypeId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `/groups/v2/groups/$groupId/memberships/$membershipId/group`
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupAndMembership(
    String groupId,
    String membershipId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group';

    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/people/$personId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tags/$tagId/groups`
  static Future<PcoCollection<PcoGroupsGroup>> getFromTag(
    String tagId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/tags/$tagId/groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  Future<PcoCollection<PcoGroupsEvent>> getEvents({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/group_type`
  Future<PcoCollection<PcoGroupsGroupType>> getGroupType({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/group_type';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/location`
  Future<PcoCollection<PcoGroupsLocation>> getLocation({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships`
  Future<PcoCollection<PcoGroupsMembership>> getMemberships({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/people`
  Future<PcoCollection<PcoGroupsPerson>> getPeople({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/resources`
  ///
  /// Available Query Filters:
  /// - `leaders`
  /// filter resources only visible to group leaders
  ///
  Future<PcoCollection<PcoGroupsResource>> getResources({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/tags`
  Future<PcoCollection<PcoGroupsTag>> getTags({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url,
        query: query, apiVersion: apiVersion);
  }
}
