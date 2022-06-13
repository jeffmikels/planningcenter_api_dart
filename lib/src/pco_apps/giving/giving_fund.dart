/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.829132
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Giving Fund Object
///
/// - Application:        giving
/// - Id:                 fund
/// - Type:               Fund
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/funds
/// - Create Endpoint:    https://api.planningcenteronline.com/giving/v2/funds
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `name` (rw) -> PCO: `name`
/// - `ledgerCode` (rw) -> PCO: `ledger_code`
/// - `description` (rw) -> PCO: `description`
/// - `visibility` (rw) -> PCO: `visibility`
/// - `colorIdentifier` (rw) -> PCO: `color_identifier`
/// - `isDefault` (ro) -> PCO: `default`
/// - `color` (ro) -> PCO: `color`
/// - `isDeletable` (ro) -> PCO: `deletable`
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
/// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
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
/// NONE
///
/// Inbound Edges:
/// - `fund-designation-fund`: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
/// - `fund-organization-funds`: https://api.planningcenteronline.com/giving/v2/funds
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `fund-recurringdonationdesignation-fund`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Fund",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "ledger_code": "string",
///     "description": "string",
///     "visibility": "value",
///     "default": true,
///     "color": "string",
///     "deletable": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoGivingFund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Fund';
  static const String kTypeId = 'fund';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/giving/v2/funds';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/giving/v2/funds';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
  static List<String> get canQuery => ['default', 'id', 'name', 'visibility'];

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
  static const kLedgerCode = 'ledger_code';
  static const kDescription = 'description';
  static const kVisibility = 'visibility';
  static const kColorIdentifier = 'color_identifier';
  static const kDefault = 'default';
  static const kColor = 'color';
  static const kDeletable = 'deletable';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['name', 'ledger_code', 'description', 'visibility', 'color_identifier'];

  @override
  List<String> get updateAllowed =>
      ['name', 'ledger_code', 'description', 'visibility', 'color_identifier'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => attributes[kName] ?? '';
  String get ledgerCode => attributes[kLedgerCode] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get visibility => attributes[kVisibility] ?? '';
  int get colorIdentifier => attributes[kColorIdentifier] ?? 0;
  bool get isDefault => attributes[kDefault] == true;
  String get color => attributes[kColor] ?? '';
  bool get isDeletable => attributes[kDeletable] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? attributes.remove(kName) : attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set ledgerCode(String? x) => (x == null)
      ? attributes.remove(kLedgerCode)
      : attributes[kLedgerCode] = x;

  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? attributes.remove(kDescription)
      : attributes[kDescription] = x;

  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`

  /// pass `null` to remove key from attributes
  set visibility(String? x) => (x == null)
      ? attributes.remove(kVisibility)
      : attributes[kVisibility] = x;

  /// pass `null` to remove key from attributes
  set colorIdentifier(int? x) => (x == null)
      ? attributes.remove(kColorIdentifier)
      : attributes[kColorIdentifier] = x;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoGivingFund.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoGivingFund.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingFund] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/funds`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingFund(
      {String? name,
      String? ledgerCode,
      String? description,
      String? visibility,
      int? colorIdentifier}) {
    var obj = PcoGivingFund.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/funds';
    if (name != null) obj.name = name;
    if (ledgerCode != null) obj.ledgerCode = ledgerCode;
    if (description != null) obj.description = description;
    if (visibility != null) obj.visibility = visibility;
    if (colorIdentifier != null) obj.colorIdentifier = colorIdentifier;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/funds`
  static Future<PcoCollection<PcoGivingFund>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/funds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromDonationAndDesignation(
      String donationId, String designationId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url =
        '/giving/v2/donations/$donationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/$pledgeCampaignId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromPledgeCampaign(
      String pledgeCampaignId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>>
      getFromRecurringDonationAndDesignation(
          String recurringDonationId, String designationId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
