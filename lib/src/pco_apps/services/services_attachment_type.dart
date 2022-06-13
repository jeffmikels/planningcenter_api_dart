/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.598259
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services AttachmentType Object
///
/// - Application:        services
/// - Id:                 attachment_type
/// - Type:               AttachmentType
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachment_types
/// - Create Endpoint:    NONE
///
/// ## Description
/// Create an Attachment Type for each type of file you might want only specific people to see. When you attach a file, you can specify an attachment type to then be able to link the file to a position.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `aliases` (ro) -> PCO: `aliases`
/// - `isCapoedChordCharts` (ro) -> PCO: `capoed_chord_charts`
/// - `isChordCharts` (ro) -> PCO: `chord_charts`
/// - `exclusions` (ro) -> PCO: `exclusions`
/// - `isLyrics` (ro) -> PCO: `lyrics`
/// - `isNumberCharts` (ro) -> PCO: `number_charts`
/// - `isNumeralCharts` (ro) -> PCO: `numeral_charts`
/// - `isBuiltIn` (ro) -> PCO: `built_in`
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
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AttachmentType",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "aliases": "string",
///     "capoed_chord_charts": true,
///     "chord_charts": true,
///     "exclusions": "string",
///     "lyrics": true,
///     "number_charts": true,
///     "numeral_charts": true,
///     "built_in": true
///   },
///   "relationships": {
///     "attachment_type_group": {
///       "data": {
///         "type": "AttachmentTypeGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAttachmentType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentType';
  static const String kTypeId = 'attachment_type';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/attachment_types';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kAliases = 'aliases';
  static const kCapoedChordCharts = 'capoed_chord_charts';
  static const kChordCharts = 'chord_charts';
  static const kExclusions = 'exclusions';
  static const kLyrics = 'lyrics';
  static const kNumberCharts = 'number_charts';
  static const kNumeralCharts = 'numeral_charts';
  static const kBuiltIn = 'built_in';

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
  String get name => attributes[kName] ?? '';
  String get aliases => attributes[kAliases] ?? '';
  bool get isCapoedChordCharts => attributes[kCapoedChordCharts] == true;
  bool get isChordCharts => attributes[kChordCharts] == true;
  String get exclusions => attributes[kExclusions] ?? '';
  bool get isLyrics => attributes[kLyrics] == true;
  bool get isNumberCharts => attributes[kNumberCharts] == true;
  bool get isNumeralCharts => attributes[kNumeralCharts] == true;
  bool get isBuiltIn => attributes[kBuiltIn] == true;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoServicesAttachmentType.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesAttachmentType.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `/services/v2/attachment_types`
  static Future<PcoCollection<PcoServicesAttachmentType>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
    var url = '/services/v2/attachment_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url,
        query: query, apiVersion: kApiVersion);
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
