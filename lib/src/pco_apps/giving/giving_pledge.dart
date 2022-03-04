/// This file was generated on 2022-03-04T15:29:14.773632


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
/// 
/// Description:
/// 
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - joint_giver: include associated joint_giver 
/// - pledge_campaign: include associated pledge_campaign 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-pledge-joint_giver`: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
/// - `pledgecampaign-pledge-pledge_campaign`: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
/// 
/// All Inbound Edges:
/// - `pledge-person-pledges`: https://api.planningcenteronline.com/giving/v2/people/1/pledges
/// - `pledge-pledgecampaign-pledges`: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
/// 
/// All Actions:
/// NONE
///
class PcoGivingPledge extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Pledge';
  static const String kTypeId = 'pledge';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

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
  List<String> get createAllowed => ['amount_cents','person_id','pledge_campaign_id'];

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
  set amountCents(int n) => attributes[kAmountCents] = n;
  

  // additional setters and getters for assignable values

  String get personId => attributes[kPersonId] ?? '';
  set personId(String s) => attributes[kPersonId] = s;
  String get pledgeCampaignId => attributes[kPledgeCampaignId] ?? '';
  set pledgeCampaignId(String s) => attributes[kPledgeCampaignId] = s;
  



  // Class Constructors
  PcoGivingPledge() : super(kPcoApplication, kTypeString);
  PcoGivingPledge.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



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
