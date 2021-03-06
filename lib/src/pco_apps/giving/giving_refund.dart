/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.601352
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Description
///
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `designation_refunds`: include associated designation_refunds
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
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
  int get amountCents => _attributes[kAmountCents] ?? 0;
  String get amountCurrency => _attributes[kAmountCurrency] ?? '';
  int get feeCents => _attributes[kFeeCents] ?? 0;
  DateTime get refundedAt => DateTime.parse(_attributes[kRefundedAt] ?? '');
  String get feeCurrency => _attributes[kFeeCurrency] ?? '';

  // typed getters for each relationship

  List<PcoGivingDesignationRefund> get includedDesignationRefunds =>
      (relationships['designation_refunds'] as List?)
          ?.cast<PcoGivingDesignationRefund>() ??
      [];

  // Class Constructors
  PcoGivingRefund.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/refund`
  static Future<PcoCollection<PcoGivingRefund>> getFromDonation(
    String donationId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeDesignationRefunds = false,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoGivingDesignationRefund>> getDesignationRefunds({
    PlanningCenterApiQuery? query,
    bool includeDesignation = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDesignation) query.include.add('designation');
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
