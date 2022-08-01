/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.974202
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingPersonOrder { none }

/// Possible Inbound Filters:
/// - `hasDonated` -> `?filter=has_donated` : filter to people with at least one associated donation
enum PcoGivingPersonFilter { hasDonated }

/// Creates a [PcoGivingPersonQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoGivingPerson] objects can be requested with one or more of the following criteria:
/// - `whereFirstName`: query on a specific first_name, example: ?where[first_name]=string
/// - `whereLastName`: query on a specific last_name, example: ?where[last_name]=string
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingPersonQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingPersonOrder, String> _orderMap = {};
  static String orderString(PcoGivingPersonOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingPersonFilter, String> _filterMap = {
    PcoGivingPersonFilter.hasDonated: 'has_donated',
  };
  static String filterString(PcoGivingPersonFilter filter) =>
      _filterMap[filter]!;

  PcoGivingPersonQuery({
    /// Query by `first_name`
    /// query on a specific first_name, url example: ?where[first_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFirstName,

    /// Query by `last_name`
    /// query on a specific last_name, url example: ?where[last_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereLastName,
    PcoGivingPersonFilter? filterBy,

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

    if (whereFirstName != null)
      where.add(PlanningCenterApiWhere.parse('first_name', whereFirstName));
    if (whereLastName != null)
      where.add(PlanningCenterApiWhere.parse('last_name', whereLastName));
  }
}

/// This class represents a PCO Giving Person Object
///
/// - Application:        giving
/// - Id:                 person
/// - Type:               Person
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/people
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingPerson.fromJson()` constructor.
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
/// - `permissions` (ro) -> PCO: `permissions`
/// - `emailAddresses` (ro) -> PCO: `email_addresses`
/// - `addresses` (ro) -> PCO: `addresses`
/// - `phoneNumbers` (ro) -> PCO: `phone_numbers`
/// - `firstName` (ro) -> PCO: `first_name`
/// - `lastName` (ro) -> PCO: `last_name`
/// - `donorNumber` (ro) -> PCO: `donor_number`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `batchgroup-person-batch_groups`: https://api.planningcenteronline.com/giving/v2/people/1/batch_groups
/// - `batch-person-batches`: https://api.planningcenteronline.com/giving/v2/people/1/batches
/// - `donation-person-donations`: https://api.planningcenteronline.com/giving/v2/people/1/donations
/// - `paymentmethod-person-payment_methods`: https://api.planningcenteronline.com/giving/v2/people/1/payment_methods
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
/// - `recurringdonation-person-recurring_donations`: https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations
///
/// Inbound Edges:
/// - `person-batchgroup-owner`: https://api.planningcenteronline.com/giving/v2/batch_groups/1/owner
/// - `person-batch-owner`: https://api.planningcenteronline.com/giving/v2/batches/1/owner
/// - `person-organization-people`: https://api.planningcenteronline.com/giving/v2/people
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Person",
///   "id": "1",
///   "attributes": {
///     "permissions": "string",
///     "email_addresses": [],
///     "addresses": [],
///     "phone_numbers": [],
///     "first_name": "string",
///     "last_name": "string",
///     "donor_number": 1
///   },
///   "relationships": {
///     "primary_campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingPerson extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Person';
  static const String kTypeId = 'person';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/people';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
  /// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
  static List<String> get canQuery => ['first_name', 'last_name'];

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
  static const kPermissions = 'permissions';
  static const kEmailAddresses = 'email_addresses';
  static const kAddresses = 'addresses';
  static const kPhoneNumbers = 'phone_numbers';
  static const kFirstName = 'first_name';
  static const kLastName = 'last_name';
  static const kDonorNumber = 'donor_number';

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
  String get permissions => _attributes[kPermissions] ?? '';
  List get emailAddresses => _attributes[kEmailAddresses] ?? [];
  List get addresses => _attributes[kAddresses] ?? [];
  List get phoneNumbers => _attributes[kPhoneNumbers] ?? [];
  String get firstName => _attributes[kFirstName] ?? '';
  String get lastName => _attributes[kLastName] ?? '';
  int get donorNumber => _attributes[kDonorNumber] ?? 0;

  // Class Constructors
  PcoGivingPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingPerson.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPerson] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGivingPerson(
      {String? id,
      String? permissions,
      List? emailAddresses,
      List? addresses,
      List? phoneNumbers,
      String? firstName,
      String? lastName,
      int? donorNumber,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingPerson.empty();
    obj._id = id;
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (emailAddresses != null)
      obj._attributes['email_addresses'] = emailAddresses;
    if (addresses != null) obj._attributes['addresses'] = addresses;
    if (phoneNumbers != null) obj._attributes['phone_numbers'] = phoneNumbers;
    if (firstName != null) obj._attributes['first_name'] = firstName;
    if (lastName != null) obj._attributes['last_name'] = lastName;
    if (donorNumber != null) obj._attributes['donor_number'] = donorNumber;

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

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `/giving/v2/people`
  ///
  /// Available Query Filters:
  /// - `has_donated`
  /// filter to people with at least one associated donation
  ///
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPerson>> get({
    String? id,
    PcoGivingPersonQuery? query,
  }) async {
    query ??= PcoGivingPersonQuery();

    var url = '/giving/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batch_groups/$batchGroupId/owner`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPerson>> getOwnerFromBatchGroup(
    String batchGroupId, {
    PcoGivingPersonQuery? query,
  }) async {
    query ??= PcoGivingPersonQuery();

    var url = '/giving/v2/batch_groups/$batchGroupId/owner';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batches/$batchId/owner`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPerson>> getOwnerFromBatch(
    String batchId, {
    PcoGivingPersonQuery? query,
  }) async {
    query ??= PcoGivingPersonQuery();

    var url = '/giving/v2/batches/$batchId/owner';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/$pledgeId/joint_giver`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingPerson>> getJointGiverFromPledge(
    String pledgeId, {
    PcoGivingPersonQuery? query,
  }) async {
    query ??= PcoGivingPersonQuery();

    var url = '/giving/v2/pledges/$pledgeId/joint_giver';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/batch_groups`
  Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroups(
      {PcoGivingBatchGroupQuery? query}) async {
    query ??= PcoGivingBatchGroupQuery();
    var url = '$apiEndpoint/batch_groups';
    return PcoCollection.fromApiCall<PcoGivingBatchGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingBatch] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/batches`
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

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PcoGivingDonationQuery? query}) async {
    query ??= PcoGivingDonationQuery();
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/payment_methods`
  Future<PcoCollection<PcoGivingPaymentMethod>> getPaymentMethods(
      {PcoGivingPaymentMethodQuery? query}) async {
    query ??= PcoGivingPaymentMethodQuery();
    var url = '$apiEndpoint/payment_methods';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/pledges`
  Future<PcoCollection<PcoGivingPledge>> getPledges(
      {PcoGivingPledgeQuery? query}) async {
    query ??= PcoGivingPledgeQuery();
    var url = '$apiEndpoint/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/primary_campus`
  Future<PcoCollection<PcoGivingCampus>> getPrimaryCampus(
      {PcoGivingCampusQuery? query}) async {
    query ??= PcoGivingCampusQuery();
    var url = '$apiEndpoint/primary_campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations`
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
