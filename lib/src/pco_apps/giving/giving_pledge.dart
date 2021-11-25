/// This file was generated on 2021-11-25T00:07:20.792806


import '../../pco.dart';

/// This class represents a PCO Giving Pledge Object
/// 
/// Application: giving
/// Id:          pledge
/// Type:        Pledge
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Pledge","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","amount_cents":1,"amount_currency":"USD","joint_giver_amount_cents":1,"donated_total_cents":1,"joint_giver_donated_total_cents":1},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"pledge_campaign":{"data":{"type":"PledgeCampaign","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/pledges
/// 
/// possible includes with parameter ?include=a,b
/// @joint_giver: include associated joint_giver 
/// @pledge_campaign: include associated pledge_campaign 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoGivingPledge extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Pledge';
  static const String kTypeId = 'pledge';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';

  /// possible includes with parameter ?include=a,b
  /// @joint_giver: include associated joint_giver 
  /// @pledge_campaign: include associated pledge_campaign 
  static List<String> get canInclude => ['joint_giver','pledge_campaign'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kAmountCents = 'amount_cents';
  static const kAmountCurrency = 'amount_currency';
  static const kJointGiverAmountCents = 'joint_giver_amount_cents';
  static const kDonatedTotalCents = 'donated_total_cents';
  static const kJointGiverDonatedTotalCents = 'joint_giver_donated_total_cents';


  // getters and setters
  @override
  List<String> get createAllowed => ['amount_cents','person_id','pledge_campaign_id'];
  @override
  List<String> get updateAllowed => ['amount_cents'];


  /// The amount pledged
  int get amountCents => attributes[kAmountCents] ?? 0;
  String get amountCurrency => attributes[kAmountCurrency] ?? '';

  /// The amount pledged by the joint giver, if in a joint giving unit
  int get jointGiverAmountCents => attributes[kJointGiverAmountCents] ?? 0;

  /// The amount donated
  int get donatedTotalCents => attributes[kDonatedTotalCents] ?? 0;

  /// The amount donated by the joint giver, if in a joint giving unit
  int get jointGiverDonatedTotalCents => attributes[kJointGiverDonatedTotalCents] ?? 0;



  /// The amount pledged
  set amountCents(int n) => attributes[kAmountCents] = n;


  PcoGivingPledge() : super(kPcoApplication, kTypeString);
  PcoGivingPledge.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingPledge Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges;
  static Future<PcoCollection<PcoGivingPledge>> getManyFromPeopleAndPledge(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/people/$peopleId/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingPledge Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges;
  static Future<PcoCollection<PcoGivingPledge>> getManyFromPledgeCampaignAndPledge(String pledgeCampaignId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGivingPledge Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges;
  static Future<PcoCollection<PcoGivingPledge>> getSingleFromPeopleAndPledge(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/people/$peopleId/pledges' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPledge.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingPledge Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges;
  static Future<PcoCollection<PcoGivingPledge>> getSingleFromPledgeCampaignAndPledge(String pledgeCampaignId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingPledge.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingPledge>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingPledge.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
Future<PcoCollection<PcoGivingPerson>> getPersonsJointGiver({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPerson.canInclude;
  var url = '$apiEndpoint/joint_giver';
  return PcoCollection.fromApiCall<PcoGivingPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGivingPledgeCampaign objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
Future<PcoCollection<PcoGivingPledgeCampaign>> getPledgeCampaigns({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingPledgeCampaign.canInclude;
  var url = '$apiEndpoint/pledge_campaign';
  return PcoCollection.fromApiCall<PcoGivingPledgeCampaign>(url, query: query, apiVersion:apiVersion);
}
    


}
