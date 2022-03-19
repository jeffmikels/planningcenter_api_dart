/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:05.298876
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People FieldOption Object
/// 
/// - Application:        people
/// - Id:                 field_option
/// - Type:               FieldOption
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// 
/// ## Description
/// A field option represents an individual option for a custom field of type "select" or "checkboxes".
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `value` (rw) -> PCO: `value`
/// - `sequence` (rw) -> PCO: `sequence`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `fieldoption-fielddefinition-field_options`: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - `fieldoption-tab-field_options`: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FieldOption",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "sequence": 1
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldOption';
  static const String kTypeId = 'field_option';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['sequence','value'];

  /// possible orderings with parameter ?order=
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['sequence','value'];

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
  static const kSequence = 'sequence';


  // getters and setters
  @override
  List<String> get createAllowed => ['value', 'sequence'];

  @override
  List<String> get updateAllowed => ['value', 'sequence'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get value => attributes[kValue] ?? '';
  int get sequence => attributes[kSequence] ?? 0;  
  
  // setters for object attributes
  
  /// pass `null` to remove key from attributes
  set value(String? x) => (x == null) ? attributes.remove(kValue) : attributes[kValue] = x;
  
  /// pass `null` to remove key from attributes
  set sequence(int? x) => (x == null) ? attributes.remove(kSequence) : attributes[kSequence] = x;  

  // Class Constructors
  PcoPeopleFieldOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeopleFieldOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleFieldOption] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/field_definitions/$fieldDefinitionId/field_options`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleFieldOption(String fieldDefinitionId, { String? value, int? sequence }) {
    var obj = PcoPeopleFieldOption.empty();
    obj._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/field_definitions/$fieldDefinitionId/field_options';
    if (value != null) obj.value = value;
    if (sequence != null) obj.sequence = sequence;
    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/$fieldDataId/field_option`
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromFieldData(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/field_option';
    
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/$fieldDefinitionId/field_options`
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromFieldDefinition(String fieldDefinitionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/$tabId/field_options`
  static Future<PcoCollection<PcoPeopleFieldOption>> getFromTab(String tabId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/tabs/$tabId/field_options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
