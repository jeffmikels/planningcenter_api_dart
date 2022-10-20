/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.418391
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoPeoplePeopleImportConflictOrder { none }

/// Possible Inbound Filters:
/// - `creates` -> `?filter=creates` : -- no description
/// - `createsAndUpdates` -> `?filter=creates_and_updates` : -- no description
/// - `errors` -> `?filter=errors` : -- no description
/// - `householdCreates` -> `?filter=household_creates` : -- no description
/// - `householdUpdates` -> `?filter=household_updates` : -- no description
/// - `identical` -> `?filter=identical` : -- no description
/// - `ignored` -> `?filter=ignored` : -- no description
/// - `notIgnored` -> `?filter=not_ignored` : -- no description
/// - `updates` -> `?filter=updates` : -- no description
enum PcoPeoplePeopleImportConflictFilter { creates, createsAndUpdates, errors, householdCreates, householdUpdates, identical, ignored, notIgnored, updates }

/// Creates a [PcoPeoplePeopleImportConflictQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoPeoplePeopleImportConflict] objects can be requested with one or more of the following criteria:
/// - `whereKind`: query on a specific kind, example: ?where[kind]=string
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePeopleImportConflictQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePeopleImportConflictOrder, String> _orderMap = {
    
  };
  static String orderString(PcoPeoplePeopleImportConflictOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePeopleImportConflictFilter, String> _filterMap = {
    PcoPeoplePeopleImportConflictFilter.creates: 'creates',
    PcoPeoplePeopleImportConflictFilter.createsAndUpdates: 'creates_and_updates',
    PcoPeoplePeopleImportConflictFilter.errors: 'errors',
    PcoPeoplePeopleImportConflictFilter.householdCreates: 'household_creates',
    PcoPeoplePeopleImportConflictFilter.householdUpdates: 'household_updates',
    PcoPeoplePeopleImportConflictFilter.identical: 'identical',
    PcoPeoplePeopleImportConflictFilter.ignored: 'ignored',
    PcoPeoplePeopleImportConflictFilter.notIgnored: 'not_ignored',
    PcoPeoplePeopleImportConflictFilter.updates: 'updates',
  };
  static String filterString(PcoPeoplePeopleImportConflictFilter filter) => _filterMap[filter]!;

  PcoPeoplePeopleImportConflictQuery({
    /// Query by `kind`
    /// query on a specific kind, url example: ?where[kind]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereKind,
    
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    

    PcoPeoplePeopleImportConflictFilter? filterBy,


    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (filterBy != null) filter.add(filterString(filterBy));
    
    if (whereKind != null) where.add(PlanningCenterApiWhere.parse('kind', whereKind));
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));}
}

/// This class represents a PCO People PeopleImportConflict Object
/// 
/// - Application:        people
/// - Id:                 people_import_conflict
/// - Type:               PeopleImportConflict
/// - ApiVersion:         2022-07-14
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
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts';
  static const String kCreatePathTemplate = 'null';

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
  PcoPeoplePeopleImportConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeoplePeopleImportConflict.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePeopleImportConflict] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePeopleImportConflict({String? id, String? kind, String? name, String? message, String? data, String? conflictingChanges, bool? isIgnore, DateTime? createdAt, DateTime? updatedAt, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoPeoplePeopleImportConflict.empty();
    obj._id = id;
    if (kind != null) obj._attributes['kind'] = kind;
    if (name != null) obj._attributes['name'] = name;
    if (message != null) obj._attributes['message'] = message;
    if (data != null) obj._attributes['data'] = data;
    if (conflictingChanges != null) obj._attributes['conflicting_changes'] = conflictingChanges;
    if (isIgnore != null) obj._attributes['ignore'] = isIgnore;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


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
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePeopleImportConflict>> getConflictsFromPeopleImport(String peopleImportId, {String? id, PcoPeoplePeopleImportConflictQuery? query, }) async {
    query ??= PcoPeoplePeopleImportConflictQuery();
    
    
    var url = '/people/v2/people_imports/$peopleImportId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportConflict>(url, query: query, apiVersion:kApiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
