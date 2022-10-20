/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:10.694331
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingOrganizationFilter { none }

/// Creates a [PcoGivingOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoGivingOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoGivingOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoGivingOrganizationQuery({
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

/// This class represents a PCO Giving Organization Object
///
/// - Application:        giving
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingOrganization.fromJson()` constructor.
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
/// The root level `Organization` record which serves as a link to `Donation`s, `People`, `Fund`s, etc.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `batchgroup-organization-batch_groups`: https://api.planningcenteronline.com/giving/v2/batch_groups
/// - `batch-organization-batches`: https://api.planningcenteronline.com/giving/v2/batches
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/giving/v2/campuses
/// - `donation-organization-donations`: https://api.planningcenteronline.com/giving/v2/donations
/// - `fund-organization-funds`: https://api.planningcenteronline.com/giving/v2/funds
/// - `label-organization-labels`: https://api.planningcenteronline.com/giving/v2/labels
/// - `paymentsource-organization-payment_sources`: https://api.planningcenteronline.com/giving/v2/payment_sources
/// - `person-organization-people`: https://api.planningcenteronline.com/giving/v2/people
/// - `recurringdonation-organization-recurring_donations`: https://api.planningcenteronline.com/giving/v2/recurring_donations
///
/// Inbound Edges:
/// NONE
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingOrganization extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2';
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
  static const kName = 'name';

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
  String get name => _attributes[kName] ?? '';

  // Class Constructors
  PcoGivingOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingOrganization(
      {String? id,
      String? name,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingOrganization.empty();
    obj._id = id;
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
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batch_groups`
  Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroups(
      {PcoGivingBatchGroupQuery? query}) async {
    query ??= PcoGivingBatchGroupQuery();
    var url = '$apiEndpoint/batch_groups';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/batches`
  ///
  /// Available Query Filters:
  /// - `committed`
  /// - `in_progress`
  Future<PcoCollection<PcoGivingBatch>> getBatches(
      {PcoGivingBatchQuery? query}) async {
    query ??= PcoGivingBatchQuery();
    var url = '$apiEndpoint/batches';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/campuses`
  Future<PcoCollection<PcoGivingCampus>> getCampuses(
      {PcoGivingCampusQuery? query}) async {
    query ??= PcoGivingCampusQuery();
    var url = '$apiEndpoint/campuses';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/donations`
  ///
  /// Available Query Filters:
  /// - `succeeded`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PcoGivingDonationQuery? query}) async {
    query ??= PcoGivingDonationQuery();
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/funds`
  Future<PcoCollection<PcoGivingFund>> getFunds(
      {PcoGivingFundQuery? query}) async {
    query ??= PcoGivingFundQuery();
    var url = '$apiEndpoint/funds';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/labels`
  Future<PcoCollection<PcoGivingLabel>> getLabels(
      {PcoGivingLabelQuery? query}) async {
    query ??= PcoGivingLabelQuery();
    var url = '$apiEndpoint/labels';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPaymentSource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/payment_sources`
  Future<PcoCollection<PcoGivingPaymentSource>> getPaymentSources(
      {PcoGivingPaymentSourceQuery? query}) async {
    query ??= PcoGivingPaymentSourceQuery();
    var url = '$apiEndpoint/payment_sources';
    return PcoCollection.fromApiCall<PcoGivingPaymentSource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people`
  ///
  /// Available Query Filters:
  /// - `has_donated`
  /// filter to people with at least one associated donation
  ///
  Future<PcoCollection<PcoGivingPerson>> getPeople(
      {PcoGivingPersonQuery? query}) async {
    query ??= PcoGivingPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations`
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
