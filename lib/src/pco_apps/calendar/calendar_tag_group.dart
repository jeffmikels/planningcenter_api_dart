/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.216455
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
enum PcoCalendarTagGroupOrder { name }

/// Possible Inbound Filters:
/// - `required` -> `?filter=required` : -- no description
enum PcoCalendarTagGroupFilter { required }

/// Creates a [PcoCalendarTagGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvents`: include associated events
/// - `includeTags`: include associated tags
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarTagGroupQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarTagGroup] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
/// - `PcoCalendarTagGroupOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarTagGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarTagGroupOrder, String> _orderMap = {
    PcoCalendarTagGroupOrder.name: 'name',
  };
  static String orderString(PcoCalendarTagGroupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarTagGroupFilter, String> _filterMap = {
    PcoCalendarTagGroupFilter.required: 'required',
  };
  static String filterString(PcoCalendarTagGroupFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarTagGroupQuery({
    /// include associated events
    /// when true, adds `?include=events` to url
    bool includeEvents = false,

    /// include associated tags
    /// when true, adds `?include=tags` to url
    bool includeTags = false,

    /// when true, adds `?include=events,tags` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoCalendarTagGroupFilter? filterBy,
    PcoCalendarTagGroupOrder? orderBy,

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
    if (includeAll || includeEvents) include.add('events');
    if (includeAll || includeTags) include.add('tags');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar TagGroup Object
///
/// - Application:        calendar
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarTagGroup.fromJson()` constructor.
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
/// A grouping of tags for organizational purposes.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (ro) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isRequired` (ro) -> PCO: `required`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
///
/// Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - `taggroup-tag-tag_group`: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "required": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarTagGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/tag_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `events`: include associated events
  /// - `tags`: include associated tags
  static List<String> get canInclude => ['events', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'name', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kName = 'name';
  static const kUpdatedAt = 'updated_at';
  static const kRequired = 'required';

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
  String get name => _attributes[kName] ?? '';
  bool get isRequired => _attributes[kRequired] == true;

  // typed getters for each relationship

  List<PcoCalendarEvent> get includedEvents =>
      (relationships['events'] as List?)?.cast<PcoCalendarEvent>() ?? [];
  List<PcoCalendarTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoCalendarTag>() ?? [];

  // Class Constructors
  PcoCalendarTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarTagGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarTagGroup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarTagGroup(
      {String? id,
      DateTime? createdAt,
      String? name,
      DateTime? updatedAt,
      bool? isRequired,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarTagGroup.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isRequired != null) obj._attributes['required'] = isRequired;

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

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `required`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTagGroup>> get({
    String? id,
    PcoCalendarTagGroupQuery? query,
    bool includeAll = false,
    bool includeEvents = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarTagGroupQuery();
    if (includeAll) query.include.addAll(PcoCalendarTagGroup.canInclude);
    if (includeEvents) query.include.add('events');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/tag_group`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarTagGroup>> getFromTag(
    String tagId, {
    String? id,
    PcoCalendarTagGroupQuery? query,
    bool includeAll = false,
    bool includeEvents = false,
    bool includeTags = false,
  }) async {
    query ??= PcoCalendarTagGroupQuery();
    if (includeAll) query.include.addAll(PcoCalendarTagGroup.canInclude);
    if (includeEvents) query.include.add('events');
    if (includeTags) query.include.add('tags');
    var url = '/calendar/v2/tags/$tagId/tag_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events`
  Future<PcoCollection<PcoCalendarEvent>> getEvents(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoCalendarTag>> getTags(
      {PcoCalendarTagQuery? query}) async {
    query ??= PcoCalendarTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
