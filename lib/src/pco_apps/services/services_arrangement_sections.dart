/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.467175
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services ArrangementSections Object
/// 
/// - Application:        services
/// - Id:                 arrangement_sections
/// - Type:               ArrangementSections
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// 
/// ## Description
/// Sections of an Arrangement, derived from its chord chart
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `sections` (ro) -> PCO: `sections`
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
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `arrangementsections-arrangement-sections`: https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ArrangementSections",
///   "id": "1",
///   "attributes": {
///     "sections": []
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesArrangementSection extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ArrangementSections';
  static const String kTypeId = 'arrangement_sections';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'arrangementsections-arrangement-sections';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/arrangements/1/sections';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

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
  static const kSections = 'sections';


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

  List get sections => attributes[kSections] ?? [];
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesArrangementSection._() : super(kPcoApplication, kTypeString);
  PcoServicesArrangementSection.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesArrangementSection] objects (expecting many)
  /// using a path like this: `/services/v2/songs/$songId/arrangements/$arrangementId/sections`
  static Future<PcoCollection<PcoServicesArrangementSection>> getSectionsFromSongAndArrangement(String songId,String arrangementId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesArrangementSection.canInclude;
    var url = '/services/v2/songs/$songId/arrangements/$arrangementId/sections';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesArrangementSection>(url, query: query, apiVersion:kApiVersion);
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
