/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.559067
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// - `first_name`: (URLParameter), query on a specific first_name, example: ?where[first_name]=string
/// - `last_name`: (URLParameter), query on a specific last_name, example: ?where[last_name]=string
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
  String get permissions => attributes[kPermissions] ?? '';
  List get emailAddresses => attributes[kEmailAddresses] ?? [];
  List get addresses => attributes[kAddresses] ?? [];
  List get phoneNumbers => attributes[kPhoneNumbers] ?? [];
  String get firstName => attributes[kFirstName] ?? '';
  String get lastName => attributes[kLastName] ?? '';
  int get donorNumber => attributes[kDonorNumber] ?? 0;

  // Class Constructors
  PcoGivingPerson.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingPerson.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `/giving/v2/people`
  ///
  /// Available Query Filters:
  /// - `has_donated`
  /// filter to people with at least one associated donation
  ///
  static Future<PcoCollection<PcoGivingPerson>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/people';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batch_groups/$batchGroupId/owner`
  static Future<PcoCollection<PcoGivingPerson>> getOwnerFromBatchGroup(
      String batchGroupId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batch_groups/$batchGroupId/owner';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/batches/$batcheId/owner`
  static Future<PcoCollection<PcoGivingPerson>> getOwnerFromBatche(
      String batcheId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/batches/$batcheId/owner';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingPerson] objects (expecting one)
  /// using a path like this: `/giving/v2/pledges/$pledgeId/joint_giver`
  static Future<PcoCollection<PcoGivingPerson>> getJointGiverFromPledge(
      String pledgeId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '/giving/v2/pledges/$pledgeId/joint_giver';

    return PcoCollection.fromApiCall<PcoGivingPerson>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingBatchGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/batch_groups`
  Future<PcoCollection<PcoGivingBatchGroup>> getBatchGroups(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatchGroup.canInclude;
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
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingBatch.canInclude;
    var url = '$apiEndpoint/batches';
    return PcoCollection.fromApiCall<PcoGivingBatch>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/payment_methods`
  Future<PcoCollection<PcoGivingPaymentMethod>> getPaymentMethods(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '$apiEndpoint/payment_methods';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/pledges`
  Future<PcoCollection<PcoGivingPledge>> getPledges(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '$apiEndpoint/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingCampus] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/primary_campus`
  Future<PcoCollection<PcoGivingCampus>> getPrimaryCampus(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '$apiEndpoint/primary_campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/people/1/recurring_donations`
  Future<PcoCollection<PcoGivingRecurringDonation>> getRecurringDonations(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    var url = '$apiEndpoint/recurring_donations';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
