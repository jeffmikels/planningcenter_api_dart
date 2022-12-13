/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.175636
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `campusId` -> `?order=campus_id`
/// - `createdAt` -> `?order=created_at`
/// - `deletedAt` -> `?order=deleted_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
/// - `workflowCategoryId` -> `?order=workflow_category_id`
enum PcoPeopleWorkflowOrder {
  campusId,
  createdAt,
  deletedAt,
  name,
  updatedAt,
  workflowCategoryId
}

/// Possible Inbound Filters:
/// - `hasMyCards` -> `?filter=has_my_cards` : -- no description
/// - `onlyDeleted` -> `?filter=only_deleted` : -- no description
/// - `recentlyViewed` -> `?filter=recently_viewed` : -- no description
/// - `withDeleted` -> `?filter=with_deleted` : -- no description
/// - `withRecoverable` -> `?filter=with_recoverable` : -- no description
/// - `withSteps` -> `?filter=with_steps` : -- no description
enum PcoPeopleWorkflowFilter {
  hasMyCards,
  onlyDeleted,
  recentlyViewed,
  withDeleted,
  withRecoverable,
  withSteps
}

/// Creates a [PcoPeopleWorkflowQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCategory`: include associated category
/// - `includeShares`: include associated shares
/// - `includeSteps`: include associated steps
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleWorkflowQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleWorkflow] objects can be requested with one or more of the following criteria:
/// - `whereCampusId`: query on a specific campus_id, example: ?where[campus_id]=primary_key
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereDeletedAt`: query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// - `whereWorkflowCategoryId`: query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
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
/// - `PcoPeopleWorkflowOrder.campusId` : will order by `campus_id`
/// - `PcoPeopleWorkflowOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleWorkflowOrder.deletedAt` : will order by `deleted_at`
/// - `PcoPeopleWorkflowOrder.name` : will order by `name`
/// - `PcoPeopleWorkflowOrder.updatedAt` : will order by `updated_at`
/// - `PcoPeopleWorkflowOrder.workflowCategoryId` : will order by `workflow_category_id`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleWorkflowQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleWorkflowOrder, String> _orderMap = {
    PcoPeopleWorkflowOrder.campusId: 'campus_id',
    PcoPeopleWorkflowOrder.createdAt: 'created_at',
    PcoPeopleWorkflowOrder.deletedAt: 'deleted_at',
    PcoPeopleWorkflowOrder.name: 'name',
    PcoPeopleWorkflowOrder.updatedAt: 'updated_at',
    PcoPeopleWorkflowOrder.workflowCategoryId: 'workflow_category_id',
  };
  static String orderString(PcoPeopleWorkflowOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleWorkflowFilter, String> _filterMap = {
    PcoPeopleWorkflowFilter.hasMyCards: 'has_my_cards',
    PcoPeopleWorkflowFilter.onlyDeleted: 'only_deleted',
    PcoPeopleWorkflowFilter.recentlyViewed: 'recently_viewed',
    PcoPeopleWorkflowFilter.withDeleted: 'with_deleted',
    PcoPeopleWorkflowFilter.withRecoverable: 'with_recoverable',
    PcoPeopleWorkflowFilter.withSteps: 'with_steps',
  };
  static String filterString(PcoPeopleWorkflowFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleWorkflowQuery({
    /// include associated category
    /// when true, adds `?include=category` to url
    bool includeCategory = false,

    /// include associated shares
    /// when true, adds `?include=shares` to url
    bool includeShares = false,

    /// include associated steps
    /// when true, adds `?include=steps` to url
    bool includeSteps = false,

    /// when true, adds `?include=category,shares,steps` to url parameters
    bool includeAll = false,

    /// Query by `campus_id`
    /// query on a specific campus_id, url example: ?where[campus_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCampusId,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `deleted_at`
    /// query on a specific deleted_at, url example: ?where[deleted_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereDeletedAt,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

    /// Query by `workflow_category_id`
    /// query on a specific workflow_category_id, url example: ?where[workflow_category_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereWorkflowCategoryId,
    PcoPeopleWorkflowFilter? filterBy,
    PcoPeopleWorkflowOrder? orderBy,

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
    if (includeAll || includeCategory) include.add('category');
    if (includeAll || includeShares) include.add('shares');
    if (includeAll || includeSteps) include.add('steps');

    if (whereCampusId != null)
      where.add(PlanningCenterApiWhere.parse('campus_id', whereCampusId));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereDeletedAt != null)
      where.add(PlanningCenterApiWhere.parse('deleted_at', whereDeletedAt));
    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
    if (whereWorkflowCategoryId != null)
      where.add(PlanningCenterApiWhere.parse(
          'workflow_category_id', whereWorkflowCategoryId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People Workflow Object
///
/// - Application:        people
/// - Id:                 workflow
/// - Type:               Workflow
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/workflows
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/workflows
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleWorkflow()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleWorkflow.fromJson()` constructor.
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
/// A Workflow
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `myReadyCardCount` (ro) -> PCO: `my_ready_card_count`
/// - `totalReadyCardCount` (ro) -> PCO: `total_ready_card_count`
/// - `completedCardCount` (ro) -> PCO: `completed_card_count`
/// - `totalCardsCount` (ro) -> PCO: `total_cards_count`
/// - `totalReadyAndSnoozedCardCount` (ro) -> PCO: `total_ready_and_snoozed_card_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `deletedAt` (ro) -> PCO: `deleted_at`
/// - `campusId` (rw) -> PCO: `campus_id`
/// - `workflowCategoryId` (rw) -> PCO: `workflow_category_id`
/// - `myOverdueCardCount` (ro) -> PCO: `my_overdue_card_count`
/// - `myDueSoonCardCount` (ro) -> PCO: `my_due_soon_card_count`
/// - `isRecentlyViewed` (ro) -> PCO: `recently_viewed`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `workflowcard-workflow-cards`: https://api.planningcenteronline.com/people/v2/workflows/1/cards
/// - `workflowcategory-workflow-category`: https://api.planningcenteronline.com/people/v2/workflows/1/category
/// - `person-workflow-shared_people`: https://api.planningcenteronline.com/people/v2/workflows/1/shared_people
/// - `workflowshare-workflow-shares`: https://api.planningcenteronline.com/people/v2/workflows/1/shares
/// - `workflowstep-workflow-steps`: https://api.planningcenteronline.com/people/v2/workflows/1/steps
///
/// Inbound Edges:
/// - `workflow-organization-workflows`: https://api.planningcenteronline.com/people/v2/workflows
/// - `workflow-workflowcard-workflow`: https://api.planningcenteronline.com/people/v2/people/1/workflow_cards/1/workflow
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Workflow",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "my_ready_card_count": 1,
///     "total_ready_card_count": 1,
///     "completed_card_count": 1,
///     "total_cards_count": 1,
///     "total_ready_and_snoozed_card_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "campus_id": "primary_key",
///     "workflow_category_id": "primary_key",
///     "recently_viewed": true
///   },
///   "relationships": {
///     "workflow_category": {
///       "data": {
///         "type": "WorkflowCategory",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleWorkflow extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Workflow';
  static const String kTypeId = 'workflow';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/workflows';

  /// possible includes with parameter ?include=a,b
  /// - `category`: include associated category
  /// - `shares`: include associated shares
  /// - `steps`: include associated steps
  static List<String> get canInclude => ['category', 'shares', 'steps'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `campus_id`: (URLParameter), query on a specific campus_id, example: ?where[campus_id]=primary_key
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// - `workflow_category_id`: (URLParameter), query on a specific workflow_category_id, example: ?where[workflow_category_id]=primary_key
  static List<String> get canQuery => [
        'campus_id',
        'created_at',
        'deleted_at',
        'id',
        'name',
        'updated_at',
        'workflow_category_id'
      ];

  /// possible orderings with parameter ?order=
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  /// - `workflow_category_id`: (URLParameter), prefix with a hyphen (-workflow_category_id) to reverse the order
  static List<String> get canOrderBy => [
        'campus_id',
        'created_at',
        'deleted_at',
        'name',
        'updated_at',
        'workflow_category_id'
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
  static const kMyReadyCardCount = 'my_ready_card_count';
  static const kTotalReadyCardCount = 'total_ready_card_count';
  static const kCompletedCardCount = 'completed_card_count';
  static const kTotalCardsCount = 'total_cards_count';
  static const kTotalReadyAndSnoozedCardCount =
      'total_ready_and_snoozed_card_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kDeletedAt = 'deleted_at';
  static const kCampusId = 'campus_id';
  static const kWorkflowCategoryId = 'workflow_category_id';
  static const kMyOverdueCardCount = 'my_overdue_card_count';
  static const kMyDueSoonCardCount = 'my_due_soon_card_count';
  static const kRecentlyViewed = 'recently_viewed';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['name', 'campus_id', 'workflow_category_id'];

  @override
  List<String> get updateAllowed =>
      ['name', 'campus_id', 'workflow_category_id'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  int get myReadyCardCount => _attributes[kMyReadyCardCount] ?? 0;
  int get totalReadyCardCount => _attributes[kTotalReadyCardCount] ?? 0;
  int get completedCardCount => _attributes[kCompletedCardCount] ?? 0;
  int get totalCardsCount => _attributes[kTotalCardsCount] ?? 0;
  int get totalReadyAndSnoozedCardCount =>
      _attributes[kTotalReadyAndSnoozedCardCount] ?? 0;
  DateTime get deletedAt => DateTime.parse(_attributes[kDeletedAt] ?? '');
  String get campusId => _attributes[kCampusId] ?? '';
  String get workflowCategoryId => _attributes[kWorkflowCategoryId] ?? '';
  int get myOverdueCardCount => _attributes[kMyOverdueCardCount] ?? 0;
  int get myDueSoonCardCount => _attributes[kMyDueSoonCardCount] ?? 0;
  bool get isRecentlyViewed => _attributes[kRecentlyViewed] == true;

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set campusId(String? x) =>
      (x == null) ? _attributes.remove(kCampusId) : _attributes[kCampusId] = x;

  ///
  /// pass `null` to remove key from attributes
  set workflowCategoryId(String? x) => (x == null)
      ? _attributes.remove(kWorkflowCategoryId)
      : _attributes[kWorkflowCategoryId] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCategory<T extends PcoResource>() =>
      (relationships['category'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedShares<T extends PcoResource>() =>
      (relationships['shares'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedSteps<T extends PcoResource>() =>
      (relationships['steps'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleWorkflow.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleWorkflow.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleWorkflow] object using this endpoint: `https://api.planningcenteronline.com/people/v2/workflows`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `campusId`, `workflowCategoryId`
  /// - FIELDS USED WHEN UPDATING: `name`, `campusId`, `workflowCategoryId`
  factory PcoPeopleWorkflow(
      {String? id,
      String? name,
      int? myReadyCardCount,
      int? totalReadyCardCount,
      int? completedCardCount,
      int? totalCardsCount,
      int? totalReadyAndSnoozedCardCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? deletedAt,
      String? campusId,
      String? workflowCategoryId,
      int? myOverdueCardCount,
      int? myDueSoonCardCount,
      bool? isRecentlyViewed,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleWorkflow.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/workflows';
    if (name != null) obj._attributes['name'] = name;
    if (myReadyCardCount != null)
      obj._attributes['my_ready_card_count'] = myReadyCardCount;
    if (totalReadyCardCount != null)
      obj._attributes['total_ready_card_count'] = totalReadyCardCount;
    if (completedCardCount != null)
      obj._attributes['completed_card_count'] = completedCardCount;
    if (totalCardsCount != null)
      obj._attributes['total_cards_count'] = totalCardsCount;
    if (totalReadyAndSnoozedCardCount != null)
      obj._attributes['total_ready_and_snoozed_card_count'] =
          totalReadyAndSnoozedCardCount;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (deletedAt != null)
      obj._attributes['deleted_at'] = deletedAt.toIso8601String();
    if (campusId != null) obj._attributes['campus_id'] = campusId;
    if (workflowCategoryId != null)
      obj._attributes['workflow_category_id'] = workflowCategoryId;
    if (myOverdueCardCount != null)
      obj._attributes['my_overdue_card_count'] = myOverdueCardCount;
    if (myDueSoonCardCount != null)
      obj._attributes['my_due_soon_card_count'] = myDueSoonCardCount;
    if (isRecentlyViewed != null)
      obj._attributes['recently_viewed'] = isRecentlyViewed;

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

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting many)
  /// using a path like this: `/people/v2/workflows`
  ///
  /// Available Query Filters:
  /// - `has_my_cards`
  /// - `only_deleted`
  /// - `recently_viewed`
  /// - `with_deleted`
  /// - `with_recoverable`
  /// - `with_steps`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflow>> get({
    String? id,
    PcoPeopleWorkflowQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeShares = false,
    bool includeSteps = false,
  }) async {
    query ??= PcoPeopleWorkflowQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url = '/people/v2/workflows';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflow] objects (expecting one)
  /// using a path like this: `/people/v2/people/$personId/workflow_cards/$workflowCardId/workflow`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleWorkflow>> getFromPersonAndWorkflowCard(
    String personId,
    String workflowCardId, {
    PcoPeopleWorkflowQuery? query,
    bool includeAll = false,
    bool includeCategory = false,
    bool includeShares = false,
    bool includeSteps = false,
  }) async {
    query ??= PcoPeopleWorkflowQuery();
    if (includeAll) query.include.addAll(PcoPeopleWorkflow.canInclude);
    if (includeCategory) query.include.add('category');
    if (includeShares) query.include.add('shares');
    if (includeSteps) query.include.add('steps');
    var url =
        '/people/v2/people/$personId/workflow_cards/$workflowCardId/workflow';

    return PcoCollection.fromApiCall<PcoPeopleWorkflow>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleWorkflowCard] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/cards`
  Future<PcoCollection<PcoPeopleWorkflowCard>> getCards(
      {PcoPeopleWorkflowCardQuery? query}) async {
    query ??= PcoPeopleWorkflowCardQuery();
    var url = '$apiEndpoint/cards';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCard>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/category`
  Future<PcoCollection<PcoPeopleWorkflowCategory>> getCategory(
      {PcoPeopleWorkflowCategoryQuery? query}) async {
    query ??= PcoPeopleWorkflowCategoryQuery();
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shared_people`
  Future<PcoCollection<PcoPeoplePerson>> getSharedPeople(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/shared_people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/shares`
  Future<PcoCollection<PcoPeopleWorkflowShare>> getShares(
      {PcoPeopleWorkflowShareQuery? query}) async {
    query ??= PcoPeopleWorkflowShareQuery();
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowShare>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleWorkflowStep] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/workflows/1/steps`
  Future<PcoCollection<PcoPeopleWorkflowStep>> getSteps(
      {PcoPeopleWorkflowStepQuery? query}) async {
    query ??= PcoPeopleWorkflowStepQuery();
    var url = '$apiEndpoint/steps';
    return PcoCollection.fromApiCall<PcoPeopleWorkflowStep>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
