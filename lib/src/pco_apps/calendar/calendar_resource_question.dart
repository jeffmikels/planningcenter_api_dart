/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.214660
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCalendarResourceQuestionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarResourceQuestionFilter { none }

/// Creates a [PcoCalendarResourceQuestionQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarResourceQuestion] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereKind`: query on a specific kind, example: ?where[kind]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
class PcoCalendarResourceQuestionQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceQuestionOrder, String> _orderMap = {};
  static String orderString(PcoCalendarResourceQuestionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceQuestionFilter, String> _filterMap = {};
  static String filterString(PcoCalendarResourceQuestionFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarResourceQuestionQuery({
    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `kind`
    /// query on a specific kind, url example: ?where[kind]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereKind,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

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
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereKind != null)
      where.add(PlanningCenterApiWhere.parse('kind', whereKind));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
  }
}

/// This class represents a PCO Calendar ResourceQuestion Object
///
/// - Application:        calendar
/// - Id:                 resource_question
/// - Type:               ResourceQuestion
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_questions
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceQuestion.fromJson()` constructor.
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
/// A question to answer when requesting to book a room or resource.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `kind` (ro) -> PCO: `kind`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `choices` (ro) -> PCO: `choices`
/// - `description` (ro) -> PCO: `description`
/// - `isMultipleSelect` (ro) -> PCO: `multiple_select`
/// - `isOptional` (ro) -> PCO: `optional`
/// - `position` (ro) -> PCO: `position`
/// - `question` (ro) -> PCO: `question`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `resourcequestion-organization-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resource_questions
/// - `resourcequestion-resource-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceQuestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "choices": "string",
///     "description": "string",
///     "multiple_select": true,
///     "optional": true,
///     "position": 1,
///     "question": "string"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarResourceQuestion extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceQuestion';
  static const String kTypeId = 'resource_question';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/resource_questions';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'kind', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kKind = 'kind';
  static const kUpdatedAt = 'updated_at';
  static const kChoices = 'choices';
  static const kDescription = 'description';
  static const kMultipleSelect = 'multiple_select';
  static const kOptional = 'optional';
  static const kPosition = 'position';
  static const kQuestion = 'question';

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
  String get choices => _attributes[kChoices] ?? '';
  String get description => _attributes[kDescription] ?? '';
  bool get isMultipleSelect => _attributes[kMultipleSelect] == true;
  bool get isOptional => _attributes[kOptional] == true;
  int get position => _attributes[kPosition] ?? 0;
  String get question => _attributes[kQuestion] ?? '';

  // Class Constructors
  PcoCalendarResourceQuestion.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarResourceQuestion.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResourceQuestion] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarResourceQuestion(
      {String? id,
      DateTime? createdAt,
      String? kind,
      DateTime? updatedAt,
      String? choices,
      String? description,
      bool? isMultipleSelect,
      bool? isOptional,
      int? position,
      String? question,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarResourceQuestion.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (kind != null) obj._attributes['kind'] = kind;
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (choices != null) obj._attributes['choices'] = choices;
    if (description != null) obj._attributes['description'] = description;
    if (isMultipleSelect != null)
      obj._attributes['multiple_select'] = isMultipleSelect;
    if (isOptional != null) obj._attributes['optional'] = isOptional;
    if (position != null) obj._attributes['position'] = position;
    if (question != null) obj._attributes['question'] = question;

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

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_questions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceQuestion>> get({
    String? id,
    PcoCalendarResourceQuestionQuery? query,
  }) async {
    query ??= PcoCalendarResourceQuestionQuery();

    var url = '/calendar/v2/resource_questions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_questions`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResourceQuestion>> getFromResource(
    String resourceId, {
    String? id,
    PcoCalendarResourceQuestionQuery? query,
  }) async {
    query ??= PcoCalendarResourceQuestionQuery();

    var url = '/calendar/v2/resources/$resourceId/resource_questions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
