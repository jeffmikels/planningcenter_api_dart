/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.344767
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services PlanNote Object
///
/// - Application:        services
/// - Id:                 plan_note
/// - Type:               PlanNote
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesPlanNote()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesPlanNote.fromJson()` constructor.
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
/// A specific plan note within a single plan.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `categoryName` (ro) -> PCO: `category_name`
/// - `content` (rw) -> PCO: `content`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `plan_note_category`: include associated plan_note_category
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
///
/// Inbound Edges:
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plannote-plantemplate-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanNote",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "category_name": "string",
///     "content": "string"
///   },
///   "relationships": {
///     "plan_note_category": {
///       "data": {
///         "type": "PlanNoteCategory",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanNote extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNote';
  static const String kTypeId = 'plan_note';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes';

  /// possible includes with parameter ?include=a,b
  /// - `plan_note_category`: include associated plan_note_category
  static List<String> get canInclude => ['plan_note_category'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'updated_at'];

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
  static const kUpdatedAt = 'updated_at';
  static const kCategoryName = 'category_name';
  static const kContent = 'content';

  // getters and setters
  @override
  List<String> get createAllowed => ['content'];

  @override
  List<String> get updateAllowed => ['content'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get categoryName => _attributes[kCategoryName] ?? '';
  String get content => _attributes[kContent] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set content(String? x) =>
      (x == null) ? _attributes.remove(kContent) : _attributes[kContent] = x;

  // typed getters for each relationship

  PcoServicesPlanNoteCategory? get includedPlanNoteCategory =>
      _firstOrNull<PcoServicesPlanNoteCategory>(
          relationships['plan_note_category']);

  // Class Constructors
  PcoServicesPlanNote.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesPlanNote.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlanNote] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/notes`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPlanNote(String serviceTypeId, String planId,
      {String? content}) {
    var obj = PcoServicesPlanNote.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans/$planId/notes';
    if (content != null) obj.content = content;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/notes`
  static Future<PcoCollection<PcoServicesPlanNote>>
      getNotesFromServiceTypeAndPlan(
    String serviceTypeId,
    String planId, {
    PlanningCenterApiQuery? query,
    bool includePlanNoteCategory = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePlanNoteCategory) query.include.add('plan_note_category');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/notes';

    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNote] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes`
  static Future<PcoCollection<PcoServicesPlanNote>>
      getNotesFromServiceTypeAndPlanTemplate(
    String serviceTypeId,
    String planTemplateId, {
    PlanningCenterApiQuery? query,
    bool includePlanNoteCategory = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePlanNoteCategory) query.include.add('plan_note_category');
    var url =
        '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes';

    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category`
  Future<PcoCollection<PcoServicesPlanNoteCategory>> getPlanNoteCategory({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/plan_note_category';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
