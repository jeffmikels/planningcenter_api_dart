/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.563959
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Giving RecurringDonationDesignation Object
///
/// - Application:        giving
/// - Id:                 recurring_donation_designation
/// - Type:               RecurringDonationDesignation
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `amountCents` (ro) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `fund`: include associated fund
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
/// - `fund-recurringdonationdesignation-fund`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
///
/// Inbound Edges:
/// - `recurringdonationdesignation-recurringdonation-designations`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "RecurringDonationDesignation",
///   "id": "1",
///   "attributes": {
///     "amount_cents": 1,
///     "amount_currency": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingRecurringDonationDesignation extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'RecurringDonationDesignation';
  static const String kTypeId = 'recurring_donation_designation';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `fund`: include associated fund
  static List<String> get canInclude => ['fund'];

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
  static const kAmountCents = 'amount_cents';
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
  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';

  // Class Constructors
  PcoGivingRecurringDonationDesignation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingRecurringDonationDesignation.empty()
      : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGivingRecurringDonationDesignation] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/designations`
  static Future<PcoCollection<PcoGivingRecurringDonationDesignation>>
      getDesignationsFromRecurringDonation(String recurringDonationId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes)
      query.include = PcoGivingRecurringDonationDesignation.canInclude;
    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/designations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingRecurringDonationDesignation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund`
  Future<PcoCollection<PcoGivingFund>> getFund(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '$apiEndpoint/fund';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
