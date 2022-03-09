/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.438933
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Calendar ReportTemplate Object
/// 
/// - Application:        calendar
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/report_templates
/// 
/// Description:
/// A template for generating a report.
/// 
/// Example:
/// ```json
/// {
///   "type": "ReportTemplate",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "created_at": "string",
///     "description": "string",
///     "title": "string",
///     "updated_at": "string"
///   },
///   "relationships": {}
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
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/calendar/v2/report_templates
/// 
/// All Actions:
/// NONE
///
class PcoCalendarReportTemplate extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/report_templates';

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
  static const kBody = 'body';
  static const kCreatedAt = 'created_at';
  static const kDescription = 'description';
  static const kTitle = 'title';
  static const kUpdatedAt = 'updated_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['body','description','title'];

  @override
  List<String> get updateAllowed => ['body','description','title'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get body => attributes[kBody] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get title => attributes[kTitle] ?? '';
  

  // setters for object attributes

  
  /// The contents of the report template
  set body(String s) => attributes[kBody] = s;
  
  /// A summarization of the report
  set description(String s) => attributes[kDescription] = s;
  
  /// The title of the report
  set title(String s) => attributes[kTitle] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarReportTemplate._() : super(kPcoApplication, kTypeString);
  PcoCalendarReportTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoCalendarReportTemplate] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/report_templates`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoCalendarReportTemplate() {
    return PcoCalendarReportTemplate._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/calendar/v2/report_templates';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `/calendar/v2/report_templates`
  static Future<PcoCollection<PcoCalendarReportTemplate>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
    var url = '/calendar/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url, query: query, apiVersion:kApiVersion);
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
