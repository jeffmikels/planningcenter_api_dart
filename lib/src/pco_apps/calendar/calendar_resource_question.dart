/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.451016
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Calendar ResourceQuestion Object
/// 
/// - Application:        calendar
/// - Id:                 resource_question
/// - Type:               ResourceQuestion
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_questions
/// 
/// Description:
/// A question to answer when requesting to book a room or resource.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceQuestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "choices": "string",
///     "description": "string",
///     "multiple_select": true,
///     "optional": true,
///     "position": 1,
///     "question": "string"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
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
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `resourcequestion-organization-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resource_questions
/// - `resourcequestion-resource-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
/// 
/// All Actions:
/// NONE
///
class PcoCalendarResourceQuestion extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceQuestion';
  static const String kTypeId = 'resource_question';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcequestion-organization-resource_questions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_questions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_questions';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','kind','updated_at'];

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
  static const kKind = 'kind';
  static const kUpdatedAt = 'updated_at';
  static const kChoices = 'choices';
  static const kDescription = 'description';
  static const kMultipleSelect = 'multiple_select';
  static const kOptional = 'optional';
  static const kPosition = 'position';
  static const kQuestion = 'question';


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

  String get kind => attributes[kKind] ?? '';
  String get choices => attributes[kChoices] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isMultipleSelect => attributes[kMultipleSelect] == true;
  bool get isOptional => attributes[kOptional] == true;
  int get position => attributes[kPosition] ?? 0;
  String get question => attributes[kQuestion] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarResourceQuestion._() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceQuestion.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_questions`
  static Future<PcoCollection<PcoCalendarResourceQuestion>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    var url = '/calendar/v2/resource_questions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_questions`
  static Future<PcoCollection<PcoCalendarResourceQuestion>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_questions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion:kApiVersion);
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
