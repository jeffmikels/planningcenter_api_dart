/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:17.388526
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
enum PcoGroupsGroupOrder { name }

/// Possible Inbound Filters:
/// - `group` -> `?filter=group` : filter events from specific groups; provide an additional `group_id` param
/// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
///
/// - `groupType` -> `?filter=group_type` : filter events from specific group types; provide an additional `group_type_id` param
/// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
///
/// - `myGroups` -> `?filter=my_groups` : -- no description
enum PcoGroupsGroupFilter { group, groupType, myGroups }

/// Creates a [PcoGroupsGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeGroupType`: include associated group_type
/// - `includeLocation`: include associated location
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGroupsGroupQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsGroup] objects can be requested with one or more of the following criteria:
/// - `whereArchiveStatus`: Used for querying only. Defaults to `not_archived`., example: ?where[archive_status]=value
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoGroupsGroupOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsGroupOrder, String> _orderMap = {
    PcoGroupsGroupOrder.name: 'name',
  };
  static String orderString(PcoGroupsGroupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsGroupFilter, String> _filterMap = {
    PcoGroupsGroupFilter.group: 'group',
    PcoGroupsGroupFilter.groupType: 'group_type',
    PcoGroupsGroupFilter.myGroups: 'my_groups',
  };
  static String filterString(PcoGroupsGroupFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsGroupQuery({
    /// include associated group_type
    /// when true, adds `?include=group_type` to url
    bool includeGroupType = false,

    /// include associated location
    /// when true, adds `?include=location` to url
    bool includeLocation = false,

    /// when true, adds `?include=group_type,location` to url parameters
    bool includeAll = false,

    /// Query by `archive_status`
    /// Used for querying only. Defaults to `not_archived`., url example: ?where[archive_status]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereArchiveStatus,
    PcoGroupsGroupFilter? filterBy,
    PcoGroupsGroupOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeGroupType) include.add('group_type');
    if (includeAll || includeLocation) include.add('location');

    if (whereArchiveStatus != null)
      where.add(
          PlanningCenterApiWhere.parse('archive_status', whereArchiveStatus));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

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

  PcoGroupsGroupType? get includedGroupType =>
      _firstOrNull<PcoGroupsGroupType>(relationships['group_type']);
  PcoGroupsLocation? get includedLocation =>
      _firstOrNull<PcoGroupsLocation>(relationships['location']);

  // Class Constructors
  PcoGroupsGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsGroup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsGroup(
      {String? id,
      String? archiveStatus,
      DateTime? archivedAt,
      String? contactEmail,
      DateTime? createdAt,
      String? description,
      bool? isEnrollmentOpen,
      String? enrollmentStrategy,
      String? eventsVisibility,
      String? headerImage,
      String? locationTypePreference,
      int? membershipsCount,
      String? name,
      String? publicChurchCenterWebUrl,
      String? schedule,
      String? virtualLocationUrl,
      String? widgetStatus,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsGroup.empty();
    obj._id = id;
    if (archiveStatus != null)
      obj._attributes['archive_status'] = archiveStatus;
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (contactEmail != null) obj._attributes['contact_email'] = contactEmail;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (isEnrollmentOpen != null)
      obj._attributes['enrollment_open'] = isEnrollmentOpen;
    if (enrollmentStrategy != null)
      obj._attributes['enrollment_strategy'] = enrollmentStrategy;
    if (eventsVisibility != null)
      obj._attributes['events_visibility'] = eventsVisibility;
    if (headerImage != null) obj._attributes['header_image'] = headerImage;
    if (locationTypePreference != null)
      obj._attributes['location_type_preference'] = locationTypePreference;
    if (membershipsCount != null)
      obj._attributes['memberships_count'] = membershipsCount;
    if (name != null) obj._attributes['name'] = name;
    if (publicChurchCenterWebUrl != null)
      obj._attributes['public_church_center_web_url'] =
          publicChurchCenterWebUrl;
    if (schedule != null) obj._attributes['schedule'] = schedule;
    if (virtualLocationUrl != null)
      obj._attributes['virtual_location_url'] = virtualLocationUrl;
    if (widgetStatus != null) obj._attributes['widget_status'] = widgetStatus;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/groups`
  ///
  /// Available Query Filters:
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  ///
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  ///
  /// - `my_groups`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> get({
    String? id,
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> getFromEvent(
    String eventId, {
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events/$eventId/group';

    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/groups`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupType(
    String groupTypeId, {
    String? id,
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> getFromGroupAndMembership(
    String groupId,
    String membershipId, {
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
    if (includeAll) query.include.addAll(PcoGroupsGroup.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/memberships/$membershipId/group';

    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/groups`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> getFromPerson(
    String personId, {
    String? id,
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
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
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroup>> getFromTag(
    String tagId, {
    String? id,
    PcoGroupsGroupQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsGroupQuery();
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
  Future<PcoCollection<PcoGroupsEvent>> getEvents(
      {PcoGroupsEventQuery? query}) async {
    query ??= PcoGroupsEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/group_type`
  Future<PcoCollection<PcoGroupsGroupType>> getGroupType(
      {PcoGroupsGroupTypeQuery? query}) async {
    query ??= PcoGroupsGroupTypeQuery();
    var url = '$apiEndpoint/group_type';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/location`
  Future<PcoCollection<PcoGroupsLocation>> getLocation(
      {PcoGroupsLocationQuery? query}) async {
    query ??= PcoGroupsLocationQuery();
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsMembership] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/memberships`
  Future<PcoCollection<PcoGroupsMembership>> getMemberships(
      {PcoGroupsMembershipQuery? query}) async {
    query ??= PcoGroupsMembershipQuery();
    var url = '$apiEndpoint/memberships';
    return PcoCollection.fromApiCall<PcoGroupsMembership>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/people`
  Future<PcoCollection<PcoGroupsPerson>> getPeople(
      {PcoGroupsPersonQuery? query}) async {
    query ??= PcoGroupsPersonQuery();
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
  Future<PcoCollection<PcoGroupsResource>> getResources(
      {PcoGroupsResourceQuery? query}) async {
    query ??= PcoGroupsResourceQuery();
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/groups/1/tags`
  Future<PcoCollection<PcoGroupsTag>> getTags(
      {PcoGroupsTagQuery? query}) async {
    query ??= PcoGroupsTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoGroupsTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
