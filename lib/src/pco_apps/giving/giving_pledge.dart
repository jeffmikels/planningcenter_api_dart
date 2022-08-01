/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.652221
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoGivingPledgeOrder { createdAt, updatedAt }

/// Filtering is not allowed when requesting this object.
enum PcoGivingPledgeFilter { none }

/// Creates a [PcoGivingPledgeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeJointGiver`: include associated joint_giver
/// - `includePledgeCampaign`: include associated pledge_campaign
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingPledgeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGivingPledge] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
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
/// - `PcoGivingPledgeOrder.createdAt` : will order by `created_at`
/// - `PcoGivingPledgeOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingPledgeQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingPledgeOrder, String> _orderMap = {
    PcoGivingPledgeOrder.createdAt: 'created_at',
    PcoGivingPledgeOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoGivingPledgeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingPledgeFilter, String> _filterMap = {};
  static String filterString(PcoGivingPledgeFilter filter) =>
      _filterMap[filter]!;

  PcoGivingPledgeQuery({
    /// include associated joint_giver
    /// when true, adds `?include=joint_giver` to url
    bool includeJointGiver = false,

    /// include associated pledge_campaign
    /// when true, adds `?include=pledge_campaign` to url
    bool includePledgeCampaign = false,

    /// when true, adds `?include=joint_giver,pledge_campaign` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoGivingPledgeOrder? orderBy,

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
    if (includeAll || includeJointGiver) include.add('joint_giver');
    if (includeAll || includePledgeCampaign) include.add('pledge_campaign');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Giving Pledge Object
///
/// - Application:        giving
/// - Id:                 pledge
/// - Type:               Pledge
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledges
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoGivingPledge()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingPledge.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `amountCents` (rw) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
/// - `jointGiverAmountCents` (ro) -> PCO: `joint_giver_amount_cents`
/// - `donatedTotalCents` (ro) -> PCO: `donated_total_cents`
/// - `jointGiverDonatedTotalCents` (ro) -> PCO: `joint_giver_donated_total_cents`
/// - `personId` (wo) -> PCO: `person_id`
/// - `pledgeCampaignId` (wo) -> PCO: `pledge_campaign_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
///
/// Inbound Edges:
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Pledge",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "amount_currency": "USD",
///     "joint_giver_amount_cents": 1,
///     "donated_total_cents": 1,
///     "joint_giver_donated_total_cents": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "pledge_campaign": {
///       "data": {
///         "type": "PledgeCampaign",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingPledge extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Pledge';
  static const String kTypeId = 'pledge';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/pledges';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `joint_giver`: include associated joint_giver
  /// - `pledge_campaign`: include associated pledge_campaign
  static List<String> get canInclude => ['joint_giver', 'pledge_campaign'];

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
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';
  static const kJointGiverAmountCents = 'joint_giver_amount_cents';
  static const kDonatedTotalCents = 'donated_total_cents';
  static const kJointGiverDonatedTotalCents = 'joint_giver_donated_total_cents';
  static const kPersonId = 'person_id';
  static const kPledgeCampaignId = 'pledge_campaign_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['amount_cents', 'person_id', 'pledge_campaign_id'];

  @override
  List<String> get updateAllowed => ['amount_cents'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  int get amountCents => _attributes[kAmountCents] ?? 0;
  String get amountCurrency => _attributes[kAmountCurrency] ?? '';
  int get jointGiverAmountCents => _attributes[kJointGiverAmountCents] ?? 0;
  int get donatedTotalCents => _attributes[kDonatedTotalCents] ?? 0;
  int get jointGiverDonatedTotalCents =>
      _attributes[kJointGiverDonatedTotalCents] ?? 0;

  // setters for object attributes

  /// The amount pledged

  /// pass `null` to remove key from attributes
  set amountCents(int? x) => (x == null)
      ? _attributes.remove(kAmountCents)
      : _attributes[kAmountCents] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  /// pass `null` to remove key from attributes
  set pledgeCampaignId(String? x) => (x == null)
      ? _attributes.remove(kPledgeCampaignId)
      : _attributes[kPledgeCampaignId] = x;
  String get pledgeCampaignId => _attributes[kPledgeCampaignId] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedJointGiver<T extends PcoResource>() =>
      (relationships['joint_giver'] as List?)?.cast<T>() ?? [];

  PcoGivingPledgeCampaign? get includedPledgeCampaign =>
      _firstOrNull<PcoGivingPledgeCampaign>(relationships['pledge_campaign']);

  // Class Constructors
  PcoGivingPledge.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingPledge.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPledge] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `amountCents`, `personId`, `pledgeCampaignId`
  /// - FIELDS USED WHEN UPDATING: `amountCents`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGivingPledge(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? amountCents,
      String? amountCurrency,
      int? jointGiverAmountCents,
      int? donatedTotalCents,
      int? jointGiverDonatedTotalCents,
      String? personId,
      String? pledgeCampaignId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingPledge.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (amountCents != null) obj._attributes['amount_cents'] = amountCents;
    if (amountCurrency != null)
      obj._attributes['amount_currency'] = amountCurrency;
    if (jointGiverAmountCents != null)
      obj._attributes['joint_giver_amount_cents'] = jointGiverAmountCents;
    if (donatedTotalCents != null)
      obj._attributes['donated_total_cents'] = donatedTotalCents;
    if (jointGiverDonatedTotalCents != null)
      obj._attributes['joint_giver_donated_total_cents'] =
          jointGiverDonatedTotalCents;
    if (personId != null) obj._attributes['person_id'] = personId;
    if (pledgeCampaignId != null)
      obj._attributes['pledge_campaign_id'] = pledgeCampaignId;

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

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/pledges`
  static Future<PcoCollection<PcoGivingPledge>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingPledgeQuery? query,
    bool includeAll = false,
    bool includeJointGiver = false,
    bool includePledgeCampaign = false,
  }) async {
    query ??= PcoGivingPledgeQuery();
    if (includeAll) query.include.addAll(PcoGivingPledge.canInclude);
    if (includeJointGiver) query.include.add('joint_giver');
    if (includePledgeCampaign) query.include.add('pledge_campaign');
    var url = '/giving/v2/people/$personId/pledges';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges`
  static Future<PcoCollection<PcoGivingPledge>> getFromPledgeCampaign(
    String pledgeCampaignId, {
    String? id,
    PcoGivingPledgeQuery? query,
    bool includeAll = false,
    bool includeJointGiver = false,
    bool includePledgeCampaign = false,
  }) async {
    query ??= PcoGivingPledgeQuery();
    if (includeAll) query.include.addAll(PcoGivingPledge.canInclude);
    if (includeJointGiver) query.include.add('joint_giver');
    if (includePledgeCampaign) query.include.add('pledge_campaign');
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver`
  Future<PcoCollection<PcoGivingPerson>> getJointGiver(
      {PcoGivingPersonQuery? query}) async {
    query ??= PcoGivingPersonQuery();
    var url = '$apiEndpoint/joint_giver';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign`
  Future<PcoCollection<PcoGivingPledgeCampaign>> getPledgeCampaign(
      {PcoGivingPledgeCampaignQuery? query}) async {
    query ??= PcoGivingPledgeCampaignQuery();
    var url = '$apiEndpoint/pledge_campaign';
    return PcoCollection.fromApiCall<PcoGivingPledgeCampaign>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
