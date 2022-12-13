/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.149312
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `organizationId` -> `?order=organization_id`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleListCategoryOrder { createdAt, name, organizationId, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleListCategoryFilter { none }

/// Creates a [PcoPeopleListCategoryQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeLists`: include associated lists
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleListCategoryQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleListCategory] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereOrganizationId`: query on a specific organization_id, example: ?where[organization_id]=primary_key
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
/// - `PcoPeopleListCategoryOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleListCategoryOrder.name` : will order by `name`
/// - `PcoPeopleListCategoryOrder.organizationId` : will order by `organization_id`
/// - `PcoPeopleListCategoryOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleListCategoryQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleListCategoryOrder, String> _orderMap = {
    PcoPeopleListCategoryOrder.createdAt: 'created_at',
    PcoPeopleListCategoryOrder.name: 'name',
    PcoPeopleListCategoryOrder.organizationId: 'organization_id',
    PcoPeopleListCategoryOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleListCategoryOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleListCategoryFilter, String> _filterMap = {};
  static String filterString(PcoPeopleListCategoryFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleListCategoryQuery({
    /// include associated lists
    /// when true, adds `?include=lists` to url
    bool includeLists = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `organization_id`
    /// query on a specific organization_id, url example: ?where[organization_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereOrganizationId,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleListCategoryOrder? orderBy,

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
    if (includeLists) include.add('lists');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereOrganizationId != null)
      where.add(
          PlanningCenterApiWhere.parse('organization_id', whereOrganizationId));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People ListCategory Object
///
/// - Application:        people
/// - Id:                 list_category
/// - Type:               ListCategory
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/list_categories
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/list_categories
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleListCategory()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleListCategory.fromJson()` constructor.
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
/// A List Category
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `organizationId` (ro) -> PCO: `organization_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `list-listcategory-lists`: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
///
/// Inbound Edges:
/// - `listcategory-list-category`: https://api.planningcenteronline.com/people/v2/lists/1/category
/// - `listcategory-organization-list_categories`: https://api.planningcenteronline.com/people/v2/list_categories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ListCategory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleListCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListCategory';
  static const String kTypeId = 'list_category';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/list_categories';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/list_categories';

  /// possible includes with parameter ?include=a,b
  /// - `lists`: include associated lists
  static List<String> get canInclude => ['lists'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'name', 'organization_id', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'name', 'organization_id', 'updated_at'];

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
  static const kName = 'name';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kOrganizationId = 'organization_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get organizationId => _attributes[kOrganizationId] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // typed getters for each relationship

  List<PcoPeopleList> get includedLists =>
      (relationships['lists'] as List?)?.cast<PcoPeopleList>() ?? [];

  // Class Constructors
  PcoPeopleListCategory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleListCategory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleListCategory] object using this endpoint: `https://api.planningcenteronline.com/people/v2/list_categories`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`
  /// - FIELDS USED WHEN UPDATING: `name`
  factory PcoPeopleListCategory(
      {String? id,
      String? name,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? organizationId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleListCategory.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/list_categories';
    if (name != null) obj._attributes['name'] = name;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (organizationId != null)
      obj._attributes['organization_id'] = organizationId;

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

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `/people/v2/list_categories`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleListCategory>> get({
    String? id,
    PcoPeopleListCategoryQuery? query,
    bool includeLists = false,
  }) async {
    query ??= PcoPeopleListCategoryQuery();

    if (includeLists) query.include.add('lists');
    var url = '/people/v2/list_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/category`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleListCategory>> getCategoryFromList(
    String listId, {
    PcoPeopleListCategoryQuery? query,
    bool includeLists = false,
  }) async {
    query ??= PcoPeopleListCategoryQuery();

    if (includeLists) query.include.add('lists');
    var url = '/people/v2/lists/$listId/category';

    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/list_categories/1/lists`
  Future<PcoCollection<PcoPeopleList>> getLists(
      {PcoPeopleListQuery? query}) async {
    query ??= PcoPeopleListQuery();
    var url = '$apiEndpoint/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
