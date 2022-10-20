/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.688914
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
enum PcoPeoplePersonMergerOrder { createdAt }

/// Filtering is not allowed when requesting this object.
enum PcoPeoplePersonMergerFilter { none }

/// Creates a [PcoPeoplePersonMergerQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoPeoplePersonMerger] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `wherePersonToKeepId`: query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
/// - `wherePersonToRemoveId`: query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
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
/// - `PcoPeoplePersonMergerOrder.createdAt` : will order by `created_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeoplePersonMergerQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeoplePersonMergerOrder, String> _orderMap = {
    PcoPeoplePersonMergerOrder.createdAt: 'created_at',
  };
  static String orderString(PcoPeoplePersonMergerOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeoplePersonMergerFilter, String> _filterMap = {};
  static String filterString(PcoPeoplePersonMergerFilter filter) =>
      _filterMap[filter]!;

  PcoPeoplePersonMergerQuery({
    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `person_to_keep_id`
    /// query on a specific person_to_keep_id, url example: ?where[person_to_keep_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePersonToKeepId,

    /// Query by `person_to_remove_id`
    /// query on a specific person_to_remove_id, url example: ?where[person_to_remove_id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePersonToRemoveId,
    PcoPeoplePersonMergerOrder? orderBy,

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
    if (wherePersonToKeepId != null)
      where.add(PlanningCenterApiWhere.parse(
          'person_to_keep_id', wherePersonToKeepId));
    if (wherePersonToRemoveId != null)
      where.add(PlanningCenterApiWhere.parse(
          'person_to_remove_id', wherePersonToRemoveId));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People PersonMerger Object
///
/// - Application:        people
/// - Id:                 person_merger
/// - Type:               PersonMerger
/// - ApiVersion:         2022-07-14
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/person_mergers
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoPeoplePersonMerger.fromJson()` constructor.
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
/// A Person Merger is the history of profiles that were merged into other profiles.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `personToKeepId` (ro) -> PCO: `person_to_keep_id`
/// - `personToRemoveId` (ro) -> PCO: `person_to_remove_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `personmerger-organization-person_mergers`: https://api.planningcenteronline.com/people/v2/person_mergers
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PersonMerger",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "person_to_keep_id": "primary_key",
///     "person_to_remove_id": "primary_key"
///   },
///   "relationships": {
///     "person_to_keep": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "person_to_remove": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeoplePersonMerger extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonMerger';
  static const String kTypeId = 'person_merger';
  static const String kApiVersion = '2022-07-14';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/person_mergers';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
  /// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
  static List<String> get canQuery =>
      ['created_at', 'person_to_keep_id', 'person_to_remove_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kPersonToKeepId = 'person_to_keep_id';
  static const kPersonToRemoveId = 'person_to_remove_id';

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
  String get personToKeepId => _attributes[kPersonToKeepId] ?? '';
  String get personToRemoveId => _attributes[kPersonToRemoveId] ?? '';

  // Class Constructors
  PcoPeoplePersonMerger.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoPeoplePersonMerger.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeoplePersonMerger] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoPeoplePersonMerger(
      {String? id,
      DateTime? createdAt,
      String? personToKeepId,
      String? personToRemoveId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeoplePersonMerger.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (personToKeepId != null)
      obj._attributes['person_to_keep_id'] = personToKeepId;
    if (personToRemoveId != null)
      obj._attributes['person_to_remove_id'] = personToRemoveId;

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

  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `/people/v2/person_mergers`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeoplePersonMerger>> get({
    String? id,
    PcoPeoplePersonMergerQuery? query,
  }) async {
    query ??= PcoPeoplePersonMergerQuery();

    var url = '/people/v2/person_mergers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
