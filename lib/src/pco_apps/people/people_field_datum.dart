/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.354161
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO People FieldDatum Object
///
/// - Application:        people
/// - Id:                 field_datum
/// - Type:               FieldDatum
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_data
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/people/1/field_data
///
/// ## Description
/// A field datum is an individual piece of data for a custom field.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
/// - `file` (ro) -> PCO: `file`
/// - `fileSize` (ro) -> PCO: `file_size`
/// - `fileContentType` (ro) -> PCO: `file_content_type`
/// - `fileName` (ro) -> PCO: `file_name`
/// - `fieldDefinitionId` (wo) -> PCO: `field_definition_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `field_definition`: include associated field_definition
/// - `field_option`: include associated field_option
/// - `tab`: include associated tab
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
/// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
/// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
/// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
/// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
/// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
/// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fielddefinition-fielddatum-field_definition`: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `person-fielddatum-person`: https://api.planningcenteronline.com/people/v2/field_data/1/person
/// - `tab-fielddatum-tab`: https://api.planningcenteronline.com/people/v2/field_data/1/tab
///
/// Inbound Edges:
/// - `fielddatum-organization-field_data`: https://api.planningcenteronline.com/people/v2/field_data
/// - `fielddatum-person-field_data`: https://api.planningcenteronline.com/people/v2/people/1/field_data
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FieldDatum",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "file": "string",
///     "file_size": 1,
///     "file_content_type": "string",
///     "file_name": "string"
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
///         "id": "1"
///       }
///     },
///     "customizable": {
///       "data": {
///         "type": "Customizable",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFieldDatum extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldDatum';
  static const String kTypeId = 'field_datum';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/field_data';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/people/1/field_data';

  /// possible includes with parameter ?include=a,b
  /// - `field_definition`: include associated field_definition
  /// - `field_option`: include associated field_option
  /// - `tab`: include associated tab
  static List<String> get canInclude =>
      ['field_definition', 'field_option', 'tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
  /// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
  /// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery =>
      ['file', 'file_content_type', 'file_name', 'file_size', 'value'];

  /// possible orderings with parameter ?order=
  /// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
  /// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy =>
      ['file', 'file_content_type', 'file_name', 'file_size', 'value'];

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
  static const kValue = 'value';
  static const kFile = 'file';
  static const kFileSize = 'file_size';
  static const kFileContentType = 'file_content_type';
  static const kFileName = 'file_name';
  static const kFieldDefinitionId = 'field_definition_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['value', 'field_definition_id'];

  @override
  List<String> get updateAllowed => ['value', 'field_definition_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => attributes[kValue] ?? '';
  String get file => attributes[kFile] ?? '';
  int get fileSize => attributes[kFileSize] ?? 0;
  String get fileContentType => attributes[kFileContentType] ?? '';
  String get fileName => attributes[kFileName] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set value(String? x) =>
      (x == null) ? attributes.remove(kValue) : attributes[kValue] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set fieldDefinitionId(String? x) => (x == null)
      ? attributes.remove(kFieldDefinitionId)
      : attributes[kFieldDefinitionId] = x;
  String get fieldDefinitionId => attributes[kFieldDefinitionId] ?? '';

  // Class Constructors
  PcoPeopleFieldDatum.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleFieldDatum.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldDatum] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/people/$peopleId/field_data`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleFieldDatum(String peopleId, {String? value}) {
    var obj = PcoPeopleFieldDatum.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/people/$peopleId/field_data';
    if (value != null) obj.value = value;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/field_data`
  static Future<PcoCollection<PcoPeopleFieldDatum>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/field_data';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldDatum] objects (expecting one)
  /// using a path like this: `/people/v2/people/$peopleId/field_data`
  static Future<PcoCollection<PcoPeopleFieldDatum>> getFieldDataFromPeople(
      String peopleId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/people/$peopleId/field_data';

    return PcoCollection.fromApiCall<PcoPeopleFieldDatum>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_definition`
  Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinition(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '$apiEndpoint/field_definition';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_option`
  Future<PcoCollection<PcoPeopleFieldOption>> getFieldOption(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '$apiEndpoint/field_option';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/tab`
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
