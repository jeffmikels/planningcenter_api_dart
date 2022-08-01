/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.748501
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesReportTemplateOrder { none }

/// Possible Inbound Filters:
/// - `matrix` -> `?filter=matrix` : -- no description
/// - `people` -> `?filter=people` : -- no description
/// - `plans` -> `?filter=plans` : -- no description
/// - `withoutDefaults` -> `?filter=without_defaults` : -- no description
enum PcoServicesReportTemplateFilter { matrix, people, plans, withoutDefaults }

/// Creates a [PcoServicesReportTemplateQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesReportTemplateQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesReportTemplateOrder, String> _orderMap = {};
  static String orderString(PcoServicesReportTemplateOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesReportTemplateFilter, String> _filterMap = {
    PcoServicesReportTemplateFilter.matrix: 'matrix',
    PcoServicesReportTemplateFilter.people: 'people',
    PcoServicesReportTemplateFilter.plans: 'plans',
    PcoServicesReportTemplateFilter.withoutDefaults: 'without_defaults',
  };
  static String filterString(PcoServicesReportTemplateFilter filter) =>
      _filterMap[filter]!;

  PcoServicesReportTemplateQuery({
    PcoServicesReportTemplateFilter? filterBy,

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
  }
}

/// This class represents a PCO Services ReportTemplate Object
///
/// - Application:        services
/// - Id:                 report_template
/// - Type:               ReportTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/report_templates
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesReportTemplate.fromJson()` constructor.
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
/// A template for generating reports
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (ro) -> PCO: `body`
/// - `title` (ro) -> PCO: `title`
/// - `type` (ro) -> PCO: `type`
/// - `isDefault` (ro) -> PCO: `default`
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/report_templates';
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
  String get body => _attributes[kBody] ?? '';
  String get title => _attributes[kTitle] ?? '';
  String get type => _attributes[kType] ?? '';
  bool get isDefault => _attributes[kDefault] == true;

  // Class Constructors
  PcoServicesReportTemplate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesReportTemplate.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesReportTemplate] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesReportTemplate(
      {String? id,
      String? body,
      String? title,
      bool? isDefault,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesReportTemplate.empty();
    obj._id = id;
    if (body != null) obj._attributes['body'] = body;
    if (title != null) obj._attributes['title'] = title;
    if (isDefault != null) obj._attributes['default'] = isDefault;

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

  /// Will get a collection of [PcoServicesReportTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/report_templates`
  ///
  /// Available Query Filters:
  /// - `matrix`
  /// - `people`
  /// - `plans`
  /// - `without_defaults`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesReportTemplate>> get({
    String? id,
    PcoServicesReportTemplateQuery? query,
  }) async {
    query ??= PcoServicesReportTemplateQuery();

    var url = '/services/v2/report_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesReportTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
