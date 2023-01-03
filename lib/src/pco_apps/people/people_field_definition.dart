/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.094108
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `config` -> `?order=config`
/// - `dataType` -> `?order=data_type`
/// - `deletedAt` -> `?order=deleted_at`
/// - `name` -> `?order=name`
/// - `sequence` -> `?order=sequence`
/// - `slug` -> `?order=slug`
/// - `tabId` -> `?order=tab_id`
enum PcoPeopleFieldDefinitionOrder {
  config,
  dataType,
  deletedAt,
  name,
  sequence,
  slug,
  tabId
}

/// Possible Inbound Filters:
/// - `includeDeleted` -> `?filter=include_deleted` : By default, deleted fields are not included. Pass filter=include_deleted to include them.
enum PcoPeopleFieldDefinitionFilter { includeDeleted }

/// Creates a [PcoPeopleFieldDefinitionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeFieldOptions`: include associated field_options
/// - `includeTab`: include associated tab
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleFieldDefinitionQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleFieldDefinition] objects can be requested with one or more of the following criteria:
/// - `whereConfig`: query on a specific config, example: ?where[config]=string
/// - `whereDataType`: query on a specific data_type, example: ?where[data_type]=string
/// - `whereDeletedAt`: query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereSequence`: query on a specific sequence, example: ?where[sequence]=1
/// - `whereSlug`: query on a specific slug, example: ?where[slug]=string
/// - `whereTabId`: query on a specific tab_id, example: ?where[tab_id]=primary_key
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
/// - `PcoPeopleFieldDefinitionOrder.config` : will order by `config`
/// - `PcoPeopleFieldDefinitionOrder.dataType` : will order by `data_type`
/// - `PcoPeopleFieldDefinitionOrder.deletedAt` : will order by `deleted_at`
/// - `PcoPeopleFieldDefinitionOrder.name` : will order by `name`
/// - `PcoPeopleFieldDefinitionOrder.sequence` : will order by `sequence`
/// - `PcoPeopleFieldDefinitionOrder.slug` : will order by `slug`
/// - `PcoPeopleFieldDefinitionOrder.tabId` : will order by `tab_id`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFieldDefinitionQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFieldDefinitionOrder, String> _orderMap = {
    PcoPeopleFieldDefinitionOrder.config: 'config',
    PcoPeopleFieldDefinitionOrder.dataType: 'data_type',
    PcoPeopleFieldDefinitionOrder.deletedAt: 'deleted_at',
    PcoPeopleFieldDefinitionOrder.name: 'name',
    PcoPeopleFieldDefinitionOrder.sequence: 'sequence',
    PcoPeopleFieldDefinitionOrder.slug: 'slug',
    PcoPeopleFieldDefinitionOrder.tabId: 'tab_id',
  };
  static String orderString(PcoPeopleFieldDefinitionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFieldDefinitionFilter, String> _filterMap = {
    PcoPeopleFieldDefinitionFilter.includeDeleted: 'include_deleted',
  };
  static String filterString(PcoPeopleFieldDefinitionFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleFieldDefinitionQuery({
    /// include associated field_options
    /// when true, adds `?include=field_options` to url
    bool includeFieldOptions = false,

    /// include associated tab
    /// when true, adds `?include=tab` to url
    bool includeTab = false,

    /// when true, adds `?include=field_options,tab` to url parameters
    bool includeAllRelated = false,

    /// Query by `config`
    /// query on a specific config, url example: ?where[config]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereConfig,

    /// Query by `data_type`
    /// query on a specific data_type, url example: ?where[data_type]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDataType,

    /// Query by `deleted_at`
    /// query on a specific deleted_at, url example: ?where[deleted_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDeletedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `sequence`
    /// query on a specific sequence, url example: ?where[sequence]=1
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSequence,

    /// Query by `slug`
    /// query on a specific slug, url example: ?where[slug]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSlug,

    /// Query by `tab_id`
    /// query on a specific tab_id, url example: ?where[tab_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereTabId,
    PcoPeopleFieldDefinitionFilter? filterBy,
    PcoPeopleFieldDefinitionOrder? orderBy,

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
    if (includeAllRelated || includeFieldOptions) include.add('field_options');
    if (includeAllRelated || includeTab) include.add('tab');

    if (whereConfig != null)
      where.add(PlanningCenterApiWhere.parse('config', whereConfig));
    if (whereDataType != null)
      where.add(PlanningCenterApiWhere.parse('data_type', whereDataType));
    if (whereDeletedAt != null)
      where.add(PlanningCenterApiWhere.parse('deleted_at', whereDeletedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereSequence != null)
      where.add(PlanningCenterApiWhere.parse('sequence', whereSequence));
    if (whereSlug != null)
      where.add(PlanningCenterApiWhere.parse('slug', whereSlug));
    if (whereTabId != null)
      where.add(PlanningCenterApiWhere.parse('tab_id', whereTabId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People FieldDefinition Object
///
/// - Application:        people
/// - Id:                 field_definition
/// - Type:               FieldDefinition
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleFieldDefinition()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleFieldDefinition.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### DELETING
/// Deleting a field definition internally sets its `deleted_at` attribute to the current time.
///
/// ## Description
/// A field definition represents a custom field -- its name, data type, etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `dataType` (rw) -> PCO: `data_type`
/// - `name` (rw) -> PCO: `name`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `slug` (rw) -> PCO: `slug`
/// - `config` (rw) -> PCO: `config`
/// - `deletedAt` (rw) -> PCO: `deleted_at`
/// - `tabId` (ro) -> PCO: `tab_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fieldoption-fielddefinition-field_options`: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - `tab-fielddefinition-tab`: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
///
/// Inbound Edges:
/// - `fielddefinition-fielddatum-field_definition`: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
/// - `fielddefinition-organization-field_definitions`: https://api.planningcenteronline.com/people/v2/field_definitions
/// - `fielddefinition-tab-field_definitions`: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FieldDefinition",
///   "id": "1",
///   "attributes": {
///     "data_type": "string",
///     "name": "string",
///     "sequence": 1,
///     "slug": "string",
///     "config": "string",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "tab_id": "primary_key"
///   },
///   "relationships": {
///     "tab": {
///       "data": {
///         "type": "Tab",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFieldDefinition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldDefinition';
  static const String kTypeId = 'field_definition';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/field_definitions';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions';

  /// possible includes with parameter ?include=a,b
  /// - `field_options`: include associated field_options
  /// - `tab`: include associated tab
  static List<String> get canInclude => ['field_options', 'tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `config`: (URLParameter), query on a specific config, example: ?where[config]=string
  /// - `data_type`: (URLParameter), query on a specific data_type, example: ?where[data_type]=string
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  /// - `tab_id`: (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
  static List<String> get canQuery => [
        'config',
        'data_type',
        'deleted_at',
        'name',
        'sequence',
        'slug',
        'tab_id'
      ];

  /// possible orderings with parameter ?order=
  /// - `config`: (URLParameter), prefix with a hyphen (-config) to reverse the order
  /// - `data_type`: (URLParameter), prefix with a hyphen (-data_type) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
  /// - `tab_id`: (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
  static List<String> get canOrderBy => [
        'config',
        'data_type',
        'deleted_at',
        'name',
        'sequence',
        'slug',
        'tab_id'
      ];

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
  static const kDataType = 'data_type';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kSlug = 'slug';
  static const kConfig = 'config';
  static const kDeletedAt = 'deleted_at';
  static const kTabId = 'tab_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['data_type', 'name', 'sequence', 'slug', 'config', 'deleted_at'];

  @override
  List<String> get updateAllowed =>
      ['data_type', 'name', 'sequence', 'slug', 'config', 'deleted_at'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get dataType => _getAttribute<String>(kDataType, '');
  String get name => _getAttribute<String>(kName, '');
  int get sequence => _getAttribute<int>(kSequence, 0);
  String get slug => _getAttribute<String>(kSlug, '');
  String get config => _getAttribute<String>(kConfig, '');
  DateTime get deletedAt => _getAttribute<DateTime>(kDeletedAt, DateTime(0));
  String get tabId => _getAttribute<String>(kTabId, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set dataType(String? x) =>
      (x == null) ? _attributes.remove(kDataType) : _attributes[kDataType] = x;

  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  ///
  /// pass `null` to remove key from attributes
  set slug(String? x) =>
      (x == null) ? _attributes.remove(kSlug) : _attributes[kSlug] = x;

  ///
  /// pass `null` to remove key from attributes
  set config(String? x) =>
      (x == null) ? _attributes.remove(kConfig) : _attributes[kConfig] = x;

  ///
  /// pass `null` to remove key from attributes
  set deletedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kDeletedAt)
      : _attributes[kDeletedAt] = x.toIso8601String();

  // typed getters for each relationship

  List<PcoPeopleFieldOption> get includedFieldOptions =>
      (relationships['field_options'] as List?)?.cast<PcoPeopleFieldOption>() ??
      [];
  PcoPeopleTab? get includedTab =>
      _firstOrNull<PcoPeopleTab>(relationships['tab']);

  // Class Constructors
  PcoPeopleFieldDefinition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleFieldDefinition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldDefinition] object using this endpoint: `https://api.planningcenteronline.com/people/v2/tabs/$tabId/field_definitions`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `dataType`, `name`, `sequence`, `slug`, `config`, `deletedAt`
  /// - FIELDS USED WHEN UPDATING: `dataType`, `name`, `sequence`, `slug`, `config`, `deletedAt`
  factory PcoPeopleFieldDefinition(
      {required String tabId,
      String? id,
      String? dataType,
      String? name,
      int? sequence,
      String? slug,
      String? config,
      DateTime? deletedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleFieldDefinition.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/tabs/$tabId/field_definitions';
    obj._attributes['tab_id'] = tabId;
    if (dataType != null) obj._attributes['data_type'] = dataType;
    if (name != null) obj._attributes['name'] = name;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (slug != null) obj._attributes['slug'] = slug;
    if (config != null) obj._attributes['config'] = config;
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();

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

  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldDefinition>> get({
    String? id,
    PcoPeopleFieldDefinitionQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldDefinition] object
  /// using a path like this: `/people/v2/field_definitions/[id]`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldDefinition?> getSingle(
    String id, {
    PcoPeopleFieldDefinitionQuery? query,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_definitions/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getAll({
    String? id,
    PcoPeopleFieldDefinitionQuery? query,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/field_definition`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getFromFieldData(
    String fieldDataId, {
    PcoPeopleFieldDefinitionQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data/$fieldDataId/field_definition';

    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_definitions`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getFromTab(
    String tabId, {
    String? id,
    PcoPeopleFieldDefinitionQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/tabs/$tabId/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleFieldDefinition] object
  /// using a path like this: `/people/v2/tabs/$tabId/field_definitions/[id]`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleFieldDefinition?> getSingleFromTab(
    String tabId,
    String id, {
    PcoPeopleFieldDefinitionQuery? query,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/tabs/$tabId/field_definitions/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_definitions`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getAllFromTab(
    String tabId, {
    String? id,
    PcoPeopleFieldDefinitionQuery? query,
    bool includeAllRelated = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/tabs/$tabId/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions(
      {PcoPeopleFieldOptionQuery? query}) async {
    query ??= PcoPeopleFieldOptionQuery();
    var url = '$apiEndpoint/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/tab`
  Future<PcoCollection<PcoPeopleTab>> getTab({PcoPeopleTabQuery? query}) async {
    query ??= PcoPeopleTabQuery();
    var url = '$apiEndpoint/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
