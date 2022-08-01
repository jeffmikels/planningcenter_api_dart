/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.657799
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingRecurringDonationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingRecurringDonationFilter { none }

/// Creates a [PcoGivingRecurringDonationQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeDesignations`: include associated designations
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoGivingRecurringDonationQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingRecurringDonationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingRecurringDonationOrder, String> _orderMap = {};
  static String orderString(PcoGivingRecurringDonationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingRecurringDonationFilter, String> _filterMap = {};
  static String filterString(PcoGivingRecurringDonationFilter filter) =>
      _filterMap[filter]!;

  PcoGivingRecurringDonationQuery({
    /// include associated designations
    /// when true, adds `?include=designations` to url
    bool includeDesignations = false,

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
    if (includeDesignations) include.add('designations');
  }
}

/// This class represents a PCO Giving RecurringDonation Object
///
/// - Application:        giving
/// - Id:                 recurring_donation
/// - Type:               RecurringDonation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/recurring_donations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingRecurringDonation.fromJson()` constructor.
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
/// - `releaseHoldAt` (ro) -> PCO: `release_hold_at`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `status` (ro) -> PCO: `status`
/// - `lastDonationReceivedAt` (ro) -> PCO: `last_donation_received_at`
/// - `nextOccurrence` (ro) -> PCO: `next_occurrence`
/// - `schedule` (ro) -> PCO: `schedule`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `paymentmethod-recurringdonation-payment_method`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method
/// - `recurringdonationdesignation-recurringdonation-designations`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
///
/// Inbound Edges:
/// - `recurringdonation-organization-recurring_donations`: https://api.planningcenteronline.com/giving/v2/recurring_donations
/// - `recurringdonation-paymentmethod-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations
/// - `recurringdonation-person-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "RecurringDonation",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "release_hold_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "status": "string",
///     "last_donation_received_at": "2000-01-01T12:00:00Z",
///     "next_occurrence": "2000-01-01T12:00:00Z",
///     "schedule": {
///       "day_in_month": {
///         "day": 1
///       }
///     },
///     "amount_currency": "USD"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingRecurringDonation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'RecurringDonation';
  static const String kTypeId = 'recurring_donation';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/recurring_donations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `designations`: include associated designations
  static List<String> get canInclude => ['designations'];

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
  static const kReleaseHoldAt = 'release_hold_at';
  static const kAmountCents = 'amount_cents';
  static const kStatus = 'status';
  static const kLastDonationReceivedAt = 'last_donation_received_at';
  static const kNextOccurrence = 'next_occurrence';
  static const kSchedule = 'schedule';
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
  DateTime get releaseHoldAt =>
      DateTime.parse(_attributes[kReleaseHoldAt] ?? '');
  int get amountCents => _attributes[kAmountCents] ?? 0;
  String get status => _attributes[kStatus] ?? '';
  DateTime get lastDonationReceivedAt =>
      DateTime.parse(_attributes[kLastDonationReceivedAt] ?? '');
  DateTime get nextOccurrence =>
      DateTime.parse(_attributes[kNextOccurrence] ?? '');
  String get schedule => _attributes[kSchedule] ?? '';
  String get amountCurrency => _attributes[kAmountCurrency] ?? '';

  // typed getters for each relationship

  List<PcoGivingDesignation> get includedDesignations =>
      (relationships['designations'] as List?)?.cast<PcoGivingDesignation>() ??
      [];

  // Class Constructors
  PcoGivingRecurringDonation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingRecurringDonation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingRecurringDonation] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGivingRecurringDonation(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? releaseHoldAt,
      int? amountCents,
      String? status,
      DateTime? lastDonationReceivedAt,
      DateTime? nextOccurrence,
      String? schedule,
      String? amountCurrency,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingRecurringDonation.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (releaseHoldAt != null)
      obj._attributes['release_hold_at'] = releaseHoldAt.toIso8601String();
    if (amountCents != null) obj._attributes['amount_cents'] = amountCents;
    if (status != null) obj._attributes['status'] = status;
    if (lastDonationReceivedAt != null)
      obj._attributes['last_donation_received_at'] =
          lastDonationReceivedAt.toIso8601String();
    if (nextOccurrence != null)
      obj._attributes['next_occurrence'] = nextOccurrence.toIso8601String();
    if (schedule != null) obj._attributes['schedule'] = schedule;
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

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>> get({
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>>
      getFromPersonAndPaymentMethod(
    String personId,
    String paymentMethodId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url =
        '/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/people/$personId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method`
  Future<PcoCollection<PcoGivingPaymentMethod>> getPaymentMethod(
      {PcoGivingPaymentMethodQuery? query}) async {
    query ??= PcoGivingPaymentMethodQuery();
    var url = '$apiEndpoint/payment_method';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonationDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations`
  Future<PcoCollection<PcoGivingRecurringDonationDesignation>> getDesignations(
      {PcoGivingRecurringDonationDesignationQuery? query}) async {
    query ??= PcoGivingRecurringDonationDesignationQuery();
    var url = '$apiEndpoint/designations';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonationDesignation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
