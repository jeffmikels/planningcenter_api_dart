/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:51.408455
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `batchCompletedAt` -> `?order=batch_completed_at`
/// - `campusId` -> `?order=campus_id`
/// - `createdAt` -> `?order=created_at`
/// - `listCategoryId` -> `?order=list_category_id`
/// - `name` -> `?order=name`
/// - `nameOrDescription` -> `?order=name_or_description`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleListOrder {
  batchCompletedAt,
  campusId,
  createdAt,
  listCategoryId,
  name,
  nameOrDescription,
  updatedAt
}

/// Possible Inbound Filters:
/// - `canManage` -> `?filter=can_manage` : -- no description
/// - `recentlyViewed` -> `?filter=recently_viewed` : -- no description
/// - `starred` -> `?filter=starred` : -- no description
enum PcoPeopleListFilter { canManage, recentlyViewed, starred }

/// Creates a [PcoPeopleListQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeCampus`: include associated campus
/// - `includeCategory`: include associated category
/// - `includeCreatedBy`: include associated created_by
/// - `includeMailchimpSyncStatus`: include associated mailchimp_sync_status
/// - `includePeople`: include associated people
/// - `includeRules`: include associated rules
/// - `includeShares`: include associated shares
/// - `includeUpdatedBy`: include associated updated_by
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleListQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleList] objects can be requested with one or more of the following criteria:
/// - `whereBatchCompletedAt`: query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
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
/// - `PcoPeopleListOrder.batchCompletedAt` : will order by `batch_completed_at`
/// - `PcoPeopleListOrder.campusId` : will order by `campus_id`
/// - `PcoPeopleListOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleListOrder.listCategoryId` : will order by `list_category_id`
/// - `PcoPeopleListOrder.name` : will order by `name`
/// - `PcoPeopleListOrder.nameOrDescription` : will order by `name_or_description`
/// - `PcoPeopleListOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleListQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleListOrder, String> _orderMap = {
    PcoPeopleListOrder.batchCompletedAt: 'batch_completed_at',
    PcoPeopleListOrder.campusId: 'campus_id',
    PcoPeopleListOrder.createdAt: 'created_at',
    PcoPeopleListOrder.listCategoryId: 'list_category_id',
    PcoPeopleListOrder.name: 'name',
    PcoPeopleListOrder.nameOrDescription: 'name_or_description',
    PcoPeopleListOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleListOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleListFilter, String> _filterMap = {
    PcoPeopleListFilter.canManage: 'can_manage',
    PcoPeopleListFilter.recentlyViewed: 'recently_viewed',
    PcoPeopleListFilter.starred: 'starred',
  };
  static String filterString(PcoPeopleListFilter filter) => _filterMap[filter]!;

  PcoPeopleListQuery({
    /// include associated campus
    /// when true, adds `?include=campus` to url
    bool includeCampus = false,

    /// include associated category
    /// when true, adds `?include=category` to url
    bool includeCategory = false,

    /// include associated created_by
    /// when true, adds `?include=created_by` to url
    bool includeCreatedBy = false,

    /// include associated mailchimp_sync_status
    /// when true, adds `?include=mailchimp_sync_status` to url
    bool includeMailchimpSyncStatus = false,

    /// include associated people
    /// when true, adds `?include=people` to url
    bool includePeople = false,

    /// include associated rules
    /// when true, adds `?include=rules` to url
    bool includeRules = false,

    /// include associated shares
    /// when true, adds `?include=shares` to url
    bool includeShares = false,

    /// include associated updated_by
    /// when true, adds `?include=updated_by` to url
    bool includeUpdatedBy = false,

    /// when true, adds `?include=campus,category,created_by,mailchimp_sync_status,people,rules,shares,updated_by` to url parameters
    bool includeAll = false,

    /// Query by `batch_completed_at`
    /// query on a specific batch_completed_at, url example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereBatchCompletedAt,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

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
    PcoPeopleListFilter? filterBy,
    PcoPeopleListOrder? orderBy,

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
    if (includeAll || includeCampus) include.add('campus');
    if (includeAll || includeCategory) include.add('category');
    if (includeAll || includeCreatedBy) include.add('created_by');
    if (includeAll || includeMailchimpSyncStatus)
      include.add('mailchimp_sync_status');
    if (includeAll || includePeople) include.add('people');
    if (includeAll || includeRules) include.add('rules');
    if (includeAll || includeShares) include.add('shares');
    if (includeAll || includeUpdatedBy) include.add('updated_by');

    if (whereBatchCompletedAt != null)
      where.add(PlanningCenterApiWhere.parse(
          'batch_completed_at', whereBatchCompletedAt));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People List Object
///
/// - Application:        people
/// - Id:                 list
/// - Type:               List
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeopleList.fromJson()` constructor.
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
/// A list is a powerful tool for finding and grouping people together using any criteria imaginable.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `isAutoRefresh` (ro) -> PCO: `auto_refresh`
/// - `status` (ro) -> PCO: `status`
/// - `isHasInactiveResults` (ro) -> PCO: `has_inactive_results`
/// - `isIncludeInactive` (ro) -> PCO: `include_inactive`
/// - `returns` (ro) -> PCO: `returns`
/// - `isReturnOriginalIfNone` (ro) -> PCO: `return_original_if_none`
/// - `subset` (ro) -> PCO: `subset`
/// - `isAutomationsActive` (ro) -> PCO: `automations_active`
/// - `automationsCount` (ro) -> PCO: `automations_count`
/// - `description` (ro) -> PCO: `description`
/// - `isInvalid` (ro) -> PCO: `invalid`
/// - `nameOrDescription` (ro) -> PCO: `name_or_description`
/// - `isRecentlyViewed` (ro) -> PCO: `recently_viewed`
/// - `refreshedAt` (ro) -> PCO: `refreshed_at`
/// - `isStarred` (ro) -> PCO: `starred`
/// - `totalPeople` (ro) -> PCO: `total_people`
/// - `batchCompletedAt` (ro) -> PCO: `batch_completed_at`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `campus-list-campus`: https://api.planningcenteronline.com/people/v2/lists/1/campus
/// - `listcategory-list-category`: https://api.planningcenteronline.com/people/v2/lists/1/category
/// - `person-list-created_by`: https://api.planningcenteronline.com/people/v2/lists/1/created_by
/// - `listresult-list-list_results`: https://api.planningcenteronline.com/people/v2/lists/1/list_results
/// - `mailchimpsyncstatus-list-mailchimp_sync_status`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
/// - `person-list-people`: https://api.planningcenteronline.com/people/v2/lists/1/people
/// - `rule-list-rules`: https://api.planningcenteronline.com/people/v2/lists/1/rules
/// - `listshare-list-shares`: https://api.planningcenteronline.com/people/v2/lists/1/shares
/// - `liststar-list-star`: https://api.planningcenteronline.com/people/v2/lists/1/star
/// - `person-list-updated_by`: https://api.planningcenteronline.com/people/v2/lists/1/updated_by
///
/// Inbound Edges:
/// - `list-campus-lists`: https://api.planningcenteronline.com/people/v2/campuses/1/lists
/// - `list-listcategory-lists`: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
/// - `list-organization-lists`: https://api.planningcenteronline.com/people/v2/lists
///
/// Actions:
/// - `mailchimp_sync`: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync
/// - `run`: https://api.planningcenteronline.com/people/v2/lists/1/run
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "List",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "auto_refresh": true,
///     "status": "string",
///     "has_inactive_results": true,
///     "include_inactive": true,
///     "returns": "string",
///     "return_original_if_none": true,
///     "subset": "string",
///     "automations_active": true,
///     "automations_count": 1,
///     "description": "string",
///     "invalid": true,
///     "name_or_description": "string",
///     "recently_viewed": true,
///     "refreshed_at": "2000-01-01T12:00:00Z",
///     "starred": true,
///     "total_people": 1,
///     "batch_completed_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoPeopleList extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'List';
  static const String kTypeId = 'list';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/lists';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `campus`: include associated campus
  /// - `category`: include associated category
  /// - `created_by`: include associated created_by
  /// - `mailchimp_sync_status`: include associated mailchimp_sync_status
  /// - `people`: include associated people
  /// - `rules`: include associated rules
  /// - `shares`: include associated shares
  /// - `updated_by`: include associated updated_by
  static List<String> get canInclude => [
        'campus',
        'category',
        'created_by',
        'mailchimp_sync_status',
        'people',
        'rules',
        'shares',
        'updated_by'
      ];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `batch_completed_at`: (URLParameter), query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['batch_completed_at', 'created_at', 'id', 'name', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `batch_completed_at`: (URLParameter), prefix with a hyphen (-batch_completed_at) to reverse the order
  /// - `campus_id`: (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `list_category_id`: (URLParameter), prefix with a hyphen (-list_category_id) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `name_or_description`: (URLParameter), prefix with a hyphen (-name_or_description) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => [
        'batch_completed_at',
        'campus_id',
        'created_at',
        'list_category_id',
        'name',
        'name_or_description',
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
  static const kAutoRefresh = 'auto_refresh';
  static const kStatus = 'status';
  static const kHasInactiveResults = 'has_inactive_results';
  static const kIncludeInactive = 'include_inactive';
  static const kReturns = 'returns';
  static const kReturnOriginalIfNone = 'return_original_if_none';
  static const kSubset = 'subset';
  static const kAutomationsActive = 'automations_active';
  static const kAutomationsCount = 'automations_count';
  static const kDescription = 'description';
  static const kInvalid = 'invalid';
  static const kNameOrDescription = 'name_or_description';
  static const kRecentlyViewed = 'recently_viewed';
  static const kRefreshedAt = 'refreshed_at';
  static const kStarred = 'starred';
  static const kTotalPeople = 'total_people';
  static const kBatchCompletedAt = 'batch_completed_at';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  bool get isAutoRefresh => _attributes[kAutoRefresh] == true;
  String get status => _attributes[kStatus] ?? '';
  bool get isHasInactiveResults => _attributes[kHasInactiveResults] == true;
  bool get isIncludeInactive => _attributes[kIncludeInactive] == true;
  String get returns => _attributes[kReturns] ?? '';
  bool get isReturnOriginalIfNone => _attributes[kReturnOriginalIfNone] == true;
  String get subset => _attributes[kSubset] ?? '';
  bool get isAutomationsActive => _attributes[kAutomationsActive] == true;
  int get automationsCount => _attributes[kAutomationsCount] ?? 0;
  String get description => _attributes[kDescription] ?? '';
  bool get isInvalid => _attributes[kInvalid] == true;
  String get nameOrDescription => _attributes[kNameOrDescription] ?? '';
  bool get isRecentlyViewed => _attributes[kRecentlyViewed] == true;
  DateTime get refreshedAt => DateTime.parse(_attributes[kRefreshedAt] ?? '');
  bool get isStarred => _attributes[kStarred] == true;
  int get totalPeople => _attributes[kTotalPeople] ?? 0;
  DateTime get batchCompletedAt =>
      DateTime.parse(_attributes[kBatchCompletedAt] ?? '');

  // typed getters for each relationship

  PcoPeopleCampus? get includedCampus =>
      _firstOrNull<PcoPeopleCampus>(relationships['campus']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCategory<T extends PcoResource>() =>
      (relationships['category'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCreatedBy<T extends PcoResource>() =>
      (relationships['created_by'] as List?)?.cast<T>() ?? [];

  PcoPeopleMailchimpSyncStatus? get includedMailchimpSyncStatus =>
      _firstOrNull<PcoPeopleMailchimpSyncStatus>(
          relationships['mailchimp_sync_status']);
  List<PcoPeoplePerson> get includedPeople =>
      (relationships['people'] as List?)?.cast<PcoPeoplePerson>() ?? [];
  List<PcoPeopleRule> get includedRules =>
      (relationships['rules'] as List?)?.cast<PcoPeopleRule>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedShares<T extends PcoResource>() =>
      (relationships['shares'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedUpdatedBy<T extends PcoResource>() =>
      (relationships['updated_by'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleList.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeopleList.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleList] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeopleList(
      {String? id,
      String? name,
      bool? isAutoRefresh,
      String? status,
      bool? isHasInactiveResults,
      bool? isIncludeInactive,
      String? returns,
      bool? isReturnOriginalIfNone,
      String? subset,
      bool? isAutomationsActive,
      int? automationsCount,
      String? description,
      bool? isInvalid,
      String? nameOrDescription,
      bool? isRecentlyViewed,
      DateTime? refreshedAt,
      bool? isStarred,
      int? totalPeople,
      DateTime? batchCompletedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleList.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (isAutoRefresh != null) obj._attributes['auto_refresh'] = isAutoRefresh;
    if (status != null) obj._attributes['status'] = status;
    if (isHasInactiveResults != null)
      obj._attributes['has_inactive_results'] = isHasInactiveResults;
    if (isIncludeInactive != null)
      obj._attributes['include_inactive'] = isIncludeInactive;
    if (returns != null) obj._attributes['returns'] = returns;
    if (isReturnOriginalIfNone != null)
      obj._attributes['return_original_if_none'] = isReturnOriginalIfNone;
    if (subset != null) obj._attributes['subset'] = subset;
    if (isAutomationsActive != null)
      obj._attributes['automations_active'] = isAutomationsActive;
    if (automationsCount != null)
      obj._attributes['automations_count'] = automationsCount;
    if (description != null) obj._attributes['description'] = description;
    if (isInvalid != null) obj._attributes['invalid'] = isInvalid;
    if (nameOrDescription != null)
      obj._attributes['name_or_description'] = nameOrDescription;
    if (isRecentlyViewed != null)
      obj._attributes['recently_viewed'] = isRecentlyViewed;
    if (refreshedAt != null)
      obj._attributes['refreshed_at'] = refreshedAt.toIso8601String();
    if (isStarred != null) obj._attributes['starred'] = isStarred;
    if (totalPeople != null) obj._attributes['total_people'] = totalPeople;
    if (batchCompletedAt != null)
      obj._attributes['batch_completed_at'] =
          batchCompletedAt.toIso8601String();
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

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/lists`
  ///
  /// Available Query Filters:
  /// - `can_manage`
  /// - `recently_viewed`
  /// - `starred`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleList>> get({
    String? id,
    PcoPeopleListQuery? query,
    bool includeAll = false,
    bool includeCampus = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includeMailchimpSyncStatus = false,
    bool includePeople = false,
    bool includeRules = false,
    bool includeShares = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoPeopleListQuery();
    if (includeAll) query.include.addAll(PcoPeopleList.canInclude);
    if (includeCampus) query.include.add('campus');
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includeMailchimpSyncStatus) query.include.add('mailchimp_sync_status');
    if (includePeople) query.include.add('people');
    if (includeRules) query.include.add('rules');
    if (includeShares) query.include.add('shares');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/people/v2/lists';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/$campusId/lists`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleList>> getFromCampus(
    String campusId, {
    String? id,
    PcoPeopleListQuery? query,
    bool includeAll = false,
    bool includeCampus = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includeMailchimpSyncStatus = false,
    bool includePeople = false,
    bool includeRules = false,
    bool includeShares = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoPeopleListQuery();
    if (includeAll) query.include.addAll(PcoPeopleList.canInclude);
    if (includeCampus) query.include.add('campus');
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includeMailchimpSyncStatus) query.include.add('mailchimp_sync_status');
    if (includePeople) query.include.add('people');
    if (includeRules) query.include.add('rules');
    if (includeShares) query.include.add('shares');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/people/v2/campuses/$campusId/lists';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleList] objects (expecting many)
  /// using a path like this: `/people/v2/list_categories/$listCategoryId/lists`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleList>> getFromListCategory(
    String listCategoryId, {
    String? id,
    PcoPeopleListQuery? query,
    bool includeAll = false,
    bool includeCampus = false,
    bool includeCategory = false,
    bool includeCreatedBy = false,
    bool includeMailchimpSyncStatus = false,
    bool includePeople = false,
    bool includeRules = false,
    bool includeShares = false,
    bool includeUpdatedBy = false,
  }) async {
    query ??= PcoPeopleListQuery();
    if (includeAll) query.include.addAll(PcoPeopleList.canInclude);
    if (includeCampus) query.include.add('campus');
    if (includeCategory) query.include.add('category');
    if (includeCreatedBy) query.include.add('created_by');
    if (includeMailchimpSyncStatus) query.include.add('mailchimp_sync_status');
    if (includePeople) query.include.add('people');
    if (includeRules) query.include.add('rules');
    if (includeShares) query.include.add('shares');
    if (includeUpdatedBy) query.include.add('updated_by');
    var url = '/people/v2/list_categories/$listCategoryId/lists';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/campus`
  Future<PcoCollection<PcoPeopleCampus>> getCampus(
      {PcoPeopleCampusQuery? query}) async {
    query ??= PcoPeopleCampusQuery();
    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoPeopleCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListCategory] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/category`
  Future<PcoCollection<PcoPeopleListCategory>> getCategory(
      {PcoPeopleListCategoryQuery? query}) async {
    query ??= PcoPeopleListCategoryQuery();
    var url = '$apiEndpoint/category';
    return PcoCollection.fromApiCall<PcoPeopleListCategory>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/created_by`
  Future<PcoCollection<PcoPeoplePerson>> getCreatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/created_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListResult] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/list_results`
  Future<PcoCollection<PcoPeopleListResult>> getListResults(
      {PcoPeopleListResultQuery? query}) async {
    query ??= PcoPeopleListResultQuery();
    var url = '$apiEndpoint/list_results';
    return PcoCollection.fromApiCall<PcoPeopleListResult>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleMailchimpSyncStatus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status`
  Future<PcoCollection<PcoPeopleMailchimpSyncStatus>> getMailchimpSyncStatus(
      {PcoPeopleMailchimpSyncStatusQuery? query}) async {
    query ??= PcoPeopleMailchimpSyncStatusQuery();
    var url = '$apiEndpoint/mailchimp_sync_status';
    return PcoCollection.fromApiCall<PcoPeopleMailchimpSyncStatus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/people`
  Future<PcoCollection<PcoPeoplePerson>> getPeople(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleRule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/rules`
  Future<PcoCollection<PcoPeopleRule>> getRules(
      {PcoPeopleRuleQuery? query}) async {
    query ??= PcoPeopleRuleQuery();
    var url = '$apiEndpoint/rules';
    return PcoCollection.fromApiCall<PcoPeopleRule>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/shares`
  Future<PcoCollection<PcoPeopleListShare>> getShares(
      {PcoPeopleListShareQuery? query}) async {
    query ??= PcoPeopleListShareQuery();
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleListShare>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleListStar] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/star`
  Future<PcoCollection<PcoPeopleListStar>> getStar(
      {PcoPeopleListStarQuery? query}) async {
    query ??= PcoPeopleListStarQuery();
    var url = '$apiEndpoint/star';
    return PcoCollection.fromApiCall<PcoPeopleListStar>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/updated_by`
  Future<PcoCollection<PcoPeoplePerson>> getUpdatedBy(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/updated_by';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `mailchimp_sync`
  ///
  /// Sync a List to Mailchimp. (Mailchimp integration must already be configured for this organization.)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> mailchimpSync(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/mailchimp_sync';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `run`
  ///
  /// Run a List to update its results.
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/run`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> run(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/run';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
