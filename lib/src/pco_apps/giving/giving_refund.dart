/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.220490
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingRefundOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingRefundFilter { none }

/// Creates a [PcoGivingRefundQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDesignationRefunds`: include associated designation_refunds
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingRefundQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingRefundQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingRefundOrder, String> _orderMap = {};
  static String orderString(PcoGivingRefundOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingRefundFilter, String> _filterMap = {};
  static String filterString(PcoGivingRefundFilter filter) =>
      _filterMap[filter]!;

  PcoGivingRefundQuery({
    /// include associated designation_refunds
    /// when true, adds `?include=designation_refunds` to url
    bool includeDesignationRefunds = false,

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
    if (includeDesignationRefunds) include.add('designation_refunds');
  }
}

/// This class represents a PCO Giving Refund Object
///
/// - Application:        giving
/// - Id:                 refund
/// - Type:               Refund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/refund
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingRefund.fromJson()` constructor.
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
/// A `Refund` record holds information pertaining to a refunded `Donation`.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
/// - `feeCents` (ro) -> PCO: `fee_cents`
/// - `refundedAt` (ro) -> PCO: `refunded_at`
/// - `feeCurrency` (ro) -> PCO: `fee_currency`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `designationrefund-refund-designation_refunds`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
///
/// Inbound Edges:
/// - `refund-donation-refund`: https://api.planningcenteronline.com/giving/v2/donations/1/refund
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Refund",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "amount_currency": "string",
///     "fee_cents": 1,
///     "refunded_at": "2000-01-01T12:00:00Z",
///     "fee_currency": "USD"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingRefund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Refund';
  static const String kTypeId = 'refund';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/donations/1/refund';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `designation_refunds`: include associated designation_refunds
  static List<String> get canInclude => ['designation_refunds'];

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
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';
  static const kFeeCents = 'fee_cents';
  static const kRefundedAt = 'refunded_at';
  static const kFeeCurrency = 'fee_currency';

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
  int get amountCents => _getAttribute<int>(kAmountCents, 0);
  String get amountCurrency => _getAttribute<String>(kAmountCurrency, '');
  int get feeCents => _getAttribute<int>(kFeeCents, 0);
  DateTime get refundedAt => _getAttribute<DateTime>(kRefundedAt, DateTime(0));
  String get feeCurrency => _getAttribute<String>(kFeeCurrency, '');

  // typed getters for each relationship

  List<PcoGivingDesignationRefund> get includedDesignationRefunds =>
      (relationships['designation_refunds'] as List?)
          ?.cast<PcoGivingDesignationRefund>() ??
      [];

  // Class Constructors
  PcoGivingRefund.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingRefund.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingRefund] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingRefund(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? amountCents,
      String? amountCurrency,
      int? feeCents,
      DateTime? refundedAt,
      String? feeCurrency,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingRefund.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (amountCents != null) obj._attributes['amount_cents'] = amountCents;
    if (amountCurrency != null)
      obj._attributes['amount_currency'] = amountCurrency;
    if (feeCents != null) obj._attributes['fee_cents'] = feeCents;
    if (refundedAt != null)
      obj._attributes['refunded_at'] = refundedAt.toIso8601String();
    if (feeCurrency != null) obj._attributes['fee_currency'] = feeCurrency;

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

  /// Will get a [PcoCollection] of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/refund`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingRefund>> getFromDonation(
    String donationId, {
    String? id,
    PcoGivingRefundQuery? query,
    bool getAll = false,
    bool includeDesignationRefunds = false,
  }) async {
    query ??= PcoGivingRefundQuery();
    if (getAll) query.getAll = true;

    if (includeDesignationRefunds) query.include.add('designation_refunds');
    var url = '/giving/v2/donations/$donationId/refund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRefund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingRefund] object
  /// using a path like this: `/giving/v2/donations/$donationId/refund/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingRefund?> getSingleFromDonation(
    String donationId,
    String id, {
    PcoGivingRefundQuery? query,
    bool includeDesignationRefunds = false,
  }) async {
    query ??= PcoGivingRefundQuery();

    if (includeDesignationRefunds) query.include.add('designation_refunds');
    var url = '/giving/v2/donations/$donationId/refund/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingRefund>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/refund`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingRefund>> getAllFromDonation(
    String donationId, {
    String? id,
    PcoGivingRefundQuery? query,
    bool includeDesignationRefunds = false,
  }) async {
    query ??= PcoGivingRefundQuery();
    query.getAll = true;

    if (includeDesignationRefunds) query.include.add('designation_refunds');
    var url = '/giving/v2/donations/$donationId/refund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRefund>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDesignationRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds`
  Future<PcoCollection<PcoGivingDesignationRefund>> getDesignationRefunds(
      {PcoGivingDesignationRefundQuery? query}) async {
    query ??= PcoGivingDesignationRefundQuery();
    var url = '$apiEndpoint/designation_refunds';
    return PcoCollection.fromApiCall<PcoGivingDesignationRefund>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
