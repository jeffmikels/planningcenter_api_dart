/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.125583
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
/// - `sequence` -> `?order=sequence`
/// - `slug` -> `?order=slug`
enum PcoPeopleTabOrder { name, sequence, slug }

/// Possible Inbound Filters:
/// - `withFieldDefinitions` -> `?filter=with_field_definitions` : -- no description
enum PcoPeopleTabFilter { withFieldDefinitions }

/// Creates a [PcoPeopleTabQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeFieldDefinitions`: include associated field_definitions
/// - `includeFieldOptions`: include associated field_options
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleTabQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleTab] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereSequence`: query on a specific sequence, example: ?where[sequence]=1
/// - `whereSlug`: query on a specific slug, example: ?where[slug]=string
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
/// - `PcoPeopleTabOrder.name` : will order by `name`
/// - `PcoPeopleTabOrder.sequence` : will order by `sequence`
/// - `PcoPeopleTabOrder.slug` : will order by `slug`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleTabQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleTabOrder, String> _orderMap = {
    PcoPeopleTabOrder.name: 'name',
    PcoPeopleTabOrder.sequence: 'sequence',
    PcoPeopleTabOrder.slug: 'slug',
  };
  static String orderString(PcoPeopleTabOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleTabFilter, String> _filterMap = {
    PcoPeopleTabFilter.withFieldDefinitions: 'with_field_definitions',
  };
  static String filterString(PcoPeopleTabFilter filter) => _filterMap[filter]!;

  PcoPeopleTabQuery({
    /// include associated field_definitions
    /// when true, adds `?include=field_definitions` to url
    bool includeFieldDefinitions = false,

    /// include associated field_options
    /// when true, adds `?include=field_options` to url
    bool includeFieldOptions = false,

    /// when true, adds `?include=field_definitions,field_options` to url parameters
    bool includeAllRelated = false,

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
    PcoPeopleTabFilter? filterBy,
    PcoPeopleTabOrder? orderBy,

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
    if (includeAllRelated || includeFieldDefinitions)
      include.add('field_definitions');
    if (includeAllRelated || includeFieldOptions) include.add('field_options');

    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereSequence != null)
      where.add(PlanningCenterApiWhere.parse('sequence', whereSequence));
    if (whereSlug != null)
      where.add(PlanningCenterApiWhere.parse('slug', whereSlug));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Tab Object
///
/// - Application:        people
/// - Id:                 tab
/// - Type:               Tab
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/tabs
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/tabs
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleTab()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleTab.fromJson()` constructor.
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
/// A tab is a custom tab and groups like field definitions.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `sequence` (rw) -> PCO: `sequence`
/// - `slug` (ro) -> PCO: `slug`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fielddefinition-tab-field_definitions`: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
/// - `fieldoption-tab-field_options`: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
///
/// Inbound Edges:
/// - `tab-fielddatum-tab`: https://api.planningcenteronline.com/people/v2/field_data/1/tab
/// - `tab-fielddefinition-tab`: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
/// - `tab-organization-tabs`: https://api.planningcenteronline.com/people/v2/tabs
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Tab",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "sequence": 1,
///     "slug": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleTab extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Tab';
  static const String kTypeId = 'tab';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/tabs';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/tabs';

  /// possible includes with parameter ?include=a,b
  /// - `field_definitions`: include associated field_definitions
  /// - `field_options`: include associated field_options
  static List<String> get canInclude => ['field_definitions', 'field_options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  static List<String> get canQuery => ['name', 'sequence', 'slug'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
  static List<String> get canOrderBy => ['name', 'sequence', 'slug'];

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
  static const kSequence = 'sequence';
  static const kSlug = 'slug';

  // getters and setters
  @override
  List<String> get createAllowed => ['name', 'sequence'];

  @override
  List<String> get updateAllowed => ['name', 'sequence'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _getAttribute<String>(kName, '');
  int get sequence => _getAttribute<int>(kSequence, 0);
  String get slug => _getAttribute<String>(kSlug, '');

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  // typed getters for each relationship

  List<PcoPeopleFieldDefinition> get includedFieldDefinitions =>
      (relationships['field_definitions'] as List?)
          ?.cast<PcoPeopleFieldDefinition>() ??
      [];
  List<PcoPeopleFieldOption> get includedFieldOptions =>
      (relationships['field_options'] as List?)?.cast<PcoPeopleFieldOption>() ??
      [];

  // Class Constructors
  PcoPeopleTab.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleTab.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleTab] object using this endpoint: `https://api.planningcenteronline.com/people/v2/tabs`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `sequence`
  /// - FIELDS USED WHEN UPDATING: `name`, `sequence`
  factory PcoPeopleTab(
      {String? id,
      String? name,
      int? sequence,
      String? slug,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleTab.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/tabs';
    if (name != null) obj._attributes['name'] = name;
    if (sequence != null) obj._attributes['sequence'] = sequence;
    if (slug != null) obj._attributes['slug'] = slug;

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

  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/tabs`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleTab>> get({
    String? id,
    PcoPeopleTabQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/tabs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleTab] object
  /// using a path like this: `/people/v2/tabs/[id]`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleTab?> getSingle(
    String id, {
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/tabs/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/tabs`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleTab>> getAll({
    String? id,
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/tabs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/tab`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldData(
    String fieldDataId, {
    String? id,
    PcoPeopleTabQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_data/$fieldDataId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleTab] object
  /// using a path like this: `/people/v2/field_data/$fieldDataId/tab/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleTab?> getSingleFromFieldData(
    String fieldDataId,
    String id, {
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_data/$fieldDataId/tab/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/tab`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleTab>> getAllFromFieldData(
    String fieldDataId, {
    String? id,
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_data/$fieldDataId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/tab`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldDefinition(
    String fieldDefinitionId, {
    String? id,
    PcoPeopleTabQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleTab] object
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/tab/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleTab?> getSingleFromFieldDefinition(
    String fieldDefinitionId,
    String id, {
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/tab`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleTab>> getAllFromFieldDefinition(
    String fieldDefinitionId, {
    String? id,
    PcoPeopleTabQuery? query,
    bool includeAllRelated = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PcoPeopleTabQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions(
      {PcoPeopleFieldDefinitionQuery? query}) async {
    query ??= PcoPeopleFieldDefinitionQuery();
    var url = '$apiEndpoint/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_options`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions(
      {PcoPeopleFieldOptionQuery? query}) async {
    query ??= PcoPeopleFieldOptionQuery();
    var url = '$apiEndpoint/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
