/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:20.965961
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesPlanNoteCategoryOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesPlanNoteCategoryFilter { none }

/// Creates a [PcoServicesPlanNoteCategoryQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPlanNoteCategoryQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPlanNoteCategoryOrder, String> _orderMap = {};
  static String orderString(PcoServicesPlanNoteCategoryOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPlanNoteCategoryFilter, String> _filterMap = {};
  static String filterString(PcoServicesPlanNoteCategoryFilter filter) =>
      _filterMap[filter]!;

  PcoServicesPlanNoteCategoryQuery({
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

/// This class represents a PCO Services PlanNoteCategory Object
///
/// - Application:        services
/// - Id:                 plan_note_category
/// - Type:               PlanNoteCategory
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesPlanNoteCategory.fromJson()` constructor.
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
/// A category of plan notes for an entire Service Type.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `name` (ro) -> PCO: `name`
/// - `sequence` (ro) -> PCO: `sequence`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `plannotecategory-plannote-plan_note_category`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates/1/notes/1/plan_note_category
/// - `plannotecategory-servicetype-plan_note_categories`: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanNoteCategory",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "sequence": 1,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanNoteCategory extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanNoteCategory';
  static const String kTypeId = 'plan_note_category';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories';
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
  static const kCreatedAt = 'created_at';
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
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
  DateTime get deletedAt => _getAttribute<DateTime>(kDeletedAt, DateTime(0));
  String get name => _getAttribute<String>(kName, '');
  int get sequence => _getAttribute<int>(kSequence, 0);

  // Class Constructors
  PcoServicesPlanNoteCategory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesPlanNoteCategory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlanNoteCategory] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesPlanNoteCategory(
      {String? id,
      DateTime? createdAt,
      DateTime? deletedAt,
      String? name,
      int? sequence,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesPlanNoteCategory.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (sequence != null) obj._attributes['sequence'] = sequence;
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

  /// Will get a [PcoCollection] of [PcoServicesPlanNoteCategory] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanNoteCategory>>
      getFromServiceTypeAndPlanTemplateAndNote(
    String serviceTypeId,
    String planTemplateId,
    String noteId, {
    PcoServicesPlanNoteCategoryQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesPlanNoteCategoryQuery();
    if (getAll) query.getAll = true;

    var url =
        '/services/v2/service_types/$serviceTypeId/plan_templates/$planTemplateId/notes/$noteId/plan_note_category';

    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_note_categories`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlanNoteCategory>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesPlanNoteCategoryQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoServicesPlanNoteCategoryQuery();
    if (getAll) query.getAll = true;

    var url = '/services/v2/service_types/$serviceTypeId/plan_note_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoServicesPlanNoteCategory] object
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_note_categories/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoServicesPlanNoteCategory?> getSingleFromServiceType(
    String serviceTypeId,
    String id, {
    PcoServicesPlanNoteCategoryQuery? query,
  }) async {
    query ??= PcoServicesPlanNoteCategoryQuery();

    var url =
        '/services/v2/service_types/$serviceTypeId/plan_note_categories/$id';
    var retval = await PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoServicesPlanNoteCategory] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plan_note_categories`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoServicesPlanNoteCategory>>
      getAllFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesPlanNoteCategoryQuery? query,
  }) async {
    query ??= PcoServicesPlanNoteCategoryQuery();
    query.getAll = true;

    var url = '/services/v2/service_types/$serviceTypeId/plan_note_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
