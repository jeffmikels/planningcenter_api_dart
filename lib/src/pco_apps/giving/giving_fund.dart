/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.815138
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Instantiation
/// - Create a new instance using the `PcoGivingFund()` constructor
/// - Instantiate from existing `JSON` data using the `PcoGivingFund.fromJson()` constructor.
/// - Manually create an object using the `PcoGivingFund.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// When creating a Fund, a `color_identifier` must be assigned.
/// A `color_identifier` is an integer that corresponds to an available fund color.
/// These colors are predefined and not configurable.
/// There are 12 colors available.
///
/// Identifier | Hex Code
/// --- | ---
/// 1 | #a1a1a1
/// 2 | #b2cf74
/// 3 | #9ccc79
/// 4 | #9bd3b7
/// 5 | #81bbbc
/// 6 | #78afce
/// 7 | #d99fca
/// 8 | #c0a0d2
/// 9 | #f19ca2
/// 10 | #f59b79
/// 11 | #fab676
/// 12 | #cfab77
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
  String get name => _attributes[kName] ?? '';
  String get ledgerCode => _attributes[kLedgerCode] ?? '';
  String get description => _attributes[kDescription] ?? '';
  String get visibility => _attributes[kVisibility] ?? '';
  int get colorIdentifier => _attributes[kColorIdentifier] ?? 0;
  bool get isDefault => _attributes[kDefault] == true;
  String get color => _attributes[kColor] ?? '';
  bool get isDeletable => _attributes[kDeletable] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set ledgerCode(String? x) => (x == null)
      ? _attributes.remove(kLedgerCode)
      : _attributes[kLedgerCode] = x;

  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`

  /// pass `null` to remove key from attributes
  set visibility(String? x) => (x == null)
      ? _attributes.remove(kVisibility)
      : _attributes[kVisibility] = x;

  /// pass `null` to remove key from attributes
  set colorIdentifier(int? x) => (x == null)
      ? _attributes.remove(kColorIdentifier)
      : _attributes[kColorIdentifier] = x;

  // Class Constructors
  PcoGivingFund.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoGivingFund.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoGivingFund] object using this endpoint: `https://api.planningcenteronline.com/giving/v2/funds`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `name`, `ledgerCode`, `description`, `visibility`, `colorIdentifier`
  /// - FIELDS USED WHEN UPDATING: `name`, `ledgerCode`, `description`, `visibility`, `colorIdentifier`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoGivingFund(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? name,
      String? ledgerCode,
      String? description,
      String? visibility,
      int? colorIdentifier,
      bool? isDefault,
      String? color,
      bool? isDeletable,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoGivingFund.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/giving/v2/funds';
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (ledgerCode != null) obj._attributes['ledger_code'] = ledgerCode;
    if (description != null) obj._attributes['description'] = description;
    if (visibility != null) obj._attributes['visibility'] = visibility;
    if (colorIdentifier != null)
      obj._attributes['color_identifier'] = colorIdentifier;
    if (isDefault != null) obj._attributes['default'] = isDefault;
    if (color != null) obj._attributes['color'] = color;
    if (isDeletable != null) obj._attributes['deletable'] = isDeletable;
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

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/funds`
  static Future<PcoCollection<PcoGivingFund>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/giving/v2/funds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromDonationAndDesignation(
    String donationId,
    String designationId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/giving/v2/donations/$donationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/$pledgeCampaignId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromPledgeCampaign(
    String pledgeCampaignId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>>
      getFromRecurringDonationAndDesignation(
    String recurringDonationId,
    String designationId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
