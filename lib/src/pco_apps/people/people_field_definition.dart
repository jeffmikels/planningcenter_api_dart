/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:38.887406
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
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
      (x == null) ? attributes.remove(kDataType) : _attributes[kDataType] = x;

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? attributes.remove(kSequence) : _attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set slug(String? x) =>
      (x == null) ? attributes.remove(kSlug) : _attributes[kSlug] = x;

  /// pass `null` to remove key from attributes
  set config(String? x) =>
      (x == null) ? attributes.remove(kConfig) : _attributes[kConfig] = x;

  /// pass `null` to remove key from attributes
  set deletedAt(DateTime? x) => (x == null)
      ? attributes.remove(kDeletedAt)
      : _attributes[kDeletedAt] = x.toIso8601String();

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedFieldOptions<T extends PcoResource>() =>
      relationships['field_options']?.cast<T>() ?? [];
  List<T> includedTab<T extends PcoResource>() =>
      relationships['tab']?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleFieldDefinition.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleFieldDefinition.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldDefinition] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/tabs/$tabId/field_definitions`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleFieldDefinition(String tabId,
      {String? dataType,
      String? name,
      int? sequence,
      String? slug,
      String? config,
      DateTime? deletedAt}) {
    var obj = PcoPeopleFieldDefinition.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/tabs/$tabId/field_definitions';
    if (dataType != null) obj.dataType = dataType;
    if (name != null) obj.name = name;
    if (sequence != null) obj.sequence = sequence;
    if (slug != null) obj.slug = slug;
    if (config != null) obj.config = config;
    if (deletedAt != null) obj.deletedAt = deletedAt;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions`
  ///
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  ///
  static Future<PcoCollection<PcoPeopleFieldDefinition>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/field_definition`
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getFromFieldData(
      String fieldDataId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
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
      String tabId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/tabs/$tabId/field_definitions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '$apiEndpoint/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/tab`
  Future<PcoCollection<PcoPeopleTab>> getTab(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '$apiEndpoint/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
