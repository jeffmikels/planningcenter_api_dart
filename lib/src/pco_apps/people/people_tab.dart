/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.757482
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People Tab Object
///
/// - Application:        people
/// - Id:                 tab
/// - Type:               Tab
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/tabs
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/tabs
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleTab()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleTab.fromJson()` constructor.
/// - Manually create an object using the `PcoPeopleTab.manual()` constructor.
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
/// - `slug` (rw) -> PCO: `slug`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `field_definitions`: include associated field_definitions
/// - `field_options`: include associated field_options
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
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
  static const String kApiVersion = '2021-08-17';
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
  List<String> get createAllowed => ['name', 'sequence', 'slug'];

  @override
  List<String> get updateAllowed => ['name', 'sequence', 'slug'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get sequence => _attributes[kSequence] ?? 0;
  String get slug => _attributes[kSlug] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? _attributes.remove(kSequence) : _attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set slug(String? x) =>
      (x == null) ? _attributes.remove(kSlug) : _attributes[kSlug] = x;

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
  /// - FIELDS USED WHEN CREATING: `name`, `sequence`, `slug`
  /// - FIELDS USED WHEN UPDATING: `name`, `sequence`, `slug`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
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

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/tabs`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  static Future<PcoCollection<PcoPeopleTab>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/tabs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/tab`
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldData(
    String fieldDataId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldDefinitions) query.include.add('field_definitions');
    if (includeFieldOptions) query.include.add('field_options');
    var url = '/people/v2/field_data/$fieldDataId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/tab`
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldDefinition(
    String fieldDefinitionId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldDefinitions = false,
    bool includeFieldOptions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleTab.canInclude);
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
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeFieldOptions = false,
    bool includeTab = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoPeopleTab.canInclude);
    if (includeFieldOptions) query.include.add('field_options');
    if (includeTab) query.include.add('tab');
    var url = '$apiEndpoint/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_options`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
