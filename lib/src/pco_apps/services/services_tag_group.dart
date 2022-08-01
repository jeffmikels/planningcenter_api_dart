/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.452442
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesTagGroupOrder { none }

/// Possible Inbound Filters:
/// - `arrangement` -> `?filter=arrangement` : -- no description
/// - `media` -> `?filter=media` : -- no description
/// - `person` -> `?filter=person` : -- no description
/// - `song` -> `?filter=song` : -- no description
enum PcoServicesTagGroupFilter { arrangement, media, person, song }

/// Creates a [PcoServicesTagGroupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeFolder`: include associated folder
/// - `includeTags`: include associated tags
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoServicesTagGroupQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoServicesTagGroup] objects can be requested with one or more of the following criteria:
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereTagsFor`: query on a specific tags_for, example: ?where[tags_for]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesTagGroupQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesTagGroupOrder, String> _orderMap = {};
  static String orderString(PcoServicesTagGroupOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesTagGroupFilter, String> _filterMap = {
    PcoServicesTagGroupFilter.arrangement: 'arrangement',
    PcoServicesTagGroupFilter.media: 'media',
    PcoServicesTagGroupFilter.person: 'person',
    PcoServicesTagGroupFilter.song: 'song',
  };
  static String filterString(PcoServicesTagGroupFilter filter) =>
      _filterMap[filter]!;

  PcoServicesTagGroupQuery({
    /// include associated folder
    /// when true, adds `?include=folder` to url
    bool includeFolder = false,

    /// include associated tags
    /// when true, adds `?include=tags` to url
    bool includeTags = false,

    /// when true, adds `?include=folder,tags` to url parameters
    bool includeAll = false,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `tags_for`
    /// query on a specific tags_for, url example: ?where[tags_for]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereTagsFor,
    PcoServicesTagGroupFilter? filterBy,

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
    if (includeAll || includeFolder) include.add('folder');
    if (includeAll || includeTags) include.add('tags');

    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereTagsFor != null)
      where.add(PlanningCenterApiWhere.parse('tags_for', whereTagsFor));
  }
}

/// This class represents a PCO Services TagGroup Object
///
/// - Application:        services
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/tag_groups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesTagGroup.fromJson()` constructor.
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
/// A tag group contains tags
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `isRequired` (ro) -> PCO: `required`
/// - `isAllowMultipleSelections` (ro) -> PCO: `allow_multiple_selections`
/// - `tagsFor` (ro) -> PCO: `tags_for`
/// - `serviceTypeFolderName` (ro) -> PCO: `service_type_folder_name`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `folder-taggroup-folder`: https://api.planningcenteronline.com/services/v2/tag_groups/1/folder
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/services/v2/tag_groups/1/tags
///
/// Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/services/v2/tag_groups
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
///     "name": "string",
///     "required": true,
///     "allow_multiple_selections": true,
///     "tags_for": "string",
///     "service_type_folder_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesTagGroup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/tag_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `folder`: include associated folder
  /// - `tags`: include associated tags
  static List<String> get canInclude => ['folder', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
  static List<String> get canQuery => ['name', 'tags_for'];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kRequired = 'required';
  static const kAllowMultipleSelections = 'allow_multiple_selections';
  static const kTagsFor = 'tags_for';
  static const kServiceTypeFolderName = 'service_type_folder_name';

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
  bool get isAllowMultipleSelections =>
      _attributes[kAllowMultipleSelections] == true;
  String get tagsFor => _attributes[kTagsFor] ?? '';
  String get serviceTypeFolderName => _attributes[kServiceTypeFolderName] ?? '';

  // typed getters for each relationship

  PcoServicesFolder? get includedFolder =>
      _firstOrNull<PcoServicesFolder>(relationships['folder']);
  List<PcoServicesTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoServicesTag>() ?? [];

  // Class Constructors
  PcoServicesTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesTagGroup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesTagGroup] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesTagGroup(
      {String? id,
      String? name,
      bool? isRequired,
      bool? isAllowMultipleSelections,
      String? tagsFor,
      String? serviceTypeFolderName,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesTagGroup.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (isRequired != null) obj._attributes['required'] = isRequired;
    if (isAllowMultipleSelections != null)
      obj._attributes['allow_multiple_selections'] = isAllowMultipleSelections;
    if (tagsFor != null) obj._attributes['tags_for'] = tagsFor;
    if (serviceTypeFolderName != null)
      obj._attributes['service_type_folder_name'] = serviceTypeFolderName;

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

  /// Will get a collection of [PcoServicesTagGroup] objects (expecting many)
  /// using a path like this: `/services/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `arrangement`
  /// - `media`
  /// - `person`
  /// - `song`
  static Future<PcoCollection<PcoServicesTagGroup>> get({
    String? id,
    PcoServicesTagGroupQuery? query,
    bool includeAll = false,
    bool includeFolder = false,
    bool includeTags = false,
  }) async {
    query ??= PcoServicesTagGroupQuery();
    if (includeAll) query.include.addAll(PcoServicesTagGroup.canInclude);
    if (includeFolder) query.include.add('folder');
    if (includeTags) query.include.add('tags');
    var url = '/services/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/folder`
  Future<PcoCollection<PcoServicesFolder>> getFolder(
      {PcoServicesFolderQuery? query}) async {
    query ??= PcoServicesFolderQuery();
    var url = '$apiEndpoint/folder';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags(
      {PcoServicesTagQuery? query}) async {
    query ??= PcoServicesTagQuery();
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
