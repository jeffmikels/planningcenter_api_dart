/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.056384
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `position` -> `?order=position`
enum PcoCalendarTagOrder { name, position }

/// Possible Inbound Filters:
/// - `individual` -> `?filter=individual` : -- no description
enum PcoCalendarTagFilter { individual }

/// Creates a [PcoCalendarTagQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeTagGroup`: include associated tag_group
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarTagQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarTag] objects can be requested with one or more of the following criteria:
/// - `whereColor`: query on a specific color, example: ?where[color]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePosition`: query on a specific position, example: ?where[position]=1.42
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `PcoCalendarTagOrder.name` : will order by `name`
/// - `PcoCalendarTagOrder.position` : will order by `position`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarTagQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarTagOrder, String> _orderMap = {
    PcoCalendarTagOrder.name: 'name',
    PcoCalendarTagOrder.position: 'position',
  };
  static String orderString(PcoCalendarTagOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarTagFilter, String> _filterMap = {
    PcoCalendarTagFilter.individual: 'individual',
  };
  static String filterString(PcoCalendarTagFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarTagQuery({
    /// include associated tag_group
    /// when true, adds `?include=tag_group` to url
    bool includeTagGroup = false,

    /// Query by `color`
    /// query on a specific color, url example: ?where[color]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereColor,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `position`
    /// query on a specific position, url example: ?where[position]=1.42
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePosition,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCalendarTagFilter? filterBy,
    PcoCalendarTagOrder? orderBy,

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
    if (includeTagGroup) include.add('tag_group');

    if (whereColor != null)
      where.add(PlanningCenterApiWhere.parse('color', whereColor));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePosition != null)
      where.add(PlanningCenterApiWhere.parse('position', wherePosition));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar Tag Object
///
/// - Application:        calendar
/// - Id:                 tag
/// - Type:               Tag
/// - ApiVersion:         2021-07-20
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
  static const String kApiVersion = '2021-07-20';
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
  double get position => _attributes[kPosition]?.toDouble() ?? 0.0;

  // typed getters for each relationship

  PcoCalendarTagGroup? get includedTagGroup =>
      _firstOrNull<PcoCalendarTagGroup>(relationships['tag_group']);

  // Class Constructors
  PcoCalendarTag.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarTag.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarTag] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarTag(
      {String? id,
      String? color,
      DateTime? createdAt,
      String? name,
      double? position,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarTag.empty();
    obj._id = id;
    if (color != null) obj._attributes['color'] = color;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (position != null) obj._attributes['position'] = position;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags`
  ///
  /// Available Query Filters:
  /// - `individual`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTag>> get({
    String? id,
    PcoCalendarTagQuery? query,
    bool getAll = false,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    if (getAll) query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarTag] object
  /// using a path like this: `/calendar/v2/tags/[id]`
  ///
  /// Available Query Filters:
  /// - `individual`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarTag?> getSingle(
    String id, {
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tags/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags`
  ///
  /// Available Query Filters:
  /// - `individual`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarTag>> getAll({
    String? id,
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/tags`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTag>> getFromEventInstance(
    String eventInstanceId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool getAll = false,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    if (getAll) query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarTag] object
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/tags/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarTag?> getSingleFromEventInstance(
    String eventInstanceId,
    String id, {
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/tags`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarTag>> getAllFromEventInstance(
    String eventInstanceId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/tags`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTag>> getFromEvent(
    String eventId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool getAll = false,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    if (getAll) query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/events/$eventId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarTag] object
  /// using a path like this: `/calendar/v2/events/$eventId/tags/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarTag?> getSingleFromEvent(
    String eventId,
    String id, {
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/events/$eventId/tags/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/tags`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarTag>> getAllFromEvent(
    String eventId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/events/$eventId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/tags`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTag>> getFromTagGroup(
    String tagGroupId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool getAll = false,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    if (getAll) query.getAll = true;

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarTag] object
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/tags/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarTag?> getSingleFromTagGroup(
    String tagGroupId,
    String id, {
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();

    if (includeTagGroup) query.include.add('tag_group');
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups/$tagGroupId/tags`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarTag>> getAllFromTagGroup(
    String tagGroupId, {
    String? id,
    PcoCalendarTagQuery? query,
    bool includeTagGroup = false,
  }) async {
    query ??= PcoCalendarTagQuery();
    query.getAll = true;

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
  Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances(
      {PcoCalendarEventInstanceQuery? query}) async {
    query ??= PcoCalendarEventInstanceQuery();
    var url = '$apiEndpoint/event_instances';
    return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/events`
  Future<PcoCollection<PcoCalendarEvent>> getEvents(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group`
  Future<PcoCollection<PcoCalendarTagGroup>> getTagGroup(
      {PcoCalendarTagGroupQuery? query}) async {
    query ??= PcoCalendarTagGroupQuery();
    var url = '$apiEndpoint/tag_group';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
