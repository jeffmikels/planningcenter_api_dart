/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.243204
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `completedAt` -> `?order=completed_at`
/// - `createdAt` -> `?order=created_at`
/// - `receivedAt` -> `?order=received_at`
/// - `updatedAt` -> `?order=updated_at`
enum PcoGivingDonationOrder { completedAt, createdAt, receivedAt, updatedAt }

/// Possible Inbound Filters:
/// - `succeeded` -> `?filter=succeeded` : -- no description
enum PcoGivingDonationFilter { succeeded }

/// Creates a [PcoGivingDonationQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDesignations`: include associated designations
/// - `includeLabels`: include associated labels
/// - `includeNote`: include associated note
/// - `includeRefund`: include associated refund
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingDonationQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGivingDonation] objects can be requested with one or more of the following criteria:
/// - `whereCompletedAt`: query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `wherePaymentMethod`: query on a specific payment_method, example: ?where[payment_method]=value
/// - `whereReceivedAt`: query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
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
/// - `PcoGivingDonationOrder.completedAt` : will order by `completed_at`
/// - `PcoGivingDonationOrder.createdAt` : will order by `created_at`
/// - `PcoGivingDonationOrder.receivedAt` : will order by `received_at`
/// - `PcoGivingDonationOrder.updatedAt` : will order by `updated_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingDonationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingDonationOrder, String> _orderMap = {
    PcoGivingDonationOrder.completedAt: 'completed_at',
    PcoGivingDonationOrder.createdAt: 'created_at',
    PcoGivingDonationOrder.receivedAt: 'received_at',
    PcoGivingDonationOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoGivingDonationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingDonationFilter, String> _filterMap = {
    PcoGivingDonationFilter.succeeded: 'succeeded',
  };
  static String filterString(PcoGivingDonationFilter filter) =>
      _filterMap[filter]!;

  PcoGivingDonationQuery({
    /// include associated designations
    /// when true, adds `?include=designations` to url
    bool includeDesignations = false,

    /// include associated labels
    /// when true, adds `?include=labels` to url
    bool includeLabels = false,

    /// include associated note
    /// when true, adds `?include=note` to url
    bool includeNote = false,

    /// include associated refund
    /// when true, adds `?include=refund` to url
    bool includeRefund = false,

    /// when true, adds `?include=designations,labels,note,refund` to url parameters
    bool includeAll = false,

    /// Query by `completed_at`
    /// query on a specific completed_at, url example: ?where[completed_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCompletedAt,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `payment_method`
    /// query on a specific payment_method, url example: ?where[payment_method]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePaymentMethod,

    /// Query by `received_at`
    /// query on a specific received_at, url example: ?where[received_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereReceivedAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    PcoGivingDonationFilter? filterBy,
    PcoGivingDonationOrder? orderBy,

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
    if (includeAll || includeDesignations) include.add('designations');
    if (includeAll || includeLabels) include.add('labels');
    if (includeAll || includeNote) include.add('note');
    if (includeAll || includeRefund) include.add('refund');

    if (whereCompletedAt != null)
      where.add(PlanningCenterApiWhere.parse('completed_at', whereCompletedAt));
    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (wherePaymentMethod != null)
      where.add(
          PlanningCenterApiWhere.parse('payment_method', wherePaymentMethod));
    if (whereReceivedAt != null)
      where.add(PlanningCenterApiWhere.parse('received_at', whereReceivedAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Giving Donation Object
///
/// - Application:        giving
/// - Id:                 donation
/// - Type:               Donation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/donations
/// - Create Endpoint:    https://api.planningcenteronline.com/giving/v2/batches/1/donations
///
/// ## Instantiation
/// - Create a new instance using the `PcoGivingDonation()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingDonation.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// A full json example of creating a Donation
///
/// ```json
/// {
///   "data": {
///     "type": "Donation",
///     "attributes": {
///       "payment_method": "cash",
///       "received_at": "2017-10-10"
///     },
///     "relationships": {
///       "person": {
///         "data": { "type": "Person", "id": "123" }
///       },
///       "payment_source": {
///         "data": { "type": "PaymentSource", "id": "123" }
///       },
///       "labels": {
///         "data": [
///           { "type": "Label", "id": "123" }
///         ]
///       }
///     }
///   },
///   "included": [
///     {
///       "type": "Designation",
///       "attributes": { "amount_cents": 2000 },
///       "relationships": {
///         "fund": {
///           "data": { "type": "Fund", "id": "123" }
///         }
///       }
///     }
///   ]
/// }
/// ```
///
/// When creating a Donation, you _must_ include at least one Designation,
/// and each Designation _must_ have `amount_cents` and a Fund relationship
///
///
/// #### UPDATING
/// ##### Designations
///
/// When updating a Donation, if you specify an `id` attribute for each Designation,
/// those Designations can be updated.
///
/// However, if you have Designations in the `included` array _without_ `id`s,
/// all Designations will be removed and replaced with the Designations in your `PATCH`
/// request.
///
/// ##### Labels
///
/// Passing a `labels` key in the `relationships` object will have the effect of replacing
/// any existing associated `Label`s with those in the request. Including a `null` or empty
/// `{}` value will remove all `Label` relationships, but omitting the `labels` key
/// altogether will leave existing relationships in tact.
///
/// ## Description
/// A `Donation` record corresponds to a gift given to an `Organization` at a particular point in time.
///
/// `Donation`s are added by first associating them to a `Batch` of donations, and then committing the `Batch`. When adding a `Donation` to an already-committed `Batch`, the `Donation` will automatically be committed as well, and immediately added to the donor's online history.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `paymentMethodSub` (rw) -> PCO: `payment_method_sub`
/// - `paymentLast4` (rw) -> PCO: `payment_last4`
/// - `paymentBrand` (rw) -> PCO: `payment_brand`
/// - `paymentCheckNumber` (rw) -> PCO: `payment_check_number`
/// - `paymentCheckDatedAt` (rw) -> PCO: `payment_check_dated_at`
/// - `feeCents` (rw) -> PCO: `fee_cents`
/// - `paymentMethod` (rw) -> PCO: `payment_method`
/// - `receivedAt` (rw) -> PCO: `received_at`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `paymentStatus` (ro) -> PCO: `payment_status`
/// - `completedAt` (ro) -> PCO: `completed_at`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
/// - `feeCurrency` (ro) -> PCO: `fee_currency`
/// - `isRefunded` (ro) -> PCO: `refunded`
/// - `isRefundable` (ro) -> PCO: `refundable`
/// - `personId` (wo) -> PCO: `person_id`
/// - `paymentSourceId` (wo) -> PCO: `payment_source_id`
/// - `campusId` (wo) -> PCO: `campus_id`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `campus-donation-campus`: https://api.planningcenteronline.com/giving/v2/donations/1/campus
/// - `designation-donation-designations`: https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
/// - `note-donation-note`: https://api.planningcenteronline.com/giving/v2/donations/1/note
/// - `refund-donation-refund`: https://api.planningcenteronline.com/giving/v2/donations/1/refund
///
/// Inbound Edges:
/// - `donation-batch-donations`: https://api.planningcenteronline.com/giving/v2/batches/1/donations
/// - `donation-campus-donations`: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
/// - `donation-organization-donations`: https://api.planningcenteronline.com/giving/v2/donations
/// - `donation-paymentsource-donations`: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations
/// - `donation-person-donations`: https://api.planningcenteronline.com/giving/v2/people/1/donations
///
/// Actions:
/// - `issue_refund`: https://api.planningcenteronline.com/giving/v2/donations/1/issue_refund
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Donation",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "payment_method_sub": "value",
///     "payment_last4": "string",
///     "payment_brand": "string",
///     "payment_check_number": 1,
///     "payment_check_dated_at": "2000-01-01",
///     "fee_cents": 1,
///     "payment_method": "value",
///     "received_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "payment_status": "value",
///     "completed_at": "2000-01-01T12:00:00Z",
///     "amount_currency": "USD",
///     "fee_currency": "USD",
///     "refunded": true,
///     "refundable": true
///   },
///   "relationships": {
///     "batch": {
///       "data": {
///         "type": "Batch",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "payment_source": {
///       "data": {
///         "type": "PaymentSource",
///         "id": "1"
///       }
///     },
///     "labels": {
///       "data": [
///         {
///           "type": "Labels",
///           "id": "1"
///         }
///       ]
///     },
///     "recurring_donation": {
///       "data": {
///         "type": "RecurringDonation",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingDonation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Donation';
  static const String kTypeId = 'donation';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/donations';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/giving/v2/batches/1/donations';

  /// possible includes with parameter ?include=a,b
  /// - `designations`: include associated designations
  /// - `labels`: include associated labels
  /// - `note`: include associated note
  /// - `refund`: include associated refund
  static List<String> get canInclude =>
      ['designations', 'labels', 'note', 'refund'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `completed_at`: (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `payment_method`: (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
  /// - `received_at`: (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => [
        'completed_at',
        'created_at',
        'payment_method',
        'received_at',
        'updated_at'
      ];

  /// possible orderings with parameter ?order=
  /// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `received_at`: (URLParameter), prefix with a hyphen (-received_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['completed_at', 'created_at', 'received_at', 'updated_at'];

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
  static const kPaymentMethodSub = 'payment_method_sub';
  static const kPaymentLast4 = 'payment_last4';
  static const kPaymentBrand = 'payment_brand';
  static const kPaymentCheckNumber = 'payment_check_number';
  static const kPaymentCheckDatedAt = 'payment_check_dated_at';
  static const kFeeCents = 'fee_cents';
  static const kPaymentMethod = 'payment_method';
  static const kReceivedAt = 'received_at';
  static const kAmountCents = 'amount_cents';
  static const kPaymentStatus = 'payment_status';
  static const kCompletedAt = 'completed_at';
  static const kAmountCurrency = 'amount_currency';
  static const kFeeCurrency = 'fee_currency';
  static const kRefunded = 'refunded';
  static const kRefundable = 'refundable';
  static const kPersonId = 'person_id';
  static const kPaymentSourceId = 'payment_source_id';
  static const kCampusId = 'campus_id';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'payment_method_sub',
        'payment_last4',
        'payment_brand',
        'payment_check_number',
        'payment_check_dated_at',
        'fee_cents',
        'payment_method',
        'received_at',
        'person_id',
        'payment_source_id',
        'campus_id'
      ];

  @override
  List<String> get updateAllowed => [
        'payment_method_sub',
        'payment_last4',
        'payment_brand',
        'payment_check_number',
        'payment_check_dated_at',
        'fee_cents',
        'payment_method',
        'received_at',
        'person_id',
        'payment_source_id',
        'campus_id'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get paymentMethodSub => _attributes[kPaymentMethodSub] ?? '';
  String get paymentLast4 => _attributes[kPaymentLast4] ?? '';
  String get paymentBrand => _attributes[kPaymentBrand] ?? '';
  int get paymentCheckNumber => _attributes[kPaymentCheckNumber] ?? 0;
  String get paymentCheckDatedAt => _attributes[kPaymentCheckDatedAt] ?? '';
  int get feeCents => _attributes[kFeeCents] ?? 0;
  String get paymentMethod => _attributes[kPaymentMethod] ?? '';
  DateTime get receivedAt => DateTime.parse(_attributes[kReceivedAt] ?? '');
  int get amountCents => _attributes[kAmountCents] ?? 0;
  String get paymentStatus => _attributes[kPaymentStatus] ?? '';
  DateTime get completedAt => DateTime.parse(_attributes[kCompletedAt] ?? '');
  String get amountCurrency => _attributes[kAmountCurrency] ?? '';
  String get feeCurrency => _attributes[kFeeCurrency] ?? '';
  bool get isRefunded => _attributes[kRefunded] == true;
  bool get isRefundable => _attributes[kRefundable] == true;

  // setters for object attributes

  /// For cards, this will be the card subtype. Will be `null` for other payment method types.
  ///
  /// Possible values: `credit`, `debit`, `prepaid`, or `unknown`
  ///
  /// pass `null` to remove key from attributes
  set paymentMethodSub(String? x) => (x == null)
      ? _attributes.remove(kPaymentMethodSub)
      : _attributes[kPaymentMethodSub] = x;

  /// The last 4 digits of a donation's payment method number. For cards, this is the last 4 digits of the card number. For bank accounts, this is the last 4 digits of the bank account number. For cash and check donations, this should be `null`. Note: In cases where we don't have all 4 digits on file, a `*` will be used to pad the number. For example: `*321`
  ///
  /// pass `null` to remove key from attributes
  set paymentLast4(String? x) => (x == null)
      ? _attributes.remove(kPaymentLast4)
      : _attributes[kPaymentLast4] = x;

  /// For cards, this is the card brand (eg Visa, Mastercard, etc). For checks and bank accounts, this is the bank name. For cash donations, this should be `null`.
  ///
  /// pass `null` to remove key from attributes
  set paymentBrand(String? x) => (x == null)
      ? _attributes.remove(kPaymentBrand)
      : _attributes[kPaymentBrand] = x;

  /// The check number for donations made by check.
  ///
  /// pass `null` to remove key from attributes
  set paymentCheckNumber(int? x) => (x == null)
      ? _attributes.remove(kPaymentCheckNumber)
      : _attributes[kPaymentCheckNumber] = x;

  /// The check date for donations made by check. Example: `2000-01-01`
  ///
  /// pass `null` to remove key from attributes
  set paymentCheckDatedAt(String? x) => (x == null)
      ? _attributes.remove(kPaymentCheckDatedAt)
      : _attributes[kPaymentCheckDatedAt] = x;

  /// The fee to process a donation. This should either be 0 or a negative integer. For a donation processed by Giving via Stripe, this is the amount the associated organization paid Stripe to process it. For donations not processed by Stripe, this can be used to record fees from other systems. Note: while `amount_cents` is assigned via a donation's designations, `fee_cents` is set here, and used by Giving to distribute fees across all designations in proportion to the amount of each designation.
  ///
  /// pass `null` to remove key from attributes
  set feeCents(int? x) =>
      (x == null) ? _attributes.remove(kFeeCents) : _attributes[kFeeCents] = x;

  /// Required. The payment method used to make a donation.
  ///
  /// Possible values: `ach`, `cash`, `check`, or `card`
  ///
  /// pass `null` to remove key from attributes
  set paymentMethod(String? x) => (x == null)
      ? _attributes.remove(kPaymentMethod)
      : _attributes[kPaymentMethod] = x;

  /// The date and time at which a donation was received. For card and ACH donations processed by Stripe, this is the moment when the donation was created in Giving. For batch donations, this is a customizable value that can be set via the Giving UI or API to any date. This allows for batch donations recieved on a previous day to be dated in the past, as well as for postdated checks to have a date in the future. It is important to ensure that this attribute is set accurately, as this is the date used to filter donations in the Giving admin UI. When creating new donations via the API, this attribute will default to the current date and time. Example: `2000-01-01T12:00:00Z`
  ///
  /// pass `null` to remove key from attributes
  set receivedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kReceivedAt)
      : _attributes[kReceivedAt] = x.toIso8601String();

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set paymentSourceId(String? x) => (x == null)
      ? _attributes.remove(kPaymentSourceId)
      : _attributes[kPaymentSourceId] = x;
  String get paymentSourceId => _attributes[kPaymentSourceId] ?? '';

  ///
  /// pass `null` to remove key from attributes
  set campusId(String? x) =>
      (x == null) ? _attributes.remove(kCampusId) : _attributes[kCampusId] = x;
  String get campusId => _attributes[kCampusId] ?? '';

  // typed getters for each relationship

  List<PcoGivingDesignation> get includedDesignations =>
      (relationships['designations'] as List?)?.cast<PcoGivingDesignation>() ??
      [];
  List<PcoGivingLabel> get includedLabels =>
      (relationships['labels'] as List?)?.cast<PcoGivingLabel>() ?? [];
  PcoGivingNote? get includedNote =>
      _firstOrNull<PcoGivingNote>(relationships['note']);
  PcoGivingRefund? get includedRefund =>
      _firstOrNull<PcoGivingRefund>(relationships['refund']);

  // Class Constructors
  PcoGivingDonation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingDonation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingDonation] object using this endpoint: `https://api.planningcenteronline.com/giving/v2/batches/$batchId/donations`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `paymentMethodSub`, `paymentLast4`, `paymentBrand`, `paymentCheckNumber`, `paymentCheckDatedAt`, `feeCents`, `paymentMethod`, `receivedAt`, `personId`, `paymentSourceId`, `campusId`
  /// - FIELDS USED WHEN UPDATING: `paymentMethodSub`, `paymentLast4`, `paymentBrand`, `paymentCheckNumber`, `paymentCheckDatedAt`, `feeCents`, `paymentMethod`, `receivedAt`, `personId`, `paymentSourceId`, `campusId`
  factory PcoGivingDonation(
      {required String batchId,
      String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? paymentMethodSub,
      String? paymentLast4,
      String? paymentBrand,
      int? paymentCheckNumber,
      String? paymentCheckDatedAt,
      int? feeCents,
      String? paymentMethod,
      DateTime? receivedAt,
      int? amountCents,
      String? paymentStatus,
      DateTime? completedAt,
      String? amountCurrency,
      String? feeCurrency,
      bool? isRefunded,
      bool? isRefundable,
      String? personId,
      String? paymentSourceId,
      String? campusId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingDonation.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/batches/$batchId/donations';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (paymentMethodSub != null)
      obj._attributes['payment_method_sub'] = paymentMethodSub;
    if (paymentLast4 != null) obj._attributes['payment_last4'] = paymentLast4;
    if (paymentBrand != null) obj._attributes['payment_brand'] = paymentBrand;
    if (paymentCheckNumber != null)
      obj._attributes['payment_check_number'] = paymentCheckNumber;
    if (paymentCheckDatedAt != null)
      obj._attributes['payment_check_dated_at'] = paymentCheckDatedAt;
    if (feeCents != null) obj._attributes['fee_cents'] = feeCents;
    if (paymentMethod != null)
      obj._attributes['payment_method'] = paymentMethod;
    if (receivedAt != null)
      obj._attributes['received_at'] = receivedAt.toIso8601String();
    if (amountCents != null) obj._attributes['amount_cents'] = amountCents;
    if (paymentStatus != null)
      obj._attributes['payment_status'] = paymentStatus;
    if (completedAt != null)
      obj._attributes['completed_at'] = completedAt.toIso8601String();
    if (amountCurrency != null)
      obj._attributes['amount_currency'] = amountCurrency;
    if (feeCurrency != null) obj._attributes['fee_currency'] = feeCurrency;
    if (isRefunded != null) obj._attributes['refunded'] = isRefunded;
    if (isRefundable != null) obj._attributes['refundable'] = isRefundable;
    if (personId != null) obj._attributes['person_id'] = personId;
    if (paymentSourceId != null)
      obj._attributes['payment_source_id'] = paymentSourceId;
    if (campusId != null) obj._attributes['campus_id'] = campusId;

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

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/donations`
  ///
  /// Available Query Filters:
  /// - `succeeded`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDonation>> get({
    String? id,
    PcoGivingDonationQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeNote = false,
    bool includeRefund = false,
  }) async {
    query ??= PcoGivingDonationQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeNote) query.include.add('note');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/batches/$batchId/donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDonation>> getFromBatch(
    String batchId, {
    String? id,
    PcoGivingDonationQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeNote = false,
    bool includeRefund = false,
  }) async {
    query ??= PcoGivingDonationQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeNote) query.include.add('note');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/batches/$batchId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses/$campusId/donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDonation>> getFromCampus(
    String campusId, {
    String? id,
    PcoGivingDonationQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeNote = false,
    bool includeRefund = false,
  }) async {
    query ??= PcoGivingDonationQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeNote) query.include.add('note');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/campuses/$campusId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources/$paymentSourceId/donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDonation>> getFromPaymentSource(
    String paymentSourceId, {
    String? id,
    PcoGivingDonationQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeNote = false,
    bool includeRefund = false,
  }) async {
    query ??= PcoGivingDonationQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeNote) query.include.add('note');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/payment_sources/$paymentSourceId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingDonation>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingDonationQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeNote = false,
    bool includeRefund = false,
  }) async {
    query ??= PcoGivingDonationQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeNote) query.include.add('note');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/people/$personId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/campus`
  Future<PcoCollection<PcoGivingCampus>> getCampus(
      {PcoGivingCampusQuery? query}) async {
    query ??= PcoGivingCampusQuery();
    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations`
  Future<PcoCollection<PcoGivingDesignation>> getDesignations(
      {PcoGivingDesignationQuery? query}) async {
    query ??= PcoGivingDesignationQuery();
    var url = '$apiEndpoint/designations';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/labels`
  Future<PcoCollection<PcoGivingLabel>> getLabels(
      {PcoGivingLabelQuery? query}) async {
    query ??= PcoGivingLabelQuery();
    var url = '$apiEndpoint/labels';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/note`
  Future<PcoCollection<PcoGivingNote>> getNote(
      {PcoGivingNoteQuery? query}) async {
    query ??= PcoGivingNoteQuery();
    var url = '$apiEndpoint/note';
    return PcoCollection.fromApiCall<PcoGivingNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund`
  Future<PcoCollection<PcoGivingRefund>> getRefund(
      {PcoGivingRefundQuery? query}) async {
    query ??= PcoGivingRefundQuery();
    var url = '$apiEndpoint/refund';
    return PcoCollection.fromApiCall<PcoGivingRefund>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `issue_refund`
  ///
  /// Used to refund a batch donation
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/issue_refund`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This action refunds a batch donation.
  /// It will respond with `unprocessable_entity` if the donation cannot be refunded, or if the donation is not part of a batch.
  ///
  /// `refunded_at` is optional, but recommended for data accuracy.
  ///
  /// ```json
  /// {
  ///   "data": {
  ///     "attributes": {
  ///       "refunded_at": "1959-02-03"
  ///     }
  ///   }
  /// }
  /// ```
  Future<PlanningCenterApiResponse> issueRefund(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/issue_refund';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
