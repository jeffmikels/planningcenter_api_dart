/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.770107
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `position` -> `?order=position`
enum PcoGroupsGroupTypeOrder { name, position }

/// Possible Inbound Filters:
/// - `churchCenterVisible` -> `?filter=church_center_visible` : -- no description
/// - `notChurchCenterVisible` -> `?filter=not_church_center_visible` : -- no description
enum PcoGroupsGroupTypeFilter { churchCenterVisible, notChurchCenterVisible }

/// Creates a [PcoGroupsGroupTypeQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGroupsGroupType] objects can be requested with one or more of the following criteria:
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
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
/// - `PcoGroupsGroupTypeOrder.name` : will order by `name`
/// - `PcoGroupsGroupTypeOrder.position` : will order by `position`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGroupsGroupTypeQuery extends PlanningCenterApiQuery {
  static final Map<PcoGroupsGroupTypeOrder, String> _orderMap = {
    PcoGroupsGroupTypeOrder.name: 'name',
    PcoGroupsGroupTypeOrder.position: 'position',
  };
  static String orderString(PcoGroupsGroupTypeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGroupsGroupTypeFilter, String> _filterMap = {
    PcoGroupsGroupTypeFilter.churchCenterVisible: 'church_center_visible',
    PcoGroupsGroupTypeFilter.notChurchCenterVisible:
        'not_church_center_visible',
  };
  static String filterString(PcoGroupsGroupTypeFilter filter) =>
      _filterMap[filter]!;

  PcoGroupsGroupTypeQuery({
    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,
    PcoGroupsGroupTypeFilter? filterBy,
    PcoGroupsGroupTypeOrder? orderBy,

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

    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Groups GroupType Object
///
/// - Application:        groups
/// - Id:                 group_type
/// - Type:               GroupType
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/group_types
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGroupsGroupType.fromJson()` constructor.
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
/// - `isChurchCenterVisible` (ro) -> PCO: `church_center_visible`
/// - `isChurchCenterMapVisible` (ro) -> PCO: `church_center_map_visible`
/// - `color` (ro) -> PCO: `color`
/// - `defaultGroupSettings` (ro) -> PCO: `default_group_settings`
/// - `description` (ro) -> PCO: `description`
/// - `name` (ro) -> PCO: `name`
/// - `position` (ro) -> PCO: `position`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-grouptype-events`: https://api.planningcenteronline.com/groups/v2/group_types/1/events
/// - `group-grouptype-groups`: https://api.planningcenteronline.com/groups/v2/group_types/1/groups
/// - `resource-grouptype-resources`: https://api.planningcenteronline.com/groups/v2/group_types/1/resources
///
/// Inbound Edges:
/// - `grouptype-group-group_type`: https://api.planningcenteronline.com/groups/v2/groups/1/group_type
/// - `grouptype-organization-group_types`: https://api.planningcenteronline.com/groups/v2/group_types
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "GroupType",
///   "id": "1",
///   "attributes": {
///     "church_center_visible": true,
///     "church_center_map_visible": true,
///     "color": "string",
///     "default_group_settings": "string",
///     "description": "string",
///     "name": "string",
///     "position": 1
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsGroupType extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'GroupType';
  static const String kTypeId = 'group_type';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/groups/v2/group_types';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  static List<String> get canQuery => ['id'];

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
  static const kChurchCenterVisible = 'church_center_visible';
  static const kChurchCenterMapVisible = 'church_center_map_visible';
  static const kColor = 'color';
  static const kDefaultGroupSettings = 'default_group_settings';
  static const kDescription = 'description';
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
  bool get isChurchCenterVisible => _attributes[kChurchCenterVisible] == true;
  bool get isChurchCenterMapVisible =>
      _attributes[kChurchCenterMapVisible] == true;
  String get color => _attributes[kColor] ?? '';
  String get defaultGroupSettings => _attributes[kDefaultGroupSettings] ?? '';
  String get description => _attributes[kDescription] ?? '';
  String get name => _attributes[kName] ?? '';
  int get position => _attributes[kPosition] ?? 0;

  // Class Constructors
  PcoGroupsGroupType.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGroupsGroupType.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGroupsGroupType] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGroupsGroupType(
      {String? id,
      bool? isChurchCenterVisible,
      bool? isChurchCenterMapVisible,
      String? color,
      String? defaultGroupSettings,
      String? description,
      String? name,
      int? position,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGroupsGroupType.empty();
    obj._id = id;
    if (isChurchCenterVisible != null)
      obj._attributes['church_center_visible'] = isChurchCenterVisible;
    if (isChurchCenterMapVisible != null)
      obj._attributes['church_center_map_visible'] = isChurchCenterMapVisible;
    if (color != null) obj._attributes['color'] = color;
    if (defaultGroupSettings != null)
      obj._attributes['default_group_settings'] = defaultGroupSettings;
    if (description != null) obj._attributes['description'] = description;
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

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `/groups/v2/group_types`
  ///
  /// Available Query Filters:
  /// - `church_center_visible`
  /// - `not_church_center_visible`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroupType>> get({
    String? id,
    PcoGroupsGroupTypeQuery? query,
  }) async {
    query ??= PcoGroupsGroupTypeQuery();

    var url = '/groups/v2/group_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGroupsGroupType] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/group_type`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGroupsGroupType>> getFromGroup(
    String groupId, {
    String? id,
    PcoGroupsGroupTypeQuery? query,
  }) async {
    query ??= PcoGroupsGroupTypeQuery();

    var url = '/groups/v2/groups/$groupId/group_type';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsGroupType>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/events`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `not_canceled`
  /// - `upcoming`
  Future<PcoCollection<PcoGroupsEvent>> getEvents(
      {PcoGroupsEventQuery? query}) async {
    query ??= PcoGroupsEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/groups`
  Future<PcoCollection<PcoGroupsGroup>> getGroups(
      {PcoGroupsGroupQuery? query}) async {
    query ??= PcoGroupsGroupQuery();
    var url = '$apiEndpoint/groups';
    return PcoCollection.fromApiCall<PcoGroupsGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGroupsResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/group_types/1/resources`
  Future<PcoCollection<PcoGroupsResource>> getResources(
      {PcoGroupsResourceQuery? query}) async {
    query ??= PcoGroupsResourceQuery();
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoGroupsResource>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
