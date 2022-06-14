/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.129243
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `address` (ro) -> PCO: `address`
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
  String get name => _attributes[kName] ?? '';
  String get address => _attributes[kAddress] ?? '';

  // Class Constructors
  PcoGivingCampus.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses`
  static Future<PcoCollection<PcoGivingCampus>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/giving/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/campus`
  static Future<PcoCollection<PcoGivingCampus>> getFromDonation(
    String donationId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/giving/v2/donations/$donationId/campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$personId/primary_campus`
  static Future<PcoCollection<PcoGivingCampus>> getPrimaryCampusFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
  Future<PcoCollection<PcoGivingDonation>> getDonations({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeDesignations = false,
    bool includeLabels = false,
    bool includeRefund = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoGivingCampus.canInclude);
    if (includeDesignations) query.include.add('designations');
    if (includeLabels) query.include.add('labels');
    if (includeRefund) query.include.add('refund');
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }
}
