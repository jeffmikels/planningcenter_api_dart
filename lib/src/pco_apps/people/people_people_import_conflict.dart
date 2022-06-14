/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.014748
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO People PeopleImportConflict Object
///
/// - Application:        people
/// - Id:                 people_import_conflict
/// - Type:               PeopleImportConflict
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeoplePeopleImportConflict.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['kind', 'name'];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

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
  String get kind => _attributes[kKind] ?? '';
  String get name => _attributes[kName] ?? '';
  String get message => _attributes[kMessage] ?? '';
  String get data => _attributes[kData] ?? '';
  String get conflictingChanges => _attributes[kConflictingChanges] ?? '';
  bool get isIgnore => _attributes[kIgnore] == true;

  // Class Constructors
  PcoPeoplePeopleImportConflict.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

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
  static Future<PcoCollection<PcoPeoplePeopleImportConflict>>
      getConflictsFromPeopleImport(
    String peopleImportId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/people/v2/people_imports/$peopleImportId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportConflict>(url,
        query: query, apiVersion: kApiVersion);
  }
}
