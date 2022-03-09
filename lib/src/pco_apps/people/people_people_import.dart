/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.315746
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People PeopleImport Object
/// 
/// - Application:        people
/// - Id:                 people_import
/// - Type:               PeopleImport
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports
/// 
/// Description:
/// A PeopleImport is a record of an ongoing or previous import from a CSV file.
/// 
/// Example:
/// ```json
/// {
///   "type": "PeopleImport",
///   "id": "1",
///   "attributes": {
///     "attribs": "string",
///     "status": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "processed_at": "2000-01-01T12:00:00Z",
///     "undone_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `status`: (URLParameter), query on a specific status, example: ?where[status]=value
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `peopleimportconflict-peopleimport-conflicts`: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// - `peopleimporthistory-peopleimport-histories`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
/// 
/// All Inbound Edges:
/// - `peopleimport-organization-people_imports`: https://api.planningcenteronline.com/people/v2/people_imports
/// 
/// All Actions:
/// NONE
///
class PcoPeoplePeopleImport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImport';
  static const String kTypeId = 'people_import';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'peopleimport-organization-people_imports';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `status`: (URLParameter), query on a specific status, example: ?where[status]=value
  static List<String> get canQuery => ['status'];

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
  static const kAttribs = 'attribs';
  static const kStatus = 'status';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kProcessedAt = 'processed_at';
  static const kUndoneAt = 'undone_at';


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

  String get attribs => attributes[kAttribs] ?? '';
  String get status => attributes[kStatus] ?? '';
  DateTime get processedAt => DateTime.parse(attributes[kProcessedAt] ?? '');
  DateTime get undoneAt => DateTime.parse(attributes[kUndoneAt] ?? '');
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeoplePeopleImport._() : super(kPcoApplication, kTypeString);
  PcoPeoplePeopleImport.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports`
  static Future<PcoCollection<PcoPeoplePeopleImport>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImport.canInclude;
    var url = '/people/v2/people_imports';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePeopleImportConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts`
  /// 
  /// Available Query Filters:
  /// - `creates`
  /// - `creates_and_updates`
  /// - `errors`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `ignored`
  /// - `not_ignored`
  /// - `updates`
  Future<PcoCollection<PcoPeoplePeopleImportConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportConflict>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePeopleImportHistory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/people_imports/1/histories`
  /// 
  /// Available Query Filters:
  /// - `creates`
  /// - `household_creates`
  /// - `household_updates`
  /// - `identical`
  /// - `updates`
  Future<PcoCollection<PcoPeoplePeopleImportHistory>> getHistories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportHistory.canInclude;
    var url = '$apiEndpoint/histories';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportHistory>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
