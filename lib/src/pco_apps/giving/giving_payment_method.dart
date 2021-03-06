/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.596410
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Description
///
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
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
  String get methodType => _attributes[kMethodType] ?? '';
  String get methodSubtype => _attributes[kMethodSubtype] ?? '';
  String get last4 => _attributes[kLast4] ?? '';
  String get brand => _attributes[kBrand] ?? '';
  String get expiration => _attributes[kExpiration] ?? '';
  bool get isVerified => _attributes[kVerified] == true;

  // Class Constructors
  PcoGivingPaymentMethod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/payment_methods`
  static Future<PcoCollection<PcoGivingPaymentMethod>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/giving/v2/people/$personId/payment_methods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/payment_method`
  static Future<PcoCollection<PcoGivingPaymentMethod>> getFromRecurringDonation(
    String recurringDonationId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoGivingRecurringDonation>> getRecurringDonations({
    PlanningCenterApiQuery? query,
    bool includeDesignations = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeDesignations) query.include.add('designations');
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
