/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.592005
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `locked` -> `?order=locked`
/// - `name` -> `?order=name`
/// - `organizationId` -> `?order=organization_id`
/// - `updatedAt` -> `?order=updated_at`
enum PcoPeopleNoteCategoryOrder {
  createdAt,
  locked,
  name,
  organizationId,
  updatedAt
}

/// Filtering is not allowed when requesting this object.
enum PcoPeopleNoteCategoryFilter { none }

/// Creates a [PcoPeopleNoteCategoryQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeShares`: include associated shares
/// - `includeSubscribers`: include associated subscribers
/// - `includeSubscriptions`: include associated subscriptions
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoPeopleNoteCategoryQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeopleNoteCategory] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereLocked`: query on a specific locked, example: ?where[locked]=true
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereOrganizationId`: query on a specific organization_id, example: ?where[organization_id]=primary_key
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
/// - `PcoPeopleNoteCategoryOrder.createdAt` : will order by `created_at`
/// - `PcoPeopleNoteCategoryOrder.locked` : will order by `locked`
/// - `PcoPeopleNoteCategoryOrder.name` : will order by `name`
/// - `PcoPeopleNoteCategoryOrder.organizationId` : will order by `organization_id`
/// - `PcoPeopleNoteCategoryOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleNoteCategoryQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleNoteCategoryOrder, String> _orderMap = {
    PcoPeopleNoteCategoryOrder.createdAt: 'created_at',
    PcoPeopleNoteCategoryOrder.locked: 'locked',
    PcoPeopleNoteCategoryOrder.name: 'name',
    PcoPeopleNoteCategoryOrder.organizationId: 'organization_id',
    PcoPeopleNoteCategoryOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoPeopleNoteCategoryOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleNoteCategoryFilter, String> _filterMap = {};
  static String filterString(PcoPeopleNoteCategoryFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleNoteCategoryQuery({
    /// include associated shares
    /// when true, adds `?include=shares` to url
    bool includeShares = false,

    /// include associated subscribers
    /// when true, adds `?include=subscribers` to url
    bool includeSubscribers = false,

    /// include associated subscriptions
    /// when true, adds `?include=subscriptions` to url
    bool includeSubscriptions = false,

    /// when true, adds `?include=shares,subscribers,subscriptions` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `locked`
    /// query on a specific locked, url example: ?where[locked]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLocked,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `organization_id`
    /// query on a specific organization_id, url example: ?where[organization_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereOrganizationId,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoPeopleNoteCategoryOrder? orderBy,

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
    if (includeAll || includeShares) include.add('shares');
    if (includeAll || includeSubscribers) include.add('subscribers');
    if (includeAll || includeSubscriptions) include.add('subscriptions');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereLocked != null)
      where.add(PlanningCenterApiWhere.parse('locked', whereLocked));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereOrganizationId != null)
      where.add(
          PlanningCenterApiWhere.parse('organization_id', whereOrganizationId));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People NoteCategory Object
///
/// - Application:        people
/// - Id:                 note_category
/// - Type:               NoteCategory
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/note_categories
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/note_categories
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleNoteCategory()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleNoteCategory.fromJson()` constructor.
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
/// A Note Category
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `isLocked` (ro) -> PCO: `locked`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `organizationId` (ro) -> PCO: `organization_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `notecategoryshare-notecategory-shares`: https://api.planningcenteronline.com/people/v2/note_categories/1/shares
/// - `person-notecategory-subscribers`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers
/// - `notecategorysubscription-notecategory-subscriptions`: https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions
///
/// Inbound Edges:
/// - `notecategory-note-category`: https://api.planningcenteronline.com/people/v2/notes/1/category
/// - `notecategory-organization-note_categories`: https://api.planningcenteronline.com/people/v2/note_categories
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "NoteCategory",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "locked": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "organization_id": "primary_key"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleNoteCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'NoteCategory';
  static const String kTypeId = 'note_category';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/note_categories';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/note_categories';

  /// possible includes with parameter ?include=a,b
  /// - `shares`: include associated shares
  /// - `subscribers`: include associated subscribers
  /// - `subscriptions`: include associated subscriptions
  static List<String> get canInclude =>
      ['shares', 'subscribers', 'subscriptions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `locked`: (URLParameter), query on a specific locked, example: ?where[locked]=true
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `organization_id`: (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'locked', 'name', 'organization_id', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `locked`: (URLParameter), prefix with a hyphen (-locked) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `organization_id`: (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'locked', 'name', 'organization_id', 'updated_at'];

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
  static const kLocked = 'locked';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kOrganizationId = 'organization_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  bool get isLocked => _attributes[kLocked] == true;
  String get organizationId => _attributes[kOrganizationId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedShares<T extends PcoResource>() =>
      (relationships['shares'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedSubscribers<T extends PcoResource>() =>
      (relationships['subscribers'] as List?)?.cast<T>() ?? [];

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedSubscriptions<T extends PcoResource>() =>
      (relationships['subscriptions'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoPeopleNoteCategory.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleNoteCategory.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleNoteCategory] object using this endpoint: `https://api.planningcenteronline.com/people/v2/note_categories`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `name`
  /// - FIELDS USED WHEN UPDATING: `name`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleNoteCategory(
      {String? id,
      String? name,
      bool? isLocked,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? organizationId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleNoteCategory.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/note_categories';
    if (name != null) obj._attributes['name'] = name;
    if (isLocked != null) obj._attributes['locked'] = isLocked;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (organizationId != null)
      obj._attributes['organization_id'] = organizationId;

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

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting many)
  /// using a path like this: `/people/v2/note_categories`
  static Future<PcoCollection<PcoPeopleNoteCategory>> get({
    String? id,
    PcoPeopleNoteCategoryQuery? query,
    bool includeAll = false,
    bool includeShares = false,
    bool includeSubscribers = false,
    bool includeSubscriptions = false,
  }) async {
    query ??= PcoPeopleNoteCategoryQuery();
    if (includeAll) query.include.addAll(PcoPeopleNoteCategory.canInclude);
    if (includeShares) query.include.add('shares');
    if (includeSubscribers) query.include.add('subscribers');
    if (includeSubscriptions) query.include.add('subscriptions');
    var url = '/people/v2/note_categories';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategory] objects (expecting one)
  /// using a path like this: `/people/v2/notes/$noteId/category`
  static Future<PcoCollection<PcoPeopleNoteCategory>> getCategoryFromNote(
    String noteId, {
    PcoPeopleNoteCategoryQuery? query,
    bool includeAll = false,
    bool includeShares = false,
    bool includeSubscribers = false,
    bool includeSubscriptions = false,
  }) async {
    query ??= PcoPeopleNoteCategoryQuery();
    if (includeAll) query.include.addAll(PcoPeopleNoteCategory.canInclude);
    if (includeShares) query.include.add('shares');
    if (includeSubscribers) query.include.add('subscribers');
    if (includeSubscriptions) query.include.add('subscriptions');
    var url = '/people/v2/notes/$noteId/category';

    return PcoCollection.fromApiCall<PcoPeopleNoteCategory>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleNoteCategoryShare] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/shares`
  Future<PcoCollection<PcoPeopleNoteCategoryShare>> getShares(
      {PcoPeopleNoteCategoryShareQuery? query}) async {
    query ??= PcoPeopleNoteCategoryShareQuery();
    var url = '$apiEndpoint/shares';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategoryShare>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscribers`
  Future<PcoCollection<PcoPeoplePerson>> getSubscribers(
      {PcoPeoplePersonQuery? query}) async {
    query ??= PcoPeoplePersonQuery();
    var url = '$apiEndpoint/subscribers';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleNoteCategorySubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/note_categories/1/subscriptions`
  Future<PcoCollection<PcoPeopleNoteCategorySubscription>> getSubscriptions(
      {PcoPeopleNoteCategorySubscriptionQuery? query}) async {
    query ??= PcoPeopleNoteCategorySubscriptionQuery();
    var url = '$apiEndpoint/subscriptions';
    return PcoCollection.fromApiCall<PcoPeopleNoteCategorySubscription>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
