/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.886684
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
/// 
/// Description:
/// Create an Attachment Type for each type of file you might want only specific people to see. When you attach a file, you can specify an attachment type to then be able to link the file to a position.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `attachmenttype-organization-attachment_types`: https://api.planningcenteronline.com/services/v2/attachment_types
/// 
/// All Actions:
/// NONE
///
class PcoServicesAttachmentType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AttachmentType';
  static const String kTypeId = 'attachment_type';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'attachmenttype-organization-attachment_types';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachment_types';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/attachment_types';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesAttachmentType._() : super(kPcoApplication, kTypeString);
  PcoServicesAttachmentType.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesAttachmentType] objects (expecting many)
  /// using a path like this: `/services/v2/attachment_types`
  static Future<PcoCollection<PcoServicesAttachmentType>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachmentType.canInclude;
    var url = '/services/v2/attachment_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAttachmentType>(url, query: query, apiVersion:kApiVersion);
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
