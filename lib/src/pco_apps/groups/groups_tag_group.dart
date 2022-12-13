/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.273464
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `position` -> `?order=position`
enum PcoGroupsTagGroupOrder { name, position }

/// Possible Inbound Filters:
/// - `public` -> `?filter=public` : Filter tag groups that are visible on public pages
enum PcoGroupsTagGroupFilter { public }

/// Creates a [PcoGroupsTagGroupQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsTagGroup] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
/// - `PcoGroupsTagGroupOrder.name` : will order by `name`
/// - `PcoGroupsTagGroupOrder.position` : will order by `position`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsTagGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsTagGroupOrder, String> _orderMap = {
    PcoGroupsTagGroupOrder.name: 'name',
    PcoGroupsTagGroupOrder.position: 'position',
  };
  static String orderString(PcoGroupsTagGroupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsTagGroupFilter, String> _filterMap = {
    PcoGroupsTagGroupFilter.public: 'public',
  };
  static String filterString(PcoGroupsTagGroupFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsTagGroupQuery({
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    PcoGroupsTagGroupFilter? filterBy,
    PcoGroupsTagGroupOrder? orderBy,

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

    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups TagGroup Object
///
/// - Application:        groups
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/tag_groups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsTagGroup.fromJson()` constructor.
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
/// - `isDisplayPublicly` (ro) -> PCO: `display_publicly`
/// - `isMultipleOptionsEnabled` (ro) -> PCO: `multiple_options_enabled`
/// - `name` (ro) -> PCO: `name`
/// - `position` (ro) -> PCO: `position`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags
///
/// Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/groups/v2/tag_groups
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
///     "display_publicly": true,
///     "multiple_options_enabled": true,
///     "name": "string",
///     "position": 1
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsTagGroup extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/tag_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['name'];

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
  static const kDisplayPublicly = 'display_publicly';
  static const kMultipleOptionsEnabled = 'multiple_options_enabled';
  static const kName = 'name';
  static const kPosition = 'position';

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
  bool get isDisplayPublicly => _attributes[kDisplayPublicly] == true;
  bool get isMultipleOptionsEnabled =>
      _attributes[kMultipleOptionsEnabled] == true;
  String get name => _attributes[kName] ?? '';
  int get position => _attributes[kPosition] ?? 0;

  // Class Constructors
  PcoGroupsTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsTagGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsTagGroup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsTagGroup(
      {String? id,
      bool? isDisplayPublicly,
      bool? isMultipleOptionsEnabled,
      String? name,
      int? position,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsTagGroup.empty();
    obj._id = id;
    if (isDisplayPublicly != null)
      obj._attributes['display_publicly'] = isDisplayPublicly;
    if (isMultipleOptionsEnabled != null)
      obj._attributes['multiple_options_enabled'] = isMultipleOptionsEnabled;
    if (name != null) obj._attributes['name'] = name;
    if (position != null) obj._attributes['position'] = position;

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

  /// Will get a collection of [PcoGroupsTagGroup] objects (expecting many)
  /// using a path like this: `/groups/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `public`
  /// Filter tag groups that are visible on public pages
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsTagGroup>> get({
    String? id,
    PcoGroupsTagGroupQuery? query,
  }) async {
    query ??= PcoGroupsTagGroupQuery();

    var url = '/groups/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/tag_groups/1/tags`
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
