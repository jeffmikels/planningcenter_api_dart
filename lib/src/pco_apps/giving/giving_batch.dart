/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:10.689043
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingBatchOrder { none }

/// Possible Inbound Filters:
/// - `committed` -> `?filter=committed` : -- no description
/// - `inProgress` -> `?filter=in_progress` : -- no description
enum PcoGivingBatchFilter { committed, inProgress }

/// Creates a [PcoGivingBatchQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeBatchGroup`: include associated batch_group
/// - `includeOwner`: include associated owner
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingBatchQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingBatchQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingBatchOrder, String> _orderMap = {};
  static String orderString(PcoGivingBatchOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingBatchFilter, String> _filterMap = {
    PcoGivingBatchFilter.committed: 'committed',
    PcoGivingBatchFilter.inProgress: 'in_progress',
  };
  static String filterString(PcoGivingBatchFilter filter) =>
      _filterMap[filter]!;

  PcoGivingBatchQuery({
    /// include associated batch_group
    /// when true, adds `?include=batch_group` to url
    bool includeBatchGroup = false,

    /// include associated owner
    /// when true, adds `?include=owner` to url
    bool includeOwner = false,

    /// when true, adds `?include=batch_group,owner` to url parameters
    bool includeAll = false,
    PcoGivingBatchFilter? filterBy,

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
    if (includeAll || includeBatchGroup) include.add('batch_group');
    if (includeAll || includeOwner) include.add('owner');
  }
}

/// This class represents a PCO Giving Batch Object
///
/// - Application:        giving
/// - Id:                 batch
/// - Type:               Batch
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/batches
/// - Create Endpoint:    https://api.planningcenteronline.com/giving/v2/batches
///
/// ## Instantiation
/// - Create a new instance using the `PcoGivingBatch()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingBatch.fromJson()` constructor.
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
/// A `Batch` is a collection of `Donation`s. When creating `Donation`'s via the API, you're required to put them in a `Batch`.
///
/// When a `Batch` is first created, it's in the `in_progress` or "uncommitted" state. You can freely add/remove/modify `Donation`s in this `Batch` and they won't show up in a donor's donation history online, they won't appear in any donor statements issued by the Giving admin, and changes to these donations are not flagged in the system log. Think of it as a staging area for donations.
///
/// When a `Batch` is committed (see more in the Actions section), all of the `Donation`s within it are also marked as "committed". At that point, they're visible to donors in their online history, and any further edits made to those `Donation`s are logged and visible to Giving admins.
///
/// With all of that in mind, you can use `Batch`es in one of two ways:
///
///   1.  Create an uncommitted `Batch`, add `Donation`s to it, then commit the `Batch`.
///   2.  Create a `Batch`, commit it, then add `Donation`s to it.
///
/// In both cases, the end result is the same. The main difference is that option #2 does not provide you/other admins the opportunity to fix any mistakes before changes are logged and `Donation`s are made visible to donors. Any `Donation`s added to a committed `Batch` will automatically be committed as well.
///
/// Whichever route you decide to take, it's helpful to make use of the `Batch`'s description to help differentiate these groupings from each other and from other `Batch`es that the Giving admins might be creating on their own.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `committedAt` (ro) -> PCO: `committed_at`
/// - `description` (rw) -> PCO: `description`
/// - `donationsCount` (ro) -> PCO: `donations_count`
/// - `totalCents` (ro) -> PCO: `total_cents`
/// - `totalCurrency` (ro) -> PCO: `total_currency`
/// - `status` (ro) -> PCO: `status`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `batchgroup-batch-batch_group`: https://api.planningcenteronline.com/giving/v2/batches/1/batch_group
/// - `donation-batch-donations`: https://api.planningcenteronline.com/giving/v2/batches/1/donations
/// - `person-batch-owner`: https://api.planningcenteronline.com/giving/v2/batches/1/owner
///
/// Inbound Edges:
/// - `batch-batchgroup-batches`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/batches
/// - `batch-organization-batches`: https://api.planningcenteronline.com/giving/v2/batches
/// - `batch-person-batches`: https://api.planningcenteronline.com/giving/v2/people/1/batches
///
/// Actions:
/// - `commit`: https://api.planningcenteronline.com/giving/v2/batches/1/commit
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Batch",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "committed_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "total_cents": 1,
///     "total_currency": "string",
///     "status": "string"
///   },
///   "relationships": {
///     "batch_group": {
///       "data": {
///         "type": "BatchGroup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingBatch extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Batch';
  static const String kTypeId = 'batch';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/batches';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/giving/v2/batches';

  /// possible includes with parameter ?include=a,b
  /// - `batch_group`: include associated batch_group
  /// - `owner`: include associated owner
  static List<String> get canInclude => ['batch_group', 'owner'];

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
  static const kUpdatedAt = 'updated_at';
  static const kCommittedAt = 'committed_at';
  static const kDescription = 'description';
  static const kDonationsCount = 'donations_count';
  static const kTotalCents = 'total_cents';
  static const kTotalCurrency = 'total_currency';
  static const kStatus = 'status';

  // getters and setters
  @override
  List<String> get createAllowed => ['description'];

  @override
  List<String> get updateAllowed => ['description'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  DateTime get committedAt => DateTime.parse(_attributes[kCommittedAt] ?? '');
  String get description => _attributes[kDescription] ?? '';
  int get donationsCount => _attributes[kDonationsCount] ?? 0;
  int get totalCents => _attributes[kTotalCents] ?? 0;
  String get totalCurrency => _attributes[kTotalCurrency] ?? '';
  String get status => _attributes[kStatus] ?? '';

  // setters for object attributes

  /// A brief description of what a batch is for. This is displayed in Giving to help differentiate different batches from one another. If no description is provided for a batch, it will be referred to as `Untitled batch` within Giving.
  ///
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  // typed getters for each relationship

  PcoGivingBatchGroup? get includedBatchGroup =>
      _firstOrNull<PcoGivingBatchGroup>(relationships['batch_group']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedOwner<T extends PcoResource>() =>
      (relationships['owner'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoGivingBatch.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingBatch.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingBatch] object using this endpoint: `https://api.planningcenteronline.com/giving/v2/batches`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `description`
  /// - FIELDS USED WHEN UPDATING: `description`
  factory PcoGivingBatch(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? committedAt,
      String? description,
      int? donationsCount,
      int? totalCents,
      String? totalCurrency,
      String? status,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingBatch.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/batches';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (committedAt != null)
      obj._attributes['committed_at'] = committedAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (donationsCount != null)
      obj._attributes['donations_count'] = donationsCount;
    if (totalCents != null) obj._attributes['total_cents'] = totalCents;
    if (totalCurrency != null)
      obj._attributes['total_currency'] = totalCurrency;
    if (status != null) obj._attributes['status'] = status;

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

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `/giving/v2/batches`
  ///
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingBatch>> get({
    String? id,
    PcoGivingBatchQuery? query,
    bool includeAll = false,
    bool includeBatchGroup = false,
    bool includeOwner = false,
  }) async {
    query ??= PcoGivingBatchQuery();
    if (includeAll) query.include.addAll(PcoGivingBatch.canInclude);
    if (includeBatchGroup) query.include.add('batch_group');
    if (includeOwner) query.include.add('owner');
    var url = '/giving/v2/batches';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `/giving/v2/batch_groups/$batchGroupId/batches`
  ///
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingBatch>> getFromBatchGroup(
    String batchGroupId, {
    String? id,
    PcoGivingBatchQuery? query,
    bool includeAll = false,
    bool includeBatchGroup = false,
    bool includeOwner = false,
  }) async {
    query ??= PcoGivingBatchQuery();
    if (includeAll) query.include.addAll(PcoGivingBatch.canInclude);
    if (includeBatchGroup) query.include.add('batch_group');
    if (includeOwner) query.include.add('owner');
    var url = '/giving/v2/batch_groups/$batchGroupId/batches';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/batches`
  ///
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingBatch>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingBatchQuery? query,
    bool includeAll = false,
    bool includeBatchGroup = false,
    bool includeOwner = false,
  }) async {
    query ??= PcoGivingBatchQuery();
    if (includeAll) query.include.addAll(PcoGivingBatch.canInclude);
    if (includeBatchGroup) query.include.add('batch_group');
    if (includeOwner) query.include.add('owner');
    var url = '/giving/v2/people/$personId/batches';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/batch_group`
  Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroup(
      {PcoGivingBatchGroupQuery? query}) async {
    query ??= PcoGivingBatchGroupQuery();
    var url = '$apiEndpoint/batch_group';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PcoGivingDonationQuery? query}) async {
    query ??= PcoGivingDonationQuery();
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/owner`
  Future<PcoCollection<PcoGivingPerson>> getOwner(
      {PcoGivingPersonQuery? query}) async {
    query ??= PcoGivingPersonQuery();
    var url = '$apiEndpoint/owner';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `commit`
  ///
  /// Used to commit an in progress batch.
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches/1/commit`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This action takes an uncommitted Batch and commits it.
  /// It will respond with `unprocessable_entity` if the Batch cannot be committed.
  ///
  /// It does not expect a body.
  ///
  /// Committing a Batch happens asyncronously, so initially the Batch's `status` will be `updating`.
  /// You can poll that Batch's endpoint to see whether it's changed from `updating` to `committed`.
  Future<PlanningCenterApiResponse> commit(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/commit';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
