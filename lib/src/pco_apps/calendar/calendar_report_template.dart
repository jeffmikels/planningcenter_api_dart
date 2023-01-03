/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.149282
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarReportTemplateOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarReportTemplateFilter { none }

/// Creates a [PcoCalendarReportTemplateQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarReportTemplateQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarReportTemplateOrder, String> _orderMap = {};
  static String orderString(PcoCalendarReportTemplateOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarReportTemplateFilter, String> _filterMap = {};
  static String filterString(PcoCalendarReportTemplateFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarReportTemplateQuery({
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
  }) : super();
}

/// This class represents a PCO Calendar ReportTemplate Object
///
/// - Application:        calendar
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/report_templates
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarReportTemplate()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarReportTemplate.fromJson()` constructor.
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
/// A template for generating a report.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (rw) -> PCO: `body`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `description` (rw) -> PCO: `description`
/// - `title` (rw) -> PCO: `title`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `reporttemplate-organization-report_templates`: https://api.planningcenteronline.com/calendar/v2/report_templates
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
///     "created_at": "string",
///     "description": "string",
///     "title": "string",
///     "updated_at": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarReportTemplate extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ReportTemplate';
  static const String kTypeId = 'report_template';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/report_templates';
  static const String kCreatePathTemplate = 'null';

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
  static const kBody = 'body';
  static const kCreatedAt = 'created_at';
  static const kDescription = 'description';
  static const kTitle = 'title';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => ['body', 'description', 'title'];

  @override
  List<String> get updateAllowed => ['body', 'description', 'title'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get body => _getAttribute<String>(kBody, '');
  String get description => _getAttribute<String>(kDescription, '');
  String get title => _getAttribute<String>(kTitle, '');

  // setters for object attributes

  /// The contents of the report template
  ///
  /// pass `null` to remove key from attributes
  set body(String? x) =>
      (x == null) ? _attributes.remove(kBody) : _attributes[kBody] = x;

  /// A summarization of the report
  ///
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  /// The title of the report
  ///
  /// pass `null` to remove key from attributes
  set title(String? x) =>
      (x == null) ? _attributes.remove(kTitle) : _attributes[kTitle] = x;

  // Class Constructors
  PcoCalendarReportTemplate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoCalendarReportTemplate.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarReportTemplate] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `body`, `description`, `title`
  /// - FIELDS USED WHEN UPDATING: `body`, `description`, `title`
  factory PcoCalendarReportTemplate(
      {String? id,
      String? body,
      String? createdAt,
      String? description,
      String? title,
      String? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarReportTemplate.empty();
    obj._id = id;
    if (body != null) obj._attributes['body'] = body;
    if (createdAt != null) obj._attributes['created_at'] = createdAt;
    if (description != null) obj._attributes['description'] = description;
    if (title != null) obj._attributes['title'] = title;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt;

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

  /// Will get a [PcoCollection] of [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `/calendar/v2/report_templates`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarReportTemplate>> get({
    String? id,
    PcoCalendarReportTemplateQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoCalendarReportTemplateQuery();
    if (getAll) query.getAll = true;

    var url = '/calendar/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarReportTemplate] object
  /// using a path like this: `/calendar/v2/report_templates/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarReportTemplate?> getSingle(
    String id, {
    PcoCalendarReportTemplateQuery? query,
  }) async {
    query ??= PcoCalendarReportTemplateQuery();

    var url = '/calendar/v2/report_templates/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarReportTemplate] objects (expecting many)
  /// using a path like this: `/calendar/v2/report_templates`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarReportTemplate>> getAll({
    String? id,
    PcoCalendarReportTemplateQuery? query,
  }) async {
    query ??= PcoCalendarReportTemplateQuery();
    query.getAll = true;

    var url = '/calendar/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
