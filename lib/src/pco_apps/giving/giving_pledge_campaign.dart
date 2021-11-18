/// This file was generated on 2021-11-18T13:57:10.217338


import '../../pco.dart';

/// This class represents a PCO Giving PledgeCampaign Object
/// 
/// Application: giving
/// Id:          pledge_campaign
/// Type:        PledgeCampaign
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"PledgeCampaign","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string","description":"string","starts_at":"2000-01-01T12:00:00Z","ends_at":"2000-01-01T12:00:00Z","goal_cents":1,"goal_currency":"USD","show_goal_in_church_center":true,"received_total_from_pledges_cents":1,"received_total_outside_of_pledges_cents":1},"relationships":{"fund":{"data":{"type":"Fund","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/pledge_campaigns
/// 
class PcoGivingPledgeCampaign extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'PledgeCampaign';
  static const String typeId = 'pledge_campaign';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/pledge_campaigns';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kDescription = 'description';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kGoalCents = 'goal_cents';
  static const kGoalCurrency = 'goal_currency';
  static const kShowGoalInChurchCenter = 'show_goal_in_church_center';
  static const kReceivedTotalFromPledgesCents = 'received_total_from_pledges_cents';
  static const kReceivedTotalOutsideOfPledgesCents = 'received_total_outside_of_pledges_cents';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id'];
  @override
  List<String> get updateAllowed => ['name','description','starts_at','ends_at','goal_cents','show_goal_in_church_center','fund_id'];

  String get name => attributes[kName] ?? '';
  String get description => attributes[kDescription] ?? '';
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');

  /// Optional. During the donation period of this campaign, the running total of donations will be tracked against this number
  int get goalCents => attributes[kGoalCents] ?? 0;
  String get goalCurrency => attributes[kGoalCurrency] ?? '';

  /// In addition to seeing their personal pledge progress within their donor profile, this option allows donors to see the the collective progress towards the campaign’s overall goal (if set).
  bool get isShowGoalInChurchCenter => attributes[kShowGoalInChurchCenter] == true;
  int get receivedTotalFromPledgesCents => attributes[kReceivedTotalFromPledgesCents] ?? 0;
  int get receivedTotalOutsideOfPledgesCents => attributes[kReceivedTotalOutsideOfPledgesCents] ?? 0;


  set name(String s) => attributes[kName] = s;
  set description(String s) => attributes[kDescription] = s;
  set startsAt(DateTime d) => attributes[kStartsAt] = d.toIso8601String();
  set endsAt(DateTime d) => attributes[kEndsAt] = d.toIso8601String();

  /// Optional. During the donation period of this campaign, the running total of donations will be tracked against this number
  set goalCents(int n) => attributes[kGoalCents] = n;

  /// In addition to seeing their personal pledge progress within their donor profile, this option allows donors to see the the collective progress towards the campaign’s overall goal (if set).
  set isShowGoalInChurchCenter(bool b) => attributes[kShowGoalInChurchCenter] = b;


  PcoGivingPledgeCampaign() : super(pcoApplication, typeString);
  PcoGivingPledgeCampaign.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingPledgeCampaign Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign;
  static Future<List<PcoGivingPledgeCampaign>> getManyFromPledgeAndPledgeCampaignIds(String pledgeId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingPledgeCampaign> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledges/$pledgeId/pledge_campaign';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingPledgeCampaign.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingPledgeCampaign Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledges/1/pledge_campaign;
  static Future<PcoGivingPledgeCampaign?> getSingleFromPledgeAndPledgeCampaignIds(String pledgeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingPledgeCampaign?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledges/$pledgeId/pledge_campaign' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingPledgeCampaign.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingFund objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund
Future<List<PcoGivingFund>> getFunds({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingFund> retval = [];
  var url = '$apiEndpoint/fund';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingFund.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGivingPledge objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/pledges
Future<List<PcoGivingPledge>> getPledges({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingPledge> retval = [];
  var url = '$apiEndpoint/pledges';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingPledge.fromJson(itemData));
    }
  }
  return retval;
}
    

}
