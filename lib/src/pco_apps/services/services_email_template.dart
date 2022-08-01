/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.726482
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesEmailTemplateOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesEmailTemplateFilter { none }

/// Creates a [PcoServicesEmailTemplateQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesEmailTemplateQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesEmailTemplateOrder, String> _orderMap = {};
  static String orderString(PcoServicesEmailTemplateOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesEmailTemplateFilter, String> _filterMap = {};
  static String filterString(PcoServicesEmailTemplateFilter filter) =>
      _filterMap[filter]!;

  PcoServicesEmailTemplateQuery({
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

/// This class represents a PCO Services EmailTemplate Object
///
/// - Application:        services
/// - Id:                 email_template
/// - Type:               EmailTemplate
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/email_templates
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/email_templates
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesEmailTemplate()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesEmailTemplate.fromJson()` constructor.
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
/// A EmailTemplate Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `kind` (rw) -> PCO: `kind`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `htmlBody` (rw) -> PCO: `html_body`
/// - `subject` (rw) -> PCO: `subject`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `emailtemplate-organization-email_templates`: https://api.planningcenteronline.com/services/v2/email_templates
///
/// Actions:
/// - `render`: https://api.planningcenteronline.com/services/v2/email_templates/1/render
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EmailTemplate",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "html_body": "string",
///     "subject": "string"
///   },
///   "relationships": {
///     "template_owner": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesEmailTemplate extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'EmailTemplate';
  static const String kTypeId = 'email_template';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/email_templates';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/email_templates';

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
  static const kKind = 'kind';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kHtmlBody = 'html_body';
  static const kSubject = 'subject';

  // getters and setters
  @override
  List<String> get createAllowed => ['html_body', 'subject', 'kind'];

  @override
  List<String> get updateAllowed => ['html_body', 'subject'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get kind => _attributes[kKind] ?? '';
  String get htmlBody => _attributes[kHtmlBody] ?? '';
  String get subject => _attributes[kSubject] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set kind(String? x) =>
      (x == null) ? _attributes.remove(kKind) : _attributes[kKind] = x;

  /// pass `null` to remove key from attributes
  set htmlBody(String? x) =>
      (x == null) ? _attributes.remove(kHtmlBody) : _attributes[kHtmlBody] = x;

  /// pass `null` to remove key from attributes
  set subject(String? x) =>
      (x == null) ? _attributes.remove(kSubject) : _attributes[kSubject] = x;

  // Class Constructors
  PcoServicesEmailTemplate.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesEmailTemplate.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesEmailTemplate] object using this endpoint: `https://api.planningcenteronline.com/services/v2/email_templates`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `htmlBody`, `subject`, `kind`
  /// - FIELDS USED WHEN UPDATING: `htmlBody`, `subject`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesEmailTemplate(
      {String? id,
      String? kind,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? htmlBody,
      String? subject,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesEmailTemplate.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/email_templates';
    if (kind != null) obj._attributes['kind'] = kind;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (htmlBody != null) obj._attributes['html_body'] = htmlBody;
    if (subject != null) obj._attributes['subject'] = subject;

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

  /// Will get a collection of [PcoServicesEmailTemplate] objects (expecting many)
  /// using a path like this: `/services/v2/email_templates`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesEmailTemplate>> get({
    String? id,
    PcoServicesEmailTemplateQuery? query,
  }) async {
    query ??= PcoServicesEmailTemplateQuery();

    var url = '/services/v2/email_templates';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesEmailTemplate>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `render`
  ///
  /// Render an email template and fill in the persons details
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/email_templates/1/render`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// Render the template with information from the person.
  ///
  /// ```json
  /// {
  ///   "data": {
  ///     "attributes": {
  ///       "format": "html|text"
  ///     },
  ///     "relationships": {
  ///       "person": {
  ///         "data": {
  ///           "type": "Person",
  ///           "id": "1"
  ///         }
  ///       }
  ///     }
  ///   }
  /// }
  /// ```
  Future<PlanningCenterApiResponse> render(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/render';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
