/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.611390
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `group`: include associated group
/// - `location`: include associated location
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// - `group-event-group`: https://api.planningcenteronline.com/groups/v2/events/1/group
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
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
///     "virtual_location_url": "string"
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

  // typed getters for each relationship

  PcoGroupsGroup? get includedGroup =>
      _firstOrNull<PcoGroupsGroup>(relationships['group']);
  PcoGroupsLocation? get includedLocation =>
      _firstOrNull<PcoGroupsLocation>(relationships['location']);

  // Class Constructors
  PcoGroupsEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
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
  /// - `not_canceled`
  /// - `upcoming`
  static Future<PcoCollection<PcoGroupsEvent>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  static Future<PcoCollection<PcoGroupsEvent>> getFromGroup(
    String groupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/groups/$groupId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types/$groupTypeId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  static Future<PcoCollection<PcoGroupsEvent>> getFromGroupType(
    String groupTypeId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroup) query.include.add('group');
    if (includeLocation) query.include.add('location');
    var url = '/groups/v2/group_types/$groupTypeId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `/groups/v2/people/$personId/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  static Future<PcoCollection<PcoGroupsEvent>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroup = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsEvent.canInclude);
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
  Future<PcoCollection<PcoGroupsAttendance>> getAttendances({
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '$apiEndpoint/attendances';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/group`
  Future<PcoCollection<PcoGroupsGroup>> getGroup({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeGroupType = false,
    bool includeLocation = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGroupsEvent.canInclude);
    if (includeGroupType) query.include.add('group_type');
    if (includeLocation) query.include.add('location');
    var url = '$apiEndpoint/group';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsLocation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/location`
  Future<PcoCollection<PcoGroupsLocation>> getLocation({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
