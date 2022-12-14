/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.136690
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `endsAt` -> `?order=ends_at`
/// - `name` -> `?order=name`
/// - `startsAt` -> `?order=starts_at`
enum PcoGroupsEventOrder { endsAt, name, startsAt }

/// Possible Inbound Filters:
/// - `canceled` -> `?filter=canceled` : -- no description
/// - `group` -> `?filter=group` : filter events from specific groups; provide an additional `group_id` param
/// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
///
/// - `groupType` -> `?filter=group_type` : filter events from specific group types; provide an additional `group_type_id` param
/// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
///
/// - `myGroups` -> `?filter=my_groups` : -- no description
/// - `notCanceled` -> `?filter=not_canceled` : -- no description
/// - `upcoming` -> `?filter=upcoming` : -- no description
enum PcoGroupsEventFilter {
  canceled,
  group,
  groupType,
  myGroups,
  notCanceled,
  upcoming
}

/// Creates a [PcoGroupsEventQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeGroup`: include associated group
/// - `includeLocation`: include associated location
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGroupsEventQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsEvent] objects can be requested with one or more of the following criteria:
/// - `whereEndsAt`: query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereStartsAt`: query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
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
/// - `PcoGroupsEventOrder.endsAt` : will order by `ends_at`
/// - `PcoGroupsEventOrder.name` : will order by `name`
/// - `PcoGroupsEventOrder.startsAt` : will order by `starts_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsEventOrder, String> _orderMap = {
    PcoGroupsEventOrder.endsAt: 'ends_at',
    PcoGroupsEventOrder.name: 'name',
    PcoGroupsEventOrder.startsAt: 'starts_at',
  };
  static String orderString(PcoGroupsEventOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsEventFilter, String> _filterMap = {
    PcoGroupsEventFilter.canceled: 'canceled',
    PcoGroupsEventFilter.group: 'group',
    PcoGroupsEventFilter.groupType: 'group_type',
    PcoGroupsEventFilter.myGroups: 'my_groups',
    PcoGroupsEventFilter.notCanceled: 'not_canceled',
    PcoGroupsEventFilter.upcoming: 'upcoming',
  };
  static String filterString(PcoGroupsEventFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsEventQuery({
    /// include associated group
    /// when true, adds `?include=group` to url
    bool includeGroup = false,

    /// include associated location
    /// when true, adds `?include=location` to url
    bool includeLocation = false,

    /// when true, adds `?include=group,location` to url parameters
    bool includeAllRelated = false,

    /// Query by `ends_at`
    /// query on a specific ends_at, url example: ?where[ends_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndsAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `starts_at`
    /// query on a specific starts_at, url example: ?where[starts_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStartsAt,
    PcoGroupsEventFilter? filterBy,
    PcoGroupsEventOrder? orderBy,

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
    if (includeAllRelated || includeGroup) include.add('group');
    if (includeAllRelated || includeLocation) include.add('location');

    if (whereEndsAt != null)
      where.add(PlanningCenterApiWhere.parse('ends_at', whereEndsAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereStartsAt != null)
      where.add(PlanningCenterApiWhere.parse('starts_at', whereStartsAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups Event Object
///
/// - Application:        groups
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsEvent.fromJson()` constructor.
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
/// - `isAttendanceRequestsEnabled` (ro) -> PCO: `attendance_requests_enabled`
/// - `isAutomatedReminderEnabled` (ro) -> PCO: `automated_reminder_enabled`
/// - `isCanceled` (ro) -> PCO: `canceled`
/// - `canceledAt` (ro) -> PCO: `canceled_at`
/// - `description` (ro) -> PCO: `description`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `locationTypePreference` (ro) -> PCO: `location_type_preference`
/// - `isMultiDay` (ro) -> PCO: `multi_day`
/// - `name` (ro) -> PCO: `name`
/// - `isRemindersSent` (ro) -> PCO: `reminders_sent`
/// - `remindersSentAt` (ro) -> PCO: `reminders_sent_at`
/// - `isRepeating` (ro) -> PCO: `repeating`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `virtualLocationUrl` (ro) -> PCO: `virtual_location_url`
/// - `visitorsCount` (ro) -> PCO: `visitors_count`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
/// - `eventnote-event-notes`: https://api.planningcenteronline.com/groups/v2/events/1/notes
///
/// Inbound Edges:
/// - `event-group-events`: https://api.planningcenteronline.com/groups/v2/groups/1/events
/// - `event-grouptype-events`: https://api.planningcenteronline.com/groups/v2/group_types/1/events
/// - `event-organization-events`: https://api.planningcenteronline.com/groups/v2/events
/// - `event-person-events`: https://api.planningcenteronline.com/groups/v2/people/1/events
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "attendance_requests_enabled": true,
///     "automated_reminder_enabled": true,
///     "canceled": true,
///     "canceled_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "location_type_preference": "string",
///     "multi_day": true,
///     "name": "string",
///     "reminders_sent": true,
///     "reminders_sent_at": "2000-01-01T12:00:00Z",
///     "repeating": true,
///     "starts_at": "2000-01-01T12:00:00Z",
///     "virtual_location_url": "string",
///     "visitors_count": 1
///   },
///   "relationships": {
///     "attendance_submitter": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "group": {
///       "data": {
///         "type": "Group",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     },
///     "repeating_event": {
///       "data": {
///         "type": "RepeatingEvent",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsEvent extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `group`: include associated group
  /// - `location`: include associated location
  static List<String> get canInclude => ['group', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['ends_at', 'name', 'starts_at'];

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at', 'name', 'starts_at'];

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
  static const kAttendanceRequestsEnabled = 'attendance_requests_enabled';
  static const kAutomatedReminderEnabled = 'automated_reminder_enabled';
  static const kCanceled = 'canceled';
  static const kCanceledAt = 'canceled_at';
  static const kDescription = 'description';
  static const kEndsAt = 'ends_at';
  static const kLocationTypePreference = 'location_type_preference';
  static const kMultiDay = 'multi_day';
  static const kName = 'name';
  static const kRemindersSent = 'reminders_sent';
  static const kRemindersSentAt = 'reminders_sent_at';
  static const kRepeating = 'repeating';
  static const kStartsAt = 'starts_at';
  static const kVirtualLocationUrl = 'virtual_location_url';
  static const kVisitorsCount = 'visitors_count';

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
  bool get isAttendanceRequestsEnabled =>
      _attributes[kAttendanceRequestsEnabled] == true;
  bool get isAutomatedReminderEnabled =>
      _attributes[kAutomatedReminderEnabled] == true;
  bool get isCanceled => _attributes[kCanceled] == true;
  DateTime get canceledAt => DateTime.parse(_attributes[kCanceledAt] ?? '');
  String get description => _attributes[kDescription] ?? '';
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  String get locationTypePreference =>
      _attributes[kLocationTypePreference] ?? '';
  bool get isMultiDay => _attributes[kMultiDay] == true;
  String get name => _attributes[kName] ?? '';
  bool get isRemindersSent => _attributes[kRemindersSent] == true;
  DateTime get remindersSentAt =>
      DateTime.parse(_attributes[kRemindersSentAt] ?? '');
  bool get isRepeating => _attributes[kRepeating] == true;
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  String get virtualLocationUrl => _attributes[kVirtualLocationUrl] ?? '';
  int get visitorsCount => _attributes[kVisitorsCount] ?? 0;

  // typed getters for each relationship

  PcoGroupsGroup? get includedGroup =>
      _firstOrNull<PcoGroupsGroup>(relationships['group']);
  PcoGroupsLocation? get includedLocation =>
      _firstOrNull<PcoGroupsLocation>(relationships['location']);

  // Class Constructors
  PcoGroupsEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsEvent] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsEvent(
      {String? id,
      bool? isAttendanceRequestsEnabled,
      bool? isAutomatedReminderEnabled,
      bool? isCanceled,
      DateTime? canceledAt,
      String? description,
      DateTime? endsAt,
      String? locationTypePreference,
      bool? isMultiDay,
      String? name,
      bool? isRemindersSent,
      DateTime? remindersSentAt,
      bool? isRepeating,
      DateTime? startsAt,
      String? virtualLocationUrl,
      int? visitorsCount,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsEvent.empty();
    obj._id = id;
    if (isAttendanceRequestsEnabled != null)
      obj._attributes['attendance_requests_enabled'] =
          isAttendanceRequestsEnabled;
    if (isAutomatedReminderEnabled != null)
      obj._attributes['automated_reminder_enabled'] =
          isAutomatedReminderEnabled;
    if (isCanceled != null) obj._attributes['canceled'] = isCanceled;
    if (canceledAt != null)
      obj._attributes['canceled_at'] = canceledAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (locationTypePreference != null)
      obj._attributes['location_type_preference'] = locationTypePreference;
    if (isMultiDay != null) obj._attributes['multi_day'] = isMultiDay;
    if (name != null) obj._attributes['name'] = name;
    if (isRemindersSent != null)
      obj._attributes['reminders_sent'] = isRemindersSent;
    if (remindersSentAt != null)
      obj._attributes['reminders_sent_at'] = remindersSentAt.toIso8601String();
    if (isRepeating != null) obj._attributes['repeating'] = isRepeating;
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (virtualLocationUrl != null)
      obj._attributes['virtual_location_url'] = virtualLocationUrl;
    if (visitorsCount != null)
      obj._attributes['visitors_count'] = visitorsCount;

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

  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  ///
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  ///
  /// - `my_groups`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsEvent>> get({
    String? id,
    PcoGroupsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsEvent] object
  /// using a path like this: `/groups/v2/events/[id]`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  ///
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  ///
  /// - `my_groups`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsEvent?> getSingle(
    String id, {
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `group`
  /// filter events from specific groups; provide an additional `group_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group&group_id=1,2,3`
  ///
  /// - `group_type`
  /// filter events from specific group types; provide an additional `group_type_id` param
  /// as a comma-separated list of IDs, ex: `?filter=group_type&group_type_id=1,2,3`
  ///
  /// - `my_groups`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsEvent>> getAll({
    String? id,
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsEvent>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsEvent] object
  /// using a path like this: `/groups/v2/groups/$groupId/events/[id]`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsEvent?> getSingleFromGroup(
    String groupId,
    String id, {
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsEvent>> getAllFromGroup(
    String groupId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsEvent>> getFromGroupType(
    String groupTypeId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/group_types/$groupTypeId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsEvent] object
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/events/[id]`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsEvent?> getSingleFromGroupType(
    String groupTypeId,
    String id, {
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/group_types/$groupTypeId/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsEvent>> getAllFromGroupType(
    String groupTypeId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/group_types/$groupTypeId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsEvent>> getFromPerson(
    String personId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/people/$personId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGroupsEvent] object
  /// using a path like this: `/groups/v2/people/$personId/events/[id]`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGroupsEvent?> getSingleFromPerson(
    String personId,
    String id, {
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/people/$personId/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGroupsEvent>> getAllFromPerson(
    String personId, {
    String? id,
    PcoGroupsEventQuery? query,
    bool includeAllRelated = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoGroupsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/people/$personId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsAttendance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/attendances`
  ///
  /// Available Query Filters:
  /// - `attended`
  Future<PcoCollection<PcoGroupsAttendance>> getAttendances(
      {PcoGroupsAttendanceQuery? query}) async {
    query ??= PcoGroupsAttendanceQuery();
    var url = '$apiEndpoint/attendances';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/group`
  Future<PcoCollection<PcoGroupsGroup>> getGroup(
      {PcoGroupsGroupQuery? query}) async {
    query ??= PcoGroupsGroupQuery();
    var url = '$apiEndpoint/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/location`
  Future<PcoCollection<PcoGroupsLocation>> getLocation(
      {PcoGroupsLocationQuery? query}) async {
    query ??= PcoGroupsLocationQuery();
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsEventNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/notes`
  Future<PcoCollection<PcoGroupsEventNote>> getNotes(
      {PcoGroupsEventNoteQuery? query}) async {
    query ??= PcoGroupsEventNoteQuery();
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoGroupsEventNote>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
