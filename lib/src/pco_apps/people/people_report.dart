/// This file was generated on 2022-03-04T20:00:53.749390


import '../../pco.dart';

/// This class represents a PCO People Report Object
/// 
/// - Application:        people
/// - Id:                 report
/// - Type:               Report
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/reports
/// 
/// Description:
/// A report is editable liquid syntax that provides  a powerful tool for presenting your Lists however you want.
/// 
/// Example:
/// ```json
/// {
///   "type": "Report",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "body": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - created_by: include associated created_by 
/// - updated_by: include associated updated_by 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `body`: (URLParameter), query on a specific body, example: ?where[body]=string
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `body`: (URLParameter), prefix with a hyphen (-body) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-report-created_by`: https://api.planningcenteronline.com/people/v2/reports/1/created_by
/// - `person-report-updated_by`: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
/// 
/// All Inbound Edges:
/// - `report-organization-reports`: https://api.planningcenteronline.com/people/v2/reports
/// 
/// All Actions:
/// NONE
///
class PcoPeopleReport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Report';
  static const String kTypeId = 'report';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'report-organization-reports';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/reports';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by 
  /// - `updated_by`: include associated updated_by 
  static List<String> get canInclude => ['created_by','updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `body`: (URLParameter), query on a specific body, example: ?where[body]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['body','created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `body`: (URLParameter), prefix with a hyphen (-body) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['body','created_at','name','updated_at'];

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
  static const kBody = 'body';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','body'];

  @override
  List<String> get updateAllowed => ['name','body'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get body => attributes[kBody] ?? '';
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  set body(String s) => attributes[kBody] = s;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleReport() : super(kPcoApplication, kTypeString);
  PcoPeopleReport.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleReport] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/reports`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleReport.create() {
    return PcoPeopleReport()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/reports';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `/people/v2/reports`
  static Future<PcoCollection<PcoPeopleReport>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleReport.canInclude;
    var url = '/people/v2/reports';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleReport>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/updated_by`
  Future<PcoCollection<PcoPeoplePerson>> getUpdatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/updated_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
