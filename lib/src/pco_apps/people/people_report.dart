/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.169110
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `body` -> `?order=body`
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleReportOrder { body, createdAt, name, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleReportFilter { none }

/// Creates a [PcoPeopleReportQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCreatedBy`: include associated created_by
/// - `includeUpdatedBy`: include associated updated_by
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleReportQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleReport] objects can be requested with one or more of the following criteria:
/// - `whereBody`: query on a specific body, example: ?where[body]=string
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleReportOrder.body` : will order by `body`
/// - `PcoPeopleReportOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleReportOrder.name` : will order by `name`
/// - `PcoPeopleReportOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleReportQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleReportOrder, String> _orderMap = {
    PcoPeopleReportOrder.body: 'body',
    PcoPeopleReportOrder.createdAt: 'created_at',
    PcoPeopleReportOrder.name: 'name',
    PcoPeopleReportOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleReportOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleReportFilter, String> _filterMap = {};
  static String filterString(PcoPeopleReportFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleReportQuery({
    /// include associated created_by
    /// when true, adds `?include=created_by` to url
    bool includeCreatedBy = false,

    /// include associated updated_by
    /// when true, adds `?include=updated_by` to url
    bool includeUpdatedBy = false,

    /// when true, adds `?include=created_by,updated_by` to url parameters
    bool includeAll = false,

    /// Query by `body`
    /// query on a specific body, url example: ?where[body]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereBody,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleReportOrder? orderBy,

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
    if (includeAll || includeCreatedBy) include.add('created_by');
    if (includeAll || includeUpdatedBy) include.add('updated_by');

    if (whereBody != null)
      where.add(PlanningCenterApiWhere.parse('body', whereBody));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Report Object
///
/// - Application:        people
/// - Id:                 report
/// - Type:               Report
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/reports
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/reports
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleReport()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleReport.fromJson()` constructor.
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
/// A report is editable liquid syntax that provides a powerful tool for presenting your Lists however you want.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `body` (rw) -> PCO: `body`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-report-created_by`: https://api.planningcenteronline.com/people/v2/reports/1/created_by
/// - `person-report-updated_by`: https://api.planningcenteronline.com/people/v2/reports/1/updated_by
///
/// Inbound Edges:
/// - `report-organization-reports`: https://api.planningcenteronline.com/people/v2/reports
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeopleReport extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Report';
  static const String kTypeId = 'report';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/reports';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/reports';

  /// possible includes with parameter ?include=a,b
  /// - `created_by`: include associated created_by
  /// - `updated_by`: include associated updated_by
  static List<String> get canInclude => ['created_by', 'updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `body`: (URLParameter), query on a specific body, example: ?where[body]=string
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['body', 'created_at', 'name', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `body`: (URLParameter), prefix with a hyphen (-body) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['body', 'created_at', 'name', 'updated_at'];

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
  static const kName = 'name';
  static const kBody = 'body';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => ['name', 'body'];

  @override
  List<String> get updateAllowed => ['name', 'body'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get body => _attributes[kBody] ?? '';

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set body(String? x) =>
      (x == null) ? _attributes.remove(kBody) : _attributes[kBody] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedUpdatedBy<T extends PcoResource>() =>
      (relationships['updated_by'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleReport.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleReport.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleReport] object using this endpoint: `https://api.planningcenteronline.com/people/v2/reports`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `body`
  /// - FIELDS USED WHEN UPDATING: `name`, `body`
  factory PcoPeopleReport(
      {String? id,
      String? name,
      String? body,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleReport.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/reports';
    if (name != null) obj._attributes['name'] = name;
    if (body != null) obj._attributes['body'] = body;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a collection of [PcoPeopleReport] objects (expecting many)
  /// using a path like this: `/people/v2/reports`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleReport>> get({
    String? id,
    PcoPeopleReportQuery? query,
    bool includeAll = false,
    bool includeCreatedBy = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoPeopleReportQuery();
    if (includeAll) query.include.addAll(PcoPeopleReport.canInclude);
    if (includeCreatedBy) query.include.add('created_by');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/people/v2/reports';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleReport>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/reports/1/updated_by`
  Future<PcoCollection<PcoPeoplePerson>> getUpdatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/updated_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
