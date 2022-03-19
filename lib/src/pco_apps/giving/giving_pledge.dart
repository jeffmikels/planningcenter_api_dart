/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:05.530540
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Giving Pledge Object
/// 
/// - Application:        giving
/// - Id:                 pledge
/// - Type:               Pledge
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/pledges
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `amountCents` (rw) -> PCO: `amount_cents`
/// - `amountCurrency` (ro) -> PCO: `amount_currency`
/// - `jointGiverAmountCents` (ro) -> PCO: `joint_giver_amount_cents`
/// - `donatedTotalCents` (ro) -> PCO: `donated_total_cents`
/// - `jointGiverDonatedTotalCents` (ro) -> PCO: `joint_giver_donated_total_cents`
/// - `personId` (wo) -> PCO: `person_id`
/// - `pledgeCampaignId` (wo) -> PCO: `pledge_campaign_id`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `joint_giver`: include associated joint_giver 
/// - `pledge_campaign`: include associated pledge_campaign 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
/// 
/// Inbound Edges:
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Pledge",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "amount_cents": 1,
///     "amount_currency": "USD",
///     "joint_giver_amount_cents": 1,
///     "donated_total_cents": 1,
///     "joint_giver_donated_total_cents": 1
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "pledge_campaign": {
///       "data": {
///         "type": "PledgeCampaign",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGivingPledge extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Pledge';
  static const String kTypeId = 'pledge';
  static const String kApiVersion = '2019-10-18';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `joint_giver`: include associated joint_giver 
  /// - `pledge_campaign`: include associated pledge_campaign 
  static List<String> get canInclude => ['joint_giver','pledge_campaign'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

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
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';
  static const kJointGiverAmountCents = 'joint_giver_amount_cents';
  static const kDonatedTotalCents = 'donated_total_cents';
  static const kJointGiverDonatedTotalCents = 'joint_giver_donated_total_cents';
  static const kPersonId = 'person_id';
  static const kPledgeCampaignId = 'pledge_campaign_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['amount_cents', 'person_id', 'pledge_campaign_id'];

  @override
  List<String> get updateAllowed => ['amount_cents'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';
  int get jointGiverAmountCents => attributes[kJointGiverAmountCents] ?? 0;
  int get donatedTotalCents => attributes[kDonatedTotalCents] ?? 0;
  int get jointGiverDonatedTotalCents => attributes[kJointGiverDonatedTotalCents] ?? 0;  
  
  // setters for object attributes
  
  /// The amount pledged
  
  /// pass `null` to remove key from attributes
  set amountCents(int? x) => (x == null) ? attributes.remove(kAmountCents) : attributes[kAmountCents] = x;  
  
  // additional setters / getters for create/update attributes
  
  /// pass `null` to remove key from attributes
  set personId(String? x) => (x == null) ? attributes.remove(kPersonId) : attributes[kPersonId] = x;
  String get personId => attributes[kPersonId] ?? '';
  
  /// pass `null` to remove key from attributes
  set pledgeCampaignId(String? x) => (x == null) ? attributes.remove(kPledgeCampaignId) : attributes[kPledgeCampaignId] = x;
  String get pledgeCampaignId => attributes[kPledgeCampaignId] ?? '';

  // Class Constructors
  PcoGivingPledge.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoGivingPledge.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/pledges`
  static Future<PcoCollection<PcoGivingPledge>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/people/$peopleId/pledges';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingPledge] objects (expecting many)
  /// using a path like this: `/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges`
  static Future<PcoCollection<PcoGivingPledge>> getFromPledgeCampaign(String pledgeCampaignId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver`
  Future<PcoCollection<PcoGivingPerson>> getJointGiver({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPerson.canInclude;
    var url = '$apiEndpoint/joint_giver';
    return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoGivingPledgeCampaign] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign`
  Future<PcoCollection<PcoGivingPledgeCampaign>> getPledgeCampaign({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledgeCampaign.canInclude;
    var url = '$apiEndpoint/pledge_campaign';
    return PcoCollection.fromApiCall<PcoGivingPledgeCampaign>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
