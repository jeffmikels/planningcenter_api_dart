/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.181263
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingPaymentSourceOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingPaymentSourceFilter { none }

/// Creates a [PcoGivingPaymentSourceQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingPaymentSourceQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingPaymentSourceOrder, String> _orderMap = {};
  static String orderString(PcoGivingPaymentSourceOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingPaymentSourceFilter, String> _filterMap = {};
  static String filterString(PcoGivingPaymentSourceFilter filter) =>
      _filterMap[filter]!;

  PcoGivingPaymentSourceQuery({
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

/// This class represents a PCO Giving PaymentSource Object
///
/// - Application:        giving
/// - Id:                 payment_source
/// - Type:               PaymentSource
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/payment_sources
/// - Create Endpoint:    https://api.planningcenteronline.com/giving/v2/payment_sources
///
/// ## Instantiation
/// - Create a new instance using the `PcoGivingPaymentSource()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingPaymentSource.fromJson()` constructor.
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
/// A donation's `PaymentSource` refers to the platform it originated from.
///
/// `Donation`s made through Giving will be assigned the built-in `PaymentSource` "Planning Center". `Donation`s made through external platforms (Square, Pushpay, ect.) can be assigned a `PaymentSource` identifying them as such.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (rw) -> PCO: `name`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `donation-paymentsource-donations`: https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations
///
/// Inbound Edges:
/// - `paymentsource-organization-payment_sources`: https://api.planningcenteronline.com/giving/v2/payment_sources
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PaymentSource",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingPaymentSource extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'PaymentSource';
  static const String kTypeId = 'payment_source';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/payment_sources';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/giving/v2/payment_sources';

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
  static const kName = 'name';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _getAttribute<String>(kName, '');

  // setters for object attributes

  /// Required. The name of a payment source. Must be unique within the associated organization.
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // Class Constructors
  PcoGivingPaymentSource.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingPaymentSource.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPaymentSource] object using this endpoint: `https://api.planningcenteronline.com/giving/v2/payment_sources`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `name`
  /// - FIELDS USED WHEN UPDATING: `name`
  factory PcoGivingPaymentSource(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingPaymentSource.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/payment_sources';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;

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

  /// Will get a [PcoCollection] of [PcoGivingPaymentSource] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPaymentSource>> get({
    String? id,
    PcoGivingPaymentSourceQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingPaymentSourceQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/payment_sources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentSource>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingPaymentSource] object
  /// using a path like this: `/giving/v2/payment_sources/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingPaymentSource?> getSingle(
    String id, {
    PcoGivingPaymentSourceQuery? query,
  }) async {
    query ??= PcoGivingPaymentSourceQuery();

    var url = '/giving/v2/payment_sources/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingPaymentSource>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingPaymentSource] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingPaymentSource>> getAll({
    String? id,
    PcoGivingPaymentSourceQuery? query,
  }) async {
    query ??= PcoGivingPaymentSourceQuery();
    query.getAll = true;

    var url = '/giving/v2/payment_sources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentSource>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PcoGivingDonationQuery? query}) async {
    query ??= PcoGivingDonationQuery();
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
