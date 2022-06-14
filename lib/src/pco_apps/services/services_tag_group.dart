/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.855463
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `folder`: include associated folder
/// - `tags`: include associated tags
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `tags_for`: (URLParameter), query on a specific tags_for, example: ?where[tags_for]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
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

  List<PcoServicesFolder> get includedFolder =>
      (relationships['folder'] as List?)?.cast<PcoServicesFolder>() ?? [];
  List<PcoServicesTag> get includedTags =>
      (relationships['tags'] as List?)?.cast<PcoServicesTag>() ?? [];

  // Class Constructors
  PcoServicesTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

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
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFolder = false,
    bool includeTags = false,
  }) async {
    query ??= PlanningCenterApiQuery();
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
  Future<PcoCollection<PcoServicesFolder>> getFolder({
    PlanningCenterApiQuery? query,
    bool includeServiceTypes = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeServiceTypes) query.include.add('service_types');
    var url = '$apiEndpoint/folder';
    return PcoCollection.fromApiCall<PcoServicesFolder>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoServicesTag>> getTags({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoServicesTag>(url,
        query: query, apiVersion: apiVersion);
  }
}
