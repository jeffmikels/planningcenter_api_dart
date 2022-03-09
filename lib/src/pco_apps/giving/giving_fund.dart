/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:48.490029
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
/// 
/// Description:
/// 
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `fund-designation-fund`: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund
/// - `fund-organization-funds`: https://api.planningcenteronline.com/giving/v2/funds
/// - `fund-pledgecampaign-fund`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
/// - `fund-recurringdonationdesignation-fund`: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund
/// 
/// All Actions:
/// NONE
///
class PcoGivingFund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Fund';
  static const String kTypeId = 'fund';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'fund-organization-funds';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `default`: (URLParameter), query on a specific default, example: ?where[default]=true
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `visibility`: (URLParameter), query on a specific visibility, example: ?where[visibility]=value
  static List<String> get canQuery => ['default','id','name','visibility'];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  List<String> get createAllowed => ['name','ledger_code','description','visibility','color_identifier'];

  @override
  List<String> get updateAllowed => ['name','ledger_code','description','visibility','color_identifier'];

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

  set name(String s) => attributes[kName] = s;
  set ledgerCode(String s) => attributes[kLedgerCode] = s;
  set description(String s) => attributes[kDescription] = s;
  
  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`
  set visibility(String s) => attributes[kVisibility] = s;
  set colorIdentifier(int n) => attributes[kColorIdentifier] = n;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingFund._() : super(kPcoApplication, kTypeString);
  PcoGivingFund.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoGivingFund] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/giving/v2/funds`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoGivingFund() {
    return PcoGivingFund._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/giving/v2/funds';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/funds`
  static Future<PcoCollection<PcoGivingFund>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/funds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromDonationAndDesignation(String donationId,String designationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/donations/$donationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/$pledgeCampaignId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromPledgeCampaign(String pledgeCampaignId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingFund] objects (expecting many)
  /// using a path like this: `/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund`
  static Future<PcoCollection<PcoGivingFund>> getFromRecurringDonationAndDesignation(String recurringDonationId,String designationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingFund>(url, query: query, apiVersion:kApiVersion);
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
