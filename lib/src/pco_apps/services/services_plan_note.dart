/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.928487
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services PlanNote Object
/// 
/// - Application:        services
/// - Id:                 plan_note
/// - Type:               PlanNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// Description:
/// A specific plan note within a single plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanNote",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "category_name": "string",
///     "content": "string"
///   },
///   "relationships": {
///     "plan_note_category": {
///       "data": {
///         "type": "PlanNoteCategory",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - plan_note_category: include associated plan_note_category 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
/// 
/// All Inbound Edges:
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// 
/// All Actions:
/// NONE
///
class PcoServicesPlanNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNote';
  static const String kTypeId = 'plan_note';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plannote-plan-notes';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes';

  /// possible includes with parameter ?include=a,b
  /// - `plan_note_category`: include associated plan_note_category 
  static List<String> get canInclude => ['plan_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

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
  static const kUpdatedAt = 'updated_at';
  static const kCategoryName = 'category_name';
  static const kContent = 'content';


  // getters and setters
  @override
  List<String> get createAllowed => ['content'];

  @override
  List<String> get updateAllowed => ['content'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get categoryName => attributes[kCategoryName] ?? '';
  String get content => attributes[kContent] ?? '';
  

  // setters for object attributes

  set content(String s) => attributes[kContent] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesPlanNote._() : super(kPcoApplication, kTypeString);
  PcoServicesPlanNote.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesPlanNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPlanNote(String serviceTypeId,String planTemplateId) {
    return PcoServicesPlanNote._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/notes`
  static Future<PcoCollection<PcoServicesPlanNote>> getNotesFromServiceTypeAndPlan(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes`
  static Future<PcoCollection<PcoServicesPlanNote>> getNotesFromServiceTypeAndPlanTemplate(String serviceTypeId,String planTemplateId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';
    
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category`
  Future<PcoCollection<PcoServicesPlanNoteCategory>> getPlanNoteCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
    var url = '$apiEndpoint/plan_note_category';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
