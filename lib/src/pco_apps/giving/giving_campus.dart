/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.176709
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoGivingCampusOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoGivingCampusFilter { none }

/// Creates a [PcoGivingCampusQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoGivingCampusQuery extends PlanningCenterApiQuery {
  static final Map<PcoGivingCampusOrder, String> _orderMap = {};
  static String orderString(PcoGivingCampusOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoGivingCampusFilter, String> _filterMap = {};
  static String filterString(PcoGivingCampusFilter filter) =>
      _filterMap[filter]!;

  PcoGivingCampusQuery({
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

/// This class represents a PCO Giving Campus Object
///
/// - Application:        giving
/// - Id:                 campus
/// - Type:               Campus
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/campuses
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoGivingCampus.fromJson()` constructor.
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
/// A `Campus` that has been added to your `Organization`.
///
/// `Campus`es can be especially useful in filtering `Donation`s across the various locations of your `Organization`.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `address` (ro) -> PCO: `address`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `donation-campus-donations`: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
///
/// Inbound Edges:
/// - `campus-donation-campus`: https://api.planningcenteronline.com/giving/v2/donations/1/campus
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/giving/v2/campuses
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Campus",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "address": {}
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingCampus extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/campuses';
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
  static const kAddress = 'address';

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
  String get name => _getAttribute<String>(kName, '');
  String get address => _getAttribute<String>(kAddress, '');

  // Class Constructors
  PcoGivingCampus.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoGivingCampus.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingCampus] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoGivingCampus(
      {String? id,
      String? name,
      String? address,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingCampus.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (address != null) obj._attributes['address'] = address;

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

  /// Will get a [PcoCollection] of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingCampus>> get({
    String? id,
    PcoGivingCampusQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingCampusQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingCampus] object
  /// using a path like this: `/giving/v2/campuses/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingCampus?> getSingle(
    String id, {
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();

    var url = '/giving/v2/campuses/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingCampus>> getAll({
    String? id,
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();
    query.getAll = true;

    var url = '/giving/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/campus`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingCampus>> getFromDonation(
    String donationId, {
    String? id,
    PcoGivingCampusQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingCampusQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/donations/$donationId/campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingCampus] object
  /// using a path like this: `/giving/v2/donations/$donationId/campus/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingCampus?> getSingleFromDonation(
    String donationId,
    String id, {
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();

    var url = '/giving/v2/donations/$donationId/campus/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/campus`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingCampus>> getAllFromDonation(
    String donationId, {
    String? id,
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();
    query.getAll = true;

    var url = '/giving/v2/donations/$donationId/campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/primary_campus`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoGivingCampus>> getPrimaryCampusFromPerson(
    String personId, {
    String? id,
    PcoGivingCampusQuery? query,
    bool getAll = false,
  }) async {
    query ??= PcoGivingCampusQuery();
    if (getAll) query.getAll = true;

    var url = '/giving/v2/people/$personId/primary_campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoGivingCampus] object
  /// using a path like this: `/giving/v2/people/$personId/primary_campus/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoGivingCampus?> getSinglePrimaryCampusFromPerson(
    String personId,
    String id, {
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();

    var url = '/giving/v2/people/$personId/primary_campus/$id';
    var retval = await PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/primary_campus`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoGivingCampus>> getAllPrimaryCampusFromPerson(
    String personId, {
    String? id,
    PcoGivingCampusQuery? query,
  }) async {
    query ??= PcoGivingCampusQuery();
    query.getAll = true;

    var url = '/giving/v2/people/$personId/primary_campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/campuses/1/donations`
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
