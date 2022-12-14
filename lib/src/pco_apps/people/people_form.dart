/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:37.995832
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `active` -> `?order=active`
/// - `archivedAt` -> `?order=archived_at`
/// - `createdAt` -> `?order=created_at`
/// - `deletedAt` -> `?order=deleted_at`
/// - `description` -> `?order=description`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleFormOrder {
  active,
  archivedAt,
  createdAt,
  deletedAt,
  description,
  name,
  updatedAt
}

/// Possible Inbound Filters:
/// - `archived` -> `?filter=archived` : -- no description
/// - `closed` -> `?filter=closed` : -- no description
/// - `notArchived` -> `?filter=not_archived` : -- no description
/// - `open` -> `?filter=open` : -- no description
/// - `recentlyViewed` -> `?filter=recently_viewed` : -- no description
/// - `withRecoverable` -> `?filter=with_recoverable` : -- no description
enum PcoPeopleFormFilter {
  archived,
  closed,
  notArchived,
  open,
  recentlyViewed,
  withRecoverable
}

/// Creates a [PcoPeopleFormQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCampus`: include associated campus
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleFormQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleForm] objects can be requested with one or more of the following criteria:
/// - `whereActive`: query on a specific active, example: ?where[active]=true
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
/// - `PcoPeopleFormOrder.active` : will order by `active`
/// - `PcoPeopleFormOrder.archivedAt` : will order by `archived_at`
/// - `PcoPeopleFormOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleFormOrder.deletedAt` : will order by `deleted_at`
/// - `PcoPeopleFormOrder.description` : will order by `description`
/// - `PcoPeopleFormOrder.name` : will order by `name`
/// - `PcoPeopleFormOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleFormQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleFormOrder, String> _orderMap = {
    PcoPeopleFormOrder.active: 'active',
    PcoPeopleFormOrder.archivedAt: 'archived_at',
    PcoPeopleFormOrder.createdAt: 'created_at',
    PcoPeopleFormOrder.deletedAt: 'deleted_at',
    PcoPeopleFormOrder.description: 'description',
    PcoPeopleFormOrder.name: 'name',
    PcoPeopleFormOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleFormOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleFormFilter, String> _filterMap = {
    PcoPeopleFormFilter.archived: 'archived',
    PcoPeopleFormFilter.closed: 'closed',
    PcoPeopleFormFilter.notArchived: 'not_archived',
    PcoPeopleFormFilter.open: 'open',
    PcoPeopleFormFilter.recentlyViewed: 'recently_viewed',
    PcoPeopleFormFilter.withRecoverable: 'with_recoverable',
  };
  static String filterString(PcoPeopleFormFilter filter) => _filterMap[filter]!;

  PcoPeopleFormQuery({
    /// include associated campus
    /// when true, adds `?include=campus` to url
    bool includeCampus = false,

    /// Query by `active`
    /// query on a specific active, url example: ?where[active]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereActive,
    PcoPeopleFormFilter? filterBy,
    PcoPeopleFormOrder? orderBy,

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
    if (includeCampus) include.add('campus');

    if (whereActive != null)
      where.add(PlanningCenterApiWhere.parse('active', whereActive));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Form Object
///
/// - Application:        people
/// - Id:                 form
/// - Type:               Form
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleForm.fromJson()` constructor.
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
/// A custom form for people to fill out.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `description` (ro) -> PCO: `description`
/// - `isActive` (ro) -> PCO: `active`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `submissionCount` (ro) -> PCO: `submission_count`
/// - `publicUrl` (ro) -> PCO: `public_url`
/// - `isRecentlyViewed` (ro) -> PCO: `recently_viewed`
/// - `isArchived` (ro) -> PCO: `archived`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `campus-form-campus`: https://api.planningcenteronline.com/people/v2/forms/1/campus
/// - `formfield-form-fields`: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - `formsubmission-form-form_submissions`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
///
/// Inbound Edges:
/// - `form-formsubmission-form`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form
/// - `form-organization-forms`: https://api.planningcenteronline.com/people/v2/forms
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Form",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "description": "string",
///     "active": true,
///     "archived_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "submission_count": 1,
///     "public_url": "string",
///     "recently_viewed": true,
///     "archived": true
///   },
///   "relationships": {
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     },
///     "form_category": {
///       "data": {
///         "type": "FormCategory",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleForm extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Form';
  static const String kTypeId = 'form';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/forms';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `campus`: include associated campus
  static List<String> get canInclude => ['campus'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `active`: (URLParameter), query on a specific active, example: ?where[active]=true
  static List<String> get canQuery => ['active'];

  /// possible orderings with parameter ?order=
  /// - `active`: (URLParameter), prefix with a hyphen (-active) to reverse the order
  /// - `archived_at`: (URLParameter), prefix with a hyphen (-archived_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `description`: (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'active',
        'archived_at',
        'created_at',
        'deleted_at',
        'description',
        'name',
        'updated_at'
      ];

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
  static const kDescription = 'description';
  static const kActive = 'active';
  static const kArchivedAt = 'archived_at';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDeletedAt = 'deleted_at';
  static const kSubmissionCount = 'submission_count';
  static const kPublicUrl = 'public_url';
  static const kRecentlyViewed = 'recently_viewed';
  static const kArchived = 'archived';

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
  String get name => _attributes[kName] ?? '';
  String get description => _attributes[kDescription] ?? '';
  bool get isActive => _attributes[kActive] == true;
  DateTime get archivedAt => DateTime.parse(_attributes[kArchivedAt] ?? '');
  DateTime get deletedAt => DateTime.parse(_attributes[kDeletedAt] ?? '');
  int get submissionCount => _attributes[kSubmissionCount] ?? 0;
  String get publicUrl => _attributes[kPublicUrl] ?? '';
  bool get isRecentlyViewed => _attributes[kRecentlyViewed] == true;
  bool get isArchived => _attributes[kArchived] == true;

  // typed getters for each relationship

  PcoPeopleCampus? get includedCampus =>
      _firstOrNull<PcoPeopleCampus>(relationships['campus']);

  // Class Constructors
  PcoPeopleForm.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleForm.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleForm] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleForm(
      {String? id,
      String? name,
      String? description,
      bool? isActive,
      DateTime? archivedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      int? submissionCount,
      String? publicUrl,
      bool? isRecentlyViewed,
      bool? isArchived,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleForm.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (description != null) obj._attributes['description'] = description;
    if (isActive != null) obj._attributes['active'] = isActive;
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();
    if (submissionCount != null)
      obj._attributes['submission_count'] = submissionCount;
    if (publicUrl != null) obj._attributes['public_url'] = publicUrl;
    if (isRecentlyViewed != null)
      obj._attributes['recently_viewed'] = isRecentlyViewed;
    if (isArchived != null) obj._attributes['archived'] = isArchived;

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

  /// Will get a [PcoCollection] of [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `/people/v2/forms`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleForm>> get({
    String? id,
    PcoPeopleFormQuery? query,
    bool getAll = false,
    bool includeCampus = false,
  }) async {
    query ??= PcoPeopleFormQuery();
    if (getAll) query.getAll = true;

    if (includeCampus) query.include.add('campus');
    var url = '/people/v2/forms';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoPeopleForm] object
  /// using a path like this: `/people/v2/forms/[id]`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoPeopleForm?> getSingle(
    String id, {
    PcoPeopleFormQuery? query,
    bool includeCampus = false,
  }) async {
    query ??= PcoPeopleFormQuery();

    if (includeCampus) query.include.add('campus');
    var url = '/people/v2/forms/$id';
    var retval = await PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoPeopleForm] objects (expecting many)
  /// using a path like this: `/people/v2/forms`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `closed`
  /// - `not_archived`
  /// - `open`
  /// - `recently_viewed`
  /// - `with_recoverable`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoPeopleForm>> getAll({
    String? id,
    PcoPeopleFormQuery? query,
    bool includeCampus = false,
  }) async {
    query ??= PcoPeopleFormQuery();
    query.getAll = true;

    if (includeCampus) query.include.add('campus');
    var url = '/people/v2/forms';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoPeopleForm] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleForm>> getFromFormAndFormSubmission(
    String formId,
    String formSubmissionId, {
    PcoPeopleFormQuery? query,
    bool getAll = false,
    bool includeCampus = false,
  }) async {
    query ??= PcoPeopleFormQuery();
    if (getAll) query.getAll = true;

    if (includeCampus) query.include.add('campus');
    var url =
        '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form';

    return PcoCollection.fromApiCall<PcoPeopleForm>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/campus`
  Future<PcoCollection<PcoPeopleCampus>> getCampus(
      {PcoPeopleCampusQuery? query}) async {
    query ??= PcoPeopleCampusQuery();
    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields`
  Future<PcoCollection<PcoPeopleFormField>> getFields(
      {PcoPeopleFormFieldQuery? query}) async {
    query ??= PcoPeopleFormFieldQuery();
    var url = '$apiEndpoint/fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions`
  Future<PcoCollection<PcoPeopleFormSubmission>> getFormSubmissions(
      {PcoPeopleFormSubmissionQuery? query}) async {
    query ??= PcoPeopleFormSubmissionQuery();
    var url = '$apiEndpoint/form_submissions';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
