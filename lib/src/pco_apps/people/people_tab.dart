/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.333361
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get slug => attributes[kSlug] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set sequence(int? x) =>
      (x == null) ? attributes.remove(kSequence) : attributes[kSequence] = x;

  /// pass `null` to remove key from attributes
  set slug(String? x) =>
      (x == null) ? attributes.remove(kSlug) : attributes[kSlug] = x;

  // Class Constructors
  PcoPeopleTab.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleTab.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleTab] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/tabs`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleTab({String? name, int? sequence, String? slug}) {
    var obj = PcoPeopleTab.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/tabs';
    if (name != null) obj.name = name;
    if (sequence != null) obj.sequence = sequence;
    if (slug != null) obj.slug = slug;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/tabs`
  ///
  /// Available Query Filters:
  /// - `with_field_definitions`
  static Future<PcoCollection<PcoPeopleTab>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/tabs';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/tab`
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldData(
      String fieldDataId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/tab`
  static Future<PcoCollection<PcoPeopleTab>> getFromFieldDefinition(
      String fieldDefinitionId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions`
  ///
  /// Available Query Filters:
  /// - `with_deleted`
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '$apiEndpoint/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_options`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '$apiEndpoint/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
