/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.712372
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People FieldDefinition Object
///
/// - Application:        people
/// - Id:                 field_definition
/// - Type:               FieldDefinition
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleFieldDefinition()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleFieldDefinition.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleFieldDefinition.manual()` constructor.
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `field_options`: include associated field_options
/// - `tab`: include associated tab
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `config`: (URLParameter), query on a specific config, example: ?where[config]=string
/// - `data_type`: (URLParameter), query on a specific data_type, example: ?where[data_type]=string
/// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
/// - `tab_id`: (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `config`: (URLParameter), prefix with a hyphen (-config) to reverse the order
/// - `data_type`: (URLParameter), prefix with a hyphen (-data_type) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
/// - `tab_id`: (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
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
  String get dataType => _attributes[kDataType] ?? '';
  String get name => _attributes[kName] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  String get slug => _attributes[kSlug] ?? '';
  String get config => _attributes[kConfig] ?? '';
  DateTime get deletedAt => DateTime.parse(_attributes[kDeletedAt] ?? '');
  String get tabId => _attributes[kTabId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set dataType(String? x) =>
      (x == null) ? _attributes.remove(kDataType) : _attributes[kDataType] = x;

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set slug(String? x) =>
      (x == null) ? _attributes.remove(kSlug) : _attributes[kSlug] = x;

  /// pass `null` to remove key from attributes
  set config(String? x) =>
      (x == null) ? _attributes.remove(kConfig) : _attributes[kConfig] = x;

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
  /// - FIELDS USED WHEN CREATING: `dataType`, `name`, `sequence`, `slug`, `config`, `deletedAt`
  /// - FIELDS USED WHEN UPDATING: `dataType`, `name`, `sequence`, `slug`, `config`, `deletedAt`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
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

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  static Future<PcoCollection<PcoPeopleFieldDefinition>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/field_definition`
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getFromFieldData(
    String fieldDataId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '/people/v2/field_data/$fieldDataId/field_definition';

    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_definitions`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getFromTab(
    String tabId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDefinition.canInclude);
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
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/tab`
  Future<PcoCollection<PcoPeopleTab>> getTab({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleFieldDefinition.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
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
