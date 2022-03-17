/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.990974
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People PeopleImportConflict Object
/// 
/// - Application:        people
/// - Id:                 people_import_conflict
/// - Type:               PeopleImportConflict
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
/// ## Description
/// A PeopleImportConflict is a record of change that will occur if the parent PeopleImport is completed.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `kind` (ro) -> PCO: `kind`
/// - `name` (ro) -> PCO: `name`
/// - `message` (ro) -> PCO: `message`
/// - `data` (ro) -> PCO: `data`
/// - `conflictingChanges` (ro) -> PCO: `conflicting_changes`
/// - `isIgnore` (ro) -> PCO: `ignore`
/// - `createdAt` (ro) -> PCO: `created_at`
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
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
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
/// - `peopleimportconflict-peopleimport-conflicts`: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PeopleImportConflict",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "name": "string",
///     "message": "string",
///     "data": "string",
///     "conflicting_changes": "string",
///     "ignore": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeoplePeopleImportConflict extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImportConflict';
  static const String kTypeId = 'people_import_conflict';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'peopleimportconflict-peopleimport-conflicts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['kind','name'];

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
  static const kKind = 'kind';
  static const kName = 'name';
  static const kMessage = 'message';
  static const kData = 'data';
  static const kConflictingChanges = 'conflicting_changes';
  static const kIgnore = 'ignore';
  static const kCreatedAt = 'created_at';
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

  String get kind => attributes[kKind] ?? '';
  String get name => attributes[kName] ?? '';
  String get message => attributes[kMessage] ?? '';
  String get data => attributes[kData] ?? '';
  String get conflictingChanges => attributes[kConflictingChanges] ?? '';
  bool get isIgnore => attributes[kIgnore] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeoplePeopleImportConflict._() : super(kPcoApplication, kTypeString);
  PcoPeoplePeopleImportConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePeopleImportConflict] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports/$peopleImportId/conflicts`
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
  static Future<PcoCollection<PcoPeoplePeopleImportConflict>> getConflictsFromPeopleImport(String peopleImportId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePeopleImportConflict.canInclude;
    var url = '/people/v2/people_imports/$peopleImportId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportConflict>(url, query: query, apiVersion:kApiVersion);
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
