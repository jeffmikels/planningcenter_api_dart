/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.554551
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services ReportTemplate Object
/// 
/// - Application:        services
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/report_templates
/// 
/// ## Description
/// A template for generating reports
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (ro) -> PCO: `body`
/// - `title` (ro) -> PCO: `title`
/// - `type` (ro) -> PCO: `type`
/// - `isDefault` (ro) -> PCO: `default`
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
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/services/v2/report_templates
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ReportTemplate",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "title": "string",
///     "type": "string",
///     "default": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesReportTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'reporttemplate-organization-report_templates';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/report_templates';

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
  static const kTitle = 'title';
  static const kType = 'type';
  static const kDefault = 'default';


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

  String get body => attributes[kBody] ?? '';
  String get title => attributes[kTitle] ?? '';
  String get type => attributes[kType] ?? '';
  bool get isDefault => attributes[kDefault] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesReportTemplate._() : super(kPcoApplication, kTypeString);
  PcoServicesReportTemplate.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/report_templates`
  /// 
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  static Future<PcoCollection<PcoServicesReportTemplate>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesReportTemplate.canInclude;
    var url = '/services/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url, query: query, apiVersion:kApiVersion);
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
