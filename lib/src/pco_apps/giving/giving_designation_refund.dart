/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:10.691240
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingDesignationRefundOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingDesignationRefundFilter { none }

/// Creates a [PcoGivingDesignationRefundQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDesignation`: include associated designation
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingDesignationRefundQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingDesignationRefundQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingDesignationRefundOrder, String> _orderMap = {};
  static String orderString(PcoGivingDesignationRefundOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingDesignationRefundFilter, String> _filterMap = {};
  static String filterString(PcoGivingDesignationRefundFilter filter) =>
      _filterMap[filter]!;

  PcoGivingDesignationRefundQuery({
    /// include associated designation
    /// when true, adds `?include=designation` to url
    bool includeDesignation = false,

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
    if (includeDesignation) include.add('designation');
  }
}

/// This class represents a PCO Giving DesignationRefund Object
///
/// - Application:        giving
/// - Id:                 designation_refund
/// - Type:               DesignationRefund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingDesignationRefund.fromJson()` constructor.
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
/// A record that links a `Refund` with a `Designation`
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `designation-designationrefund-designation`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation
///
/// Inbound Edges:
/// - `designationrefund-refund-designation_refunds`: https://api.planningcenteronline.com/giving/v2/donations/1/refund/1/designation_refunds
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "DesignationRefund",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
///   },
///   "relationships": {
///     "designation": {
///       "data": {
///         "type": "Designation",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingDesignationRefund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'DesignationRefund';
  static const String kTypeId = 'designation_refund';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `designation`: include associated designation
  static List<String> get canInclude => ['designation'];

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
  int get amountCents => _attributes[kAmountCents] ?? 0;
  String get amountCurrency => _attributes[kAmountCurrency] ?? '';

  // typed getters for each relationship

  PcoGivingDesignation? get includedDesignation =>
      _firstOrNull<PcoGivingDesignation>(relationships['designation']);

  // Class Constructors
  PcoGivingDesignationRefund.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingDesignationRefund.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingDesignationRefund] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingDesignationRefund(
      {String? id,
      int? amountCents,
      String? amountCurrency,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingDesignationRefund.empty();
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

  /// Will get a collection of [PcoGivingDesignationRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/refund/$refundId/designation_refunds`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDesignationRefund>>
      getFromDonationAndRefund(
    String donationId,
    String refundId, {
    String? id,
    PcoGivingDesignationRefundQuery? query,
    bool includeDesignation = false,
  }) async {
    query ??= PcoGivingDesignationRefundQuery();

    if (includeDesignation) query.include.add('designation');
    var url =
        '/giving/v2/donations/$donationId/refund/$refundId/designation_refunds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDesignationRefund>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDesignation] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund/designation_refunds/1/designation`
  Future<PcoCollection<PcoGivingDesignation>> getDesignation(
      {PcoGivingDesignationQuery? query}) async {
    query ??= PcoGivingDesignationQuery();
    var url = '$apiEndpoint/designation';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
