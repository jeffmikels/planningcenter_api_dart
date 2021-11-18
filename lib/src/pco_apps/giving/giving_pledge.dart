/// This file was generated on 2021-11-18T15:28:02.205343


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
class PcoGivingPledge extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Pledge';
  static const String kTypeId = 'pledge';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledges';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoGivingPledge.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoGivingPledge Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges;
  static Future<List<PcoGivingPledge>> getManyFromPeopleAndPledgeIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingPledge> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/pledges';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPledge.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingPledge Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges;
  static Future<List<PcoGivingPledge>> getManyFromPledgeCampaignAndPledgeIds(String pledgeCampaignId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingPledge> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPledge.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingPledge Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/pledges;
  static Future<PcoGivingPledge?> getSingleFromPeopleAndPledgeIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingPledge?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/pledges' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPledge.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingPledge Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges;
  static Future<PcoGivingPledge?> getSingleFromPledgeCampaignAndPledgeIds(String pledgeCampaignId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingPledge?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/pledges' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPledge.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingPerson objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/joint_giver
Future<List<PcoGivingPerson>> getPersonsJointGiver({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPerson> retval = [];
  var url = '$apiEndpoint/joint_giver';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPledgeCampaign objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign
Future<List<PcoGivingPledgeCampaign>> getPledgeCampaigns({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPledgeCampaign> retval = [];
  var url = '$apiEndpoint/pledge_campaign';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPledgeCampaign.fromJson(itemData));
    }
  }
  return retval;
}
    

}
