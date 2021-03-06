/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.592611
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Description
///
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `designations`: include associated designations
/// - `labels`: include associated labels
/// - `refund`: include associated refund
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `completed_at`: (URLParameter), query on a specific completed_at, example: ?where[completed_at]=2000-01-01T12:00:00Z
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `payment_method`: (URLParameter), query on a specific payment_method, example: ?where[payment_method]=value
/// - `received_at`: (URLParameter), query on a specific received_at, example: ?where[received_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `completed_at`: (URLParameter), prefix with a hyphen (-completed_at) to reverse the order
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `received_at`: (URLParameter), prefix with a hyphen (-received_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `campus-donation-campus`: https://api.planningcenteronline.com/giving/v2/donations/1/campus
/// - `designation-donation-designations`: https://api.planningcenteronline.com/giving/v2/donations/1/designations
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
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
  /// - `refund`: include associated refund
  static List<String> get canInclude => ['designations', 'labels', 'refund'];

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

  /// For cards only. Will be `null` for other payment method types.
  ///
  /// Possible values: `credit`, `debit`, `prepaid`, or `unknown`

  /// pass `null` to remove key from attributes
  set paymentMethodSub(String? x) => (x == null)
      ? _attributes.remove(kPaymentMethodSub)
      : _attributes[kPaymentMethodSub] = x;

  /// pass `null` to remove key from attributes
  set paymentLast4(String? x) => (x == null)
      ? _attributes.remove(kPaymentLast4)
      : _attributes[kPaymentLast4] = x;

  /// For cards, this is the card brand (eg Visa, Mastercard, etc). For checks, this is the bank name

  /// pass `null` to remove key from attributes
  set paymentBrand(String? x) => (x == null)
      ? _attributes.remove(kPaymentBrand)
      : _attributes[kPaymentBrand] = x;

  /// pass `null` to remove key from attributes
  set paymentCheckNumber(int? x) => (x == null)
      ? _attributes.remove(kPaymentCheckNumber)
      : _attributes[kPaymentCheckNumber] = x;

  /// pass `null` to remove key from attributes
  set paymentCheckDatedAt(String? x) => (x == null)
      ? _attributes.remove(kPaymentCheckDatedAt)
      : _attributes[kPaymentCheckDatedAt] = x;

  /// pass `null` to remove key from attributes
  set feeCents(int? x) =>
      (x == null) ? _attributes.remove(kFeeCents) : _attributes[kFeeCents] = x;

  /// Possible values: `ach`, `cash`, `check`, or `card`

  /// pass `null` to remove key from attributes
  set paymentMethod(String? x) => (x == null)
      ? _attributes.remove(kPaymentMethod)
      : _attributes[kPaymentMethod] = x;

  /// pass `null` to remove key from attributes
  set receivedAt(DateTime? x) => (x == null)
      ? _attributes.remove(kReceivedAt)
      : _attributes[kReceivedAt] = x.toIso8601String();

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set personId(String? x) =>
      (x == null) ? _attributes.remove(kPersonId) : _attributes[kPersonId] = x;
  String get personId => _attributes[kPersonId] ?? '';

  /// pass `null` to remove key from attributes
  set paymentSourceId(String? x) => (x == null)
      ? _attributes.remove(kPaymentSourceId)
      : _attributes[kPaymentSourceId] = x;
  String get paymentSourceId => _attributes[kPaymentSourceId] ?? '';

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
  PcoGivingRefund? get includedRefund =>
      _firstOrNull<PcoGivingRefund>(relationships['refund']);

  // Class Constructors
  PcoGivingDonation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingDonation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingDonation] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/batches/$batcheId/donations`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingDonation(String batcheId,
      {String? paymentMethodSub,
      String? paymentLast4,
      String? paymentBrand,
      int? paymentCheckNumber,
      String? paymentCheckDatedAt,
      int? feeCents,
      String? paymentMethod,
      DateTime? receivedAt}) {
    var obj = PcoGivingDonation.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/batches/$batcheId/donations';
    if (paymentMethodSub != null) obj.paymentMethodSub = paymentMethodSub;
    if (paymentLast4 != null) obj.paymentLast4 = paymentLast4;
    if (paymentBrand != null) obj.paymentBrand = paymentBrand;
    if (paymentCheckNumber != null) obj.paymentCheckNumber = paymentCheckNumber;
    if (paymentCheckDatedAt != null)
      obj.paymentCheckDatedAt = paymentCheckDatedAt;
    if (feeCents != null) obj.feeCents = feeCents;
    if (paymentMethod != null) obj.paymentMethod = paymentMethod;
    if (receivedAt != null) obj.receivedAt = receivedAt;
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
  static Future<PcoCollection<PcoGivingDonation>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/batches/$batcheId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromBatche(
    String batcheId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/batches/$batcheId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses/$campusId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromCampus(
    String campusId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/campuses/$campusId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources/$paymentSourceId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromPaymentSource(
    String paymentSourceId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeRefund) query.include.add('refund');
    var url = '/giving/v2/payment_sources/$paymentSourceId/donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/donations`
  static Future<PcoCollection<PcoGivingDonation>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingDonation.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
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
  Future<PcoCollection<PcoGivingCampus>> getCampus({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/designations`
  Future<PcoCollection<PcoGivingDesignation>> getDesignations({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/designations';
    return PcoCollection.fromApiCall<PcoGivingDesignation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/labels`
  Future<PcoCollection<PcoGivingLabel>> getLabels({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/labels';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRefund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations/1/refund`
  Future<PcoCollection<PcoGivingRefund>> getRefund({
    PlanningCenterApiQuery? query,
    bool includeDesignationRefunds = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDesignationRefunds) query.include.add('designation_refunds');
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
