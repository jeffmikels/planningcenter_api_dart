/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.180830
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingPaymentMethodOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingPaymentMethodFilter { none }

/// Creates a [PcoGivingPaymentMethodQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingPaymentMethodQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingPaymentMethodOrder, String> _orderMap = {};
  static String orderString(PcoGivingPaymentMethodOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingPaymentMethodFilter, String> _filterMap = {};
  static String filterString(PcoGivingPaymentMethodFilter filter) =>
      _filterMap[filter]!;

  PcoGivingPaymentMethodQuery({
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

/// This class represents a PCO Giving PaymentMethod Object
///
/// - Application:        giving
/// - Id:                 payment_method
/// - Type:               PaymentMethod
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingPaymentMethod.fromJson()` constructor.
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
/// Stored `PaymentMethod` information (`card` or `bank_account`) used by donors to make online `Donation`s.
///
/// `PaymentMethod` data is for informational purposes only and cannot be used to create charges through the API.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `methodType` (ro) -> PCO: `method_type`
/// - `methodSubtype` (ro) -> PCO: `method_subtype`
/// - `last4` (ro) -> PCO: `last4`
/// - `brand` (ro) -> PCO: `brand`
/// - `expiration` (ro) -> PCO: `expiration`
/// - `isVerified` (ro) -> PCO: `verified`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `recurringdonation-paymentmethod-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations
///
/// Inbound Edges:
/// - `paymentmethod-person-payment_methods`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// - `paymentmethod-recurringdonation-payment_method`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PaymentMethod",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "method_type": "value",
///     "method_subtype": "string",
///     "last4": "string",
///     "brand": "string",
///     "expiration": "2000-01-01",
///     "verified": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingPaymentMethod extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PaymentMethod';
  static const String kTypeId = 'payment_method';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/people/1/payment_methods';
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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kMethodType = 'method_type';
  static const kMethodSubtype = 'method_subtype';
  static const kLast4 = 'last4';
  static const kBrand = 'brand';
  static const kExpiration = 'expiration';
  static const kVerified = 'verified';

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
  String get methodType => _getAttribute<String>(kMethodType, '');
  String get methodSubtype => _getAttribute<String>(kMethodSubtype, '');
  String get last4 => _getAttribute<String>(kLast4, '');
  String get brand => _getAttribute<String>(kBrand, '');
  String get expiration => _getAttribute<String>(kExpiration, '');
  bool get isVerified => _getAttribute<bool>(kVerified, false);

  // Class Constructors
  PcoGivingPaymentMethod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingPaymentMethod.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPaymentMethod] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingPaymentMethod(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? methodType,
      String? methodSubtype,
      String? last4,
      String? brand,
      String? expiration,
      bool? isVerified,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingPaymentMethod.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (methodType != null) obj._attributes['method_type'] = methodType;
    if (methodSubtype != null)
      obj._attributes['method_subtype'] = methodSubtype;
    if (last4 != null) obj._attributes['last4'] = last4;
    if (brand != null) obj._attributes['brand'] = brand;
    if (expiration != null) obj._attributes['expiration'] = expiration;
    if (isVerified != null) obj._attributes['verified'] = isVerified;

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

  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPaymentMethod>> getFromPerson(
    String personId, {
    String? id,
    PcoGivingPaymentMethodQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/people/$personId/payment_methods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingPaymentMethod] object
  /// using a path like this: `/giving/v2/people/$personId/payment_methods/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingPaymentMethod?> getSingleFromPerson(
    String personId,
    String id, {
    PcoGivingPaymentMethodQuery? query,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();

    var url = '/giving/v2/people/$personId/payment_methods/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingPaymentMethod>> getAllFromPerson(
    String personId, {
    String? id,
    PcoGivingPaymentMethodQuery? query,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();
    query.getAll = true;

    var url = '/giving/v2/people/$personId/payment_methods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/payment_method`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPaymentMethod>> getFromRecurringDonation(
    String recurringDonationId, {
    String? id,
    PcoGivingPaymentMethodQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();
    if (getAll) query.getAll = true;

    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/payment_method';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingPaymentMethod] object
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/payment_method/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingPaymentMethod?> getSingleFromRecurringDonation(
    String recurringDonationId,
    String id, {
    PcoGivingPaymentMethodQuery? query,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();

    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/payment_method/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/payment_method`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingPaymentMethod>>
      getAllFromRecurringDonation(
    String recurringDonationId, {
    String? id,
    PcoGivingPaymentMethodQuery? query,
  }) async {
    query ??= PcoGivingPaymentMethodQuery();
    query.getAll = true;

    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/payment_method';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/payment_methods/1/recurring_donations`
  Future<PcoCollection<PcoGivingRecurringDonation>> getRecurringDonations(
      {PcoGivingRecurringDonationQuery? query}) async {
    query ??= PcoGivingRecurringDonationQuery();
    var url = '$apiEndpoint/recurring_donations';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
