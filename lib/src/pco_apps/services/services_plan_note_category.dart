/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.544527
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services PlanNoteCategory Object
/// 
/// - Application:        services
/// - Id:                 plan_note_category
/// - Type:               PlanNoteCategory
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// 
/// ## Description
/// A category of plan notes for an entire Service Type.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `name` (ro) -> PCO: `name`
/// - `sequence` (ro) -> PCO: `sequence`
/// - `updatedAt` (ro) -> PCO: `updated_at`
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
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
/// - `plannotecategory-servicetype-plan_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanNoteCategory",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "sequence": 1,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanNoteCategory extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNoteCategory';
  static const String kTypeId = 'plan_note_category';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plannotecategory-servicetype-plan_note_categories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories';

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
  static const kCreatedAt = 'created_at';
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kUpdatedAt = 'updated_at';


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

  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesPlanNoteCategory._() : super(kPcoApplication, kTypeString);
  PcoServicesPlanNoteCategory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category`
  static Future<PcoCollection<PcoServicesPlanNoteCategory>> getFromServiceTypeAndPlanTemplateAndNote(String serviceTypeId,String planTemplateId,String noteId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category';
    
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_note_categories`
  static Future<PcoCollection<PcoServicesPlanNoteCategory>> getFromServiceType(String serviceTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_note_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url, query: query, apiVersion:kApiVersion);
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
