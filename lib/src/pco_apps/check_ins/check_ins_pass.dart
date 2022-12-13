/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.071199
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsPassOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsPassFilter { none }

/// Creates a [PcoCheckInsPassQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includePerson`: include associated person
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsPassQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsPass] objects can be requested with one or more of the following criteria:
/// - `whereCode`: query on a specific code, example: ?where[code]=string
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
class PcoCheckInsPassQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsPassOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsPassOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsPassFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsPassFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsPassQuery({
    /// include associated person
    /// when true, adds `?include=person` to url
    bool includePerson = false,

    /// Query by `code`
    /// query on a specific code, url example: ?where[code]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCode,

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
    if (includePerson) include.add('person');

    if (whereCode != null)
      where.add(PlanningCenterApiWhere.parse('code', whereCode));
  }
}

/// This class represents a PCO CheckIns Pass Object
///
/// - Application:        check-ins
/// - Id:                 pass
/// - Type:               Pass
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/passes
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsPass.fromJson()` constructor.
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
/// Enables quick lookup of a person via barcode reader.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `code` (ro) -> PCO: `code`
/// - `kind` (ro) -> PCO: `kind`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `sendTo` (ro) -> PCO: `send_to`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
///
/// Inbound Edges:
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Pass",
///   "id": "1",
///   "attributes": {
///     "code": "string",
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsPass extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Pass';
  static const String kTypeId = 'pass';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/passes';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
  static List<String> get canQuery => ['code'];

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
  static const kCode = 'code';
  static const kKind = 'kind';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kSendTo = 'send_to';

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
  String get code => _attributes[kCode] ?? '';
  String get kind => _attributes[kKind] ?? '';
  String get sendTo => _attributes[kSendTo] ?? '';

  // typed getters for each relationship

  PcoCheckInsPerson? get includedPerson =>
      _firstOrNull<PcoCheckInsPerson>(relationships['person']);

  // Class Constructors
  PcoCheckInsPass.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsPass.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsPass] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsPass(
      {String? id,
      String? code,
      String? kind,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? sendTo,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsPass.empty();
    obj._id = id;
    if (code != null) obj._attributes['code'] = code;
    if (kind != null) obj._attributes['kind'] = kind;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (sendTo != null) obj._attributes['send_to'] = sendTo;

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

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPass>> get({
    String? id,
    PcoCheckInsPassQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsPassQuery();

    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$personId/passes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsPass>> getFromPerson(
    String personId, {
    String? id,
    PcoCheckInsPassQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PcoCheckInsPassQuery();

    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/people/$personId/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson(
      {PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
