/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.781602
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
/// ## Description
///
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `designations`: include associated designations
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
      DateTime.parse(attributes[kReleaseHoldAt] ?? '');
  int get amountCents => attributes[kAmountCents] ?? 0;
  String get status => attributes[kStatus] ?? '';
  DateTime get lastDonationReceivedAt =>
      DateTime.parse(attributes[kLastDonationReceivedAt] ?? '');
  DateTime get nextOccurrence =>
      DateTime.parse(attributes[kNextOccurrence] ?? '');
  String get schedule => attributes[kSchedule] ?? '';
  String get amountCurrency => attributes[kAmountCurrency] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedDesignations<T extends PcoResource>() =>
      relationships['designations']?.cast<T>() ?? [];

  // Class Constructors
  PcoGivingRecurringDonation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingRecurringDonation.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    var url = '/giving/v2/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/payment_methods/$paymentMethodId/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>>
      getFromPeopleAndPaymentMethod(String peopleId, String paymentMethodId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    var url =
        '/giving/v2/people/$peopleId/payment_methods/$paymentMethodId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonation] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/recurring_donations`
  static Future<PcoCollection<PcoGivingRecurringDonation>> getFromPeople(
      String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingRecurringDonation.canInclude;
    var url = '/giving/v2/people/$peopleId/recurring_donations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingPaymentMethod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/payment_method`
  Future<PcoCollection<PcoGivingPaymentMethod>> getPaymentMethod(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPaymentMethod.canInclude;
    var url = '$apiEndpoint/payment_method';
    return PcoCollection.fromApiCall<PcoGivingPaymentMethod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingRecurringDonationDesignation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations`
  Future<PcoCollection<PcoGivingRecurringDonationDesignation>> getDesignations(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes)
      query.include = PcoGivingRecurringDonationDesignation.canInclude;
    var url = '$apiEndpoint/designations';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonationDesignation>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
