/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.679762
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoPeoplePeopleImportOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoPeoplePeopleImportFilter { none }

/// Creates a [PcoPeoplePeopleImportQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeoplePeopleImport] objects can be requested with one or more of the following criteria:
/// - `whereStatus`: query on a specific status, example: ?where[status]=value
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
class PcoPeoplePeopleImportQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePeopleImportOrder, String> _orderMap = {};
  static String orderString(PcoPeoplePeopleImportOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePeopleImportFilter, String> _filterMap = {};
  static String filterString(PcoPeoplePeopleImportFilter filter) =>
      _filterMap[filter]!;

  PcoPeoplePeopleImportQuery({
    /// Query by `status`
    /// query on a specific status, url example: ?where[status]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStatus,

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
    if (whereStatus != null)
      where.add(PlanningCenterApiWhere.parse('status', whereStatus));
  }
}

/// This class represents a PCO People PeopleImport Object
///
/// - Application:        people
/// - Id:                 people_import
/// - Type:               PeopleImport
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people_imports
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeoplePeopleImport.fromJson()` constructor.
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
/// A PeopleImport is a record of an ongoing or previous import from a CSV file.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `attribs` (ro) -> PCO: `attribs`
/// - `status` (ro) -> PCO: `status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `processedAt` (ro) -> PCO: `processed_at`
/// - `undoneAt` (ro) -> PCO: `undone_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `peopleimportconflict-peopleimport-conflicts`: https://api.planningcenteronline.com/people/v2/people_imports/1/conflicts
/// - `peopleimporthistory-peopleimport-histories`: https://api.planningcenteronline.com/people/v2/people_imports/1/histories
///
/// Inbound Edges:
/// - `peopleimport-organization-people_imports`: https://api.planningcenteronline.com/people/v2/people_imports
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeoplePeopleImport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PeopleImport';
  static const String kTypeId = 'people_import';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/people_imports';
  static const String kCreatePathTemplate = 'null';

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
  String get attribs => _attributes[kAttribs] ?? '';
  String get status => _attributes[kStatus] ?? '';
  DateTime get processedAt => DateTime.parse(_attributes[kProcessedAt] ?? '');
  DateTime get undoneAt => DateTime.parse(_attributes[kUndoneAt] ?? '');

  // Class Constructors
  PcoPeoplePeopleImport.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeoplePeopleImport.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePeopleImport] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePeopleImport(
      {String? id,
      String? attribs,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? processedAt,
      DateTime? undoneAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeoplePeopleImport.empty();
    obj._id = id;
    if (attribs != null) obj._attributes['attribs'] = attribs;
    if (status != null) obj._attributes['status'] = status;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (processedAt != null)
      obj._attributes['processed_at'] = processedAt.toIso8601String();
    if (undoneAt != null)
      obj._attributes['undone_at'] = undoneAt.toIso8601String();

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

  /// Will get a collection of [PcoPeoplePeopleImport] objects (expecting many)
  /// using a path like this: `/people/v2/people_imports`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePeopleImport>> get({
    String? id,
    PcoPeoplePeopleImportQuery? query,
  }) async {
    query ??= PcoPeoplePeopleImportQuery();

    var url = '/people/v2/people_imports';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImport>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
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
  Future<PcoCollection<PcoPeoplePeopleImportConflict>> getConflicts(
      {PcoPeoplePeopleImportConflictQuery? query}) async {
    query ??= PcoPeoplePeopleImportConflictQuery();
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportConflict>(url,
        query: query, apiVersion: apiVersion);
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
  Future<PcoCollection<PcoPeoplePeopleImportHistory>> getHistories(
      {PcoPeoplePeopleImportHistoryQuery? query}) async {
    query ??= PcoPeoplePeopleImportHistoryQuery();
    var url = '$apiEndpoint/histories';
    return PcoCollection.fromApiCall<PcoPeoplePeopleImportHistory>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
