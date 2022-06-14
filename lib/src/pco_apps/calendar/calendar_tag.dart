/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.693444
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar Tag Object
///
/// - Application:        calendar
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/tags
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarTag.fromJson()` constructor.
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
/// An organizational tag that can be applied to events.
///
/// Applied tags can be used to filter events on the calendar or
/// filter events for reports, iCal feeds, kiosk, and the widget.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `color` (ro) -> PCO: `color`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (ro) -> PCO: `name`
/// - `position` (ro) -> PCO: `position`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `tag_group`: include associated tag_group
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `color`: (URLParameter), query on a specific color, example: ?where[color]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `position`: (URLParameter), query on a specific position, example: ?where[position]=1.42
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `eventinstance-tag-event_instances`: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
/// - `event-tag-events`: https://api.planningcenteronline.com/calendar/v2/tags/1/events
/// - `taggroup-tag-tag_group`: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
///
/// Inbound Edges:
/// - `tag-eventinstance-tags`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags
/// - `tag-event-tags`: https://api.planningcenteronline.com/calendar/v2/events/1/tags
/// - `tag-organization-tags`: https://api.planningcenteronline.com/calendar/v2/tags
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Tag",
///   "id": "1",
///   "attributes": {
///     "color": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "position": 1.42,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarTag extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/tags';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `tag_group`: include associated tag_group
  static List<String> get canInclude => ['tag_group'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `color`: (URLParameter), query on a specific color, example: ?where[color]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `position`: (URLParameter), query on a specific position, example: ?where[position]=1.42
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['color', 'created_at', 'id', 'name', 'position', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `position`: (URLParameter), prefix with a hyphen (-position) to reverse the order
  static List<String> get canOrderBy => ['name', 'position'];

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
  static const kColor = 'color';
  static const kCreatedAt = 'created_at';
  static const kName = 'name';
  static const kPosition = 'position';
  static const kUpdatedAt = 'updated_at';

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
  String get color => _attributes[kColor] ?? '';
  String get name => _attributes[kName] ?? '';
  double get position => _attributes[kPosition] ?? 0;

  // typed getters for each relationship
  // the code generator cannot determine the resource type of the relationships, so for type safety, the user should

  List<T> includedTagGroup<T extends PcoResource>() =>
      relationships['tag_group']?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarTag.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags`
  ///
  /// Available Query Filters:
  /// - `individual`
  static Future<PcoCollection<PcoCalendarTag>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/tags`
  static Future<PcoCollection<PcoCalendarTag>> getFromEventInstance(
    String eventInstanceId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/tags`
  static Future<PcoCollection<PcoCalendarTag>> getFromEvent(
    String eventId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/events/$eventId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/tags`
  static Future<PcoCollection<PcoCalendarTag>> getFromTagGroup(
    String tagGroupId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventInstance] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances`
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvent = false,
    bool includeEventTimes = false,
    bool includeResourceBookings = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarTag.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeEventTimes) query.include.add('event_times');
    if (includeResourceBookings) query.include.add('resource_bookings');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/events`
  Future<PcoCollection<PcoCalendarEvent>> getEvents({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeAttachments = false,
    bool includeOwner = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarTag.canInclude);
    if (includeAttachments) query.include.add('attachments');
    if (includeOwner) query.include.add('owner');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group`
  Future<PcoCollection<PcoCalendarTagGroup>> getTagGroup({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeEvents = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarTag.canInclude);
    if (includeEvents) query.include.add('events');
    if (includeTags) query.include.add('tags');
    var url = '$apiEndpoint/tag_group';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }
}
