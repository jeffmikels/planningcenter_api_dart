/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.177136
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingDesignationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingDesignationFilter { none }

/// Creates a [PcoGivingDesignationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingDesignationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingDesignationOrder, String> _orderMap = {};
  static String orderString(PcoGivingDesignationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingDesignationFilter, String> _filterMap = {};
  static String filterString(PcoGivingDesignationFilter filter) =>
      _filterMap[filter]!;

  PcoGivingDesignationQuery({
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

/// This class represents a PCO Giving Designation Object
///
/// - Application:        giving
/// - Id:                 designation
/// - Type:               Designation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingDesignation.fromJson()` constructor.
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
/// A `Designation` conveys how much of a `Donation` goes to a particular `Fund`.
///
/// `Designation` details are required when creating a `Donation`. If all of a `Donation` is going to a single `Fund`, it will only have one `Designation`. Similarly, to split a `Donation` between multiple `Fund`s, you can use multiple `Designation`s.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `fund-designation-fund`: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
///
/// Inbound Edges:
/// - `designation-designationrefund-designation`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
/// - `designation-donation-designations`: https://api.planningcenteronline.com/giving/v2/donations/1/designations
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Designation",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
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
class PcoGivingDesignation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Designation';
  static const String kTypeId = 'designation';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/donations/1/designations';
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
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';

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

  // Class Constructors
  PcoGivingDesignation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingDesignation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingDesignation] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingDesignation(
      {String? id,
      int? amountCents,
      String? amountCurrency,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingDesignation.empty();
    obj._id = id;
    if (amountCents != null) obj._attributes['amount_cents'] = amountCents;
    if (amountCurrency != null)
      obj._attributes['amount_currency'] = amountCurrency;

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

  /// Will get a [PcoCollection] of [PcoGivingDesignation] objects (expecting one)
  /// using a path like this: `/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDesignation>>
      getFromDonationAndRefundAndDesignationRefund(
    String donationId,
    String designationRefundId, {
    PcoGivingDesignationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingDesignationQuery();
    if (getAll) query.getAll = true;

    var url =
        '/giving/v2/donations/$donationId/refund/designation_refunds/$designationRefundId/designation';

    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDesignation>> getFromDonation(
    String donationId, {
    String? id,
    PcoGivingDesignationQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingDesignationQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/donations/$donationId/designations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingDesignation] object
  /// using a path like this: `/giving/v2/donations/$donationId/designations/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingDesignation?> getSingleFromDonation(
    String donationId,
    String id, {
    PcoGivingDesignationQuery? query,
  }) async {
    query ??= PcoGivingDesignationQuery();

    var url = '/giving/v2/donations/$donationId/designations/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingDesignation>> getAllFromDonation(
    String donationId, {
    String? id,
    PcoGivingDesignationQuery? query,
  }) async {
    query ??= PcoGivingDesignationQuery();
    query.getAll = true;

    var url = '/giving/v2/donations/$donationId/designations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingFund] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund`
  Future<PcoCollection<PcoGivingFund>> getFund(
      {PcoGivingFundQuery? query}) async {
    query ??= PcoGivingFundQuery();
    var url = '$apiEndpoint/fund';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
