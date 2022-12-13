/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.249297
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `endsAt` -> `?order=ends_at`
/// - `startsAt` -> `?order=starts_at`
enum PcoGivingPledgeCampaignOrder { endsAt, startsAt }

/// Filtering is not allowed when requesting this object.
enum PcoGivingPledgeCampaignFilter { none }

/// Creates a [PcoGivingPledgeCampaignQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeFund`: include associated fund
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingPledgeCampaignQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGivingPledgeCampaign] objects can be requested with one or more of the following criteria:
/// - `whereEndsAt`: query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `whereStartsAt`: query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
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
/// - `PcoGivingPledgeCampaignOrder.endsAt` : will order by `ends_at`
/// - `PcoGivingPledgeCampaignOrder.startsAt` : will order by `starts_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingPledgeCampaignQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingPledgeCampaignOrder, String> _orderMap = {
    PcoGivingPledgeCampaignOrder.endsAt: 'ends_at',
    PcoGivingPledgeCampaignOrder.startsAt: 'starts_at',
  };
  static String orderString(PcoGivingPledgeCampaignOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingPledgeCampaignFilter, String> _filterMap = {};
  static String filterString(PcoGivingPledgeCampaignFilter filter) =>
      _filterMap[filter]!;

  PcoGivingPledgeCampaignQuery({
    /// include associated fund
    /// when true, adds `?include=fund` to url
    bool includeFund = false,

    /// Query by `ends_at`
    /// query on a specific ends_at, url example: ?where[ends_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndsAt,

    /// Query by `starts_at`
    /// query on a specific starts_at, url example: ?where[starts_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStartsAt,
    PcoGivingPledgeCampaignOrder? orderBy,

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
    if (includeFund) include.add('fund');

    if (whereEndsAt != null)
      where.add(PlanningCenterApiWhere.parse('ends_at', whereEndsAt));
    if (whereStartsAt != null)
      where.add(PlanningCenterApiWhere.parse('starts_at', whereStartsAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Giving PledgeCampaign Object
///
/// - Application:        giving
/// - Id:                 pledge_campaign
/// - Type:               PledgeCampaign
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledge_campaigns
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoGivingPledgeCampaign()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingPledgeCampaign.fromJson()` constructor.
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
/// A `PledgeCampaign` is a way to request and track long-terms commitments to a particular goal or project.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (rw) -> PCO: `name`
/// - `description` (rw) -> PCO: `description`
/// - `startsAt` (rw) -> PCO: `starts_at`
/// - `endsAt` (rw) -> PCO: `ends_at`
/// - `goalCents` (rw) -> PCO: `goal_cents`
/// - `goalCurrency` (ro) -> PCO: `goal_currency`
/// - `isShowGoalInChurchCenter` (rw) -> PCO: `show_goal_in_church_center`
/// - `receivedTotalFromPledgesCents` (ro) -> PCO: `received_total_from_pledges_cents`
/// - `receivedTotalOutsideOfPledgesCents` (ro) -> PCO: `received_total_outside_of_pledges_cents`
/// - `fundId` (wo) -> PCO: `fund_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
///
/// Inbound Edges:
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PledgeCampaign",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "description": "string",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "goal_cents": 1,
///     "goal_currency": "USD",
///     "show_goal_in_church_center": true,
///     "received_total_from_pledges_cents": 1,
///     "received_total_outside_of_pledges_cents": 1
///   },
///   "relationships": {
///     "fund": {
///       "data": {
///         "type": "Fund",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingPledgeCampaign extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PledgeCampaign';
  static const String kTypeId = 'pledge_campaign';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `fund`: include associated fund
  static List<String> get canInclude => ['fund'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['ends_at', 'starts_at'];

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at', 'starts_at'];

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
  static const kName = 'name';
  static const kDescription = 'description';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kGoalCents = 'goal_cents';
  static const kGoalCurrency = 'goal_currency';
  static const kShowGoalInChurchCenter = 'show_goal_in_church_center';
  static const kReceivedTotalFromPledgesCents =
      'received_total_from_pledges_cents';
  static const kReceivedTotalOutsideOfPledgesCents =
      'received_total_outside_of_pledges_cents';
  static const kFundId = 'fund_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'name',
        'description',
        'starts_at',
        'ends_at',
        'goal_cents',
        'show_goal_in_church_center',
        'fund_id'
      ];

  @override
  List<String> get updateAllowed => [
        'name',
        'description',
        'starts_at',
        'ends_at',
        'goal_cents',
        'show_goal_in_church_center',
        'fund_id'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get description => _attributes[kDescription] ?? '';
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  int get goalCents => _attributes[kGoalCents] ?? 0;
  String get goalCurrency => _attributes[kGoalCurrency] ?? '';
  bool get isShowGoalInChurchCenter =>
      _attributes[kShowGoalInChurchCenter] == true;
  int get receivedTotalFromPledgesCents =>
      _attributes[kReceivedTotalFromPledgesCents] ?? 0;
  int get receivedTotalOutsideOfPledgesCents =>
      _attributes[kReceivedTotalOutsideOfPledgesCents] ?? 0;

  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  ///
  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  ///
  /// pass `null` to remove key from attributes
  set startsAt(DateTime? x) => (x == null)
      ? _attributes.remove(kStartsAt)
      : _attributes[kStartsAt] = x.toIso8601String();

  ///
  /// pass `null` to remove key from attributes
  set endsAt(DateTime? x) => (x == null)
      ? _attributes.remove(kEndsAt)
      : _attributes[kEndsAt] = x.toIso8601String();

  /// Optional. During the donation period of this campaign, the running total of donations will be tracked against this number
  ///
  /// pass `null` to remove key from attributes
  set goalCents(int? x) => (x == null)
      ? _attributes.remove(kGoalCents)
      : _attributes[kGoalCents] = x;

  /// In addition to seeing their personal pledge progress within their donor profile, this option allows donors to see the the collective progress towards the campaign’s overall goal (if set).
  ///
  /// pass `null` to remove key from attributes
  set isShowGoalInChurchCenter(bool? x) => (x == null)
      ? _attributes.remove(kShowGoalInChurchCenter)
      : _attributes[kShowGoalInChurchCenter] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set fundId(String? x) =>
      (x == null) ? _attributes.remove(kFundId) : _attributes[kFundId] = x;
  String get fundId => _attributes[kFundId] ?? '';

  // typed getters for each relationship

  PcoGivingFund? get includedFund =>
      _firstOrNull<PcoGivingFund>(relationships['fund']);

  // Class Constructors
  PcoGivingPledgeCampaign.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingPledgeCampaign.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPledgeCampaign] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`, `description`, `startsAt`, `endsAt`, `goalCents`, `isShowGoalInChurchCenter`, `fundId`
  /// - FIELDS USED WHEN UPDATING: `name`, `description`, `startsAt`, `endsAt`, `goalCents`, `isShowGoalInChurchCenter`, `fundId`
  factory PcoGivingPledgeCampaign(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      String? description,
      DateTime? startsAt,
      DateTime? endsAt,
      int? goalCents,
      String? goalCurrency,
      bool? isShowGoalInChurchCenter,
      int? receivedTotalFromPledgesCents,
      int? receivedTotalOutsideOfPledgesCents,
      String? fundId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingPledgeCampaign.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (description != null) obj._attributes['description'] = description;
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (goalCents != null) obj._attributes['goal_cents'] = goalCents;
    if (goalCurrency != null) obj._attributes['goal_currency'] = goalCurrency;
    if (isShowGoalInChurchCenter != null)
      obj._attributes['show_goal_in_church_center'] = isShowGoalInChurchCenter;
    if (receivedTotalFromPledgesCents != null)
      obj._attributes['received_total_from_pledges_cents'] =
          receivedTotalFromPledgesCents;
    if (receivedTotalOutsideOfPledgesCents != null)
      obj._attributes['received_total_outside_of_pledges_cents'] =
          receivedTotalOutsideOfPledgesCents;
    if (fundId != null) obj._attributes['fund_id'] = fundId;

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

  /// Will get a collection of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/$pledgeId/pledge_campaign`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPledgeCampaign>> getFromPledge(
    String pledgeId, {
    PcoGivingPledgeCampaignQuery? query,
    bool includeFund = false,
  }) async {
    query ??= PcoGivingPledgeCampaignQuery();

    if (includeFund) query.include.add('fund');
    var url = '/giving/v2/pledges/$pledgeId/pledge_campaign';

    return PcoCollection.fromApiCall<PcoGivingPledgeCampaign>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingFund] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund`
  Future<PcoCollection<PcoGivingFund>> getFund(
      {PcoGivingFundQuery? query}) async {
    query ??= PcoGivingFundQuery();
    var url = '$apiEndpoint/fund';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges`
  Future<PcoCollection<PcoGivingPledge>> getPledges(
      {PcoGivingPledgeQuery? query}) async {
    query ??= PcoGivingPledgeQuery();
    var url = '$apiEndpoint/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
