/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.557779
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (rw) -> PCO: `name`
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
  String get name => attributes[kName] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : attributes[kName] = x;

  // Class Constructors
  PcoGivingPaymentSource.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingPaymentSource.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingPaymentSource] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/payment_sources`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingPaymentSource({String? name}) {
    var obj = PcoGivingPaymentSource.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/payment_sources';
    if (name != null) obj.name = name;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGivingPaymentSource] objects (expecting many)
  /// using a path like this: `/giving/v2/payment_sources`
  static Future<PcoCollection<PcoGivingPaymentSource>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentSource.canInclude;
    var url = '/giving/v2/payment_sources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPaymentSource>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/payment_sources/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
