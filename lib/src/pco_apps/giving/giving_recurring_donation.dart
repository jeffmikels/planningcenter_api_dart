/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.219172
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
/// - `includeAllRelated`: include all related objects
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
/// A `RecurringDonation` is represents a `Donation` that repeats on a set schedule (weekly, monthly, etc.)
///
/// Data for `RecurringDonation`s is read-only; they can not be created or edited through the API.
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
      _getAttribute<DateTime>(kReleaseHoldAt, DateTime(0));
  int get amountCents => _getAttribute<int>(kAmountCents, 0);
  String get status => _getAttribute<String>(kStatus, '');
  DateTime get lastDonationReceivedAt =>
      _getAttribute<DateTime>(kLastDonationReceivedAt, DateTime(0));
  DateTime get nextOccurrence =>
      _getAttribute<DateTime>(kNextOccurrence, DateTime(0));
  String get schedule => _getAttribute<String>(kSchedule, '');
  String get amountCurrency => _getAttribute<String>(kAmountCurrency, '');

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
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
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

  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingRecurringDonation>> get({
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool getAll = false,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    if (getAll) query.getAll = true;

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingRecurringDonation] object
  /// using a path like this: `/giving/v2/recurring_donations/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingRecurringDonation?> getSingle(
    String id, {
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/recurring_donations/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingRecurringDonation>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingRecurringDonation>> getAll({
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    query.getAll = true;

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingRecurringDonation>>
      getFromPersonAndPaymentMethod(
    String personId,
    String paymentMethodId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool getAll = false,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    if (getAll) query.getAll = true;

    if (includeDesignations) query.include.add('designations');
    var url =
        '/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingRecurringDonation] object
  /// using a path like this: `/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingRecurringDonation?>
      getSingleFromPersonAndPaymentMethod(
    String personId,
    String paymentMethodId,
    String id, {
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url =
        '/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingRecurringDonation>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingRecurringDonation>>
      getAllFromPersonAndPaymentMethod(
    String personId,
    String paymentMethodId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    query.getAll = true;

    if (includeDesignations) query.include.add('designations');
    var url =
        '/giving/v2/people/$personId/payment_methods/$paymentMethodId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/recurring_donations`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingRecurringDonation>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool getAll = false,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    if (getAll) query.getAll = true;

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/people/$personId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingRecurringDonation] object
  /// using a path like this: `/giving/v2/people/$personId/recurring_donations/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingRecurringDonation?> getSingleFromPerson(
    String personId,
    String id, {
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();

    if (includeDesignations) query.include.add('designations');
    var url = '/giving/v2/people/$personId/recurring_donations/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingRecurringDonation>(
        url,
        query: query,
        apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/recurring_donations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingRecurringDonation>> getAllFromPerson(
    String personId, {
    String? id,
    PcoGivingRecurringDonationQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PcoGivingRecurringDonationQuery();
    query.getAll = true;

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
