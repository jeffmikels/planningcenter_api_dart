/// This file was generated on 2021-11-17T23:59:30.033507


import '../../pco.dart';

/// This class represents a PCO Giving Fund Object
/// 
/// Application: giving
/// Id:          fund
/// Type:        Fund
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Fund","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","name":"string","ledger_code":"string","description":"string","visibility":"value","default":true,"color":"string","deletable":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/funds
/// 
class PcoGivingFund extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'Fund';
  static const String typeId = 'fund';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'fund-organization-funds';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
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

  String get name => attributes[kName] ?? '';
  String get ledgerCode => attributes[kLedgerCode] ?? '';
  String get description => attributes[kDescription] ?? '';

  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`
  String get visibility => attributes[kVisibility] ?? '';
  int get colorIdentifier => attributes[kColorIdentifier] ?? 0;
  bool get isDefault => attributes[kDefault] == true;

  /// Hex color code.
  String get color => attributes[kColor] ?? '';

  /// Read only. Boolean that tells if you if the fund can be deleted or not. Read more in our product documentation: https://pcogiving.zendesk.com/hc/en-us/articles/205197070-Managing-Funds#deleting-funds
  bool get isDeletable => attributes[kDeletable] == true;


  set name(String s) => attributes[kName] = s;
  set ledgerCode(String s) => attributes[kLedgerCode] = s;
  set description(String s) => attributes[kDescription] = s;

  /// Possible values: `everywhere`, `admin_only`, `nowhere`, or `hidden`
  set visibility(String s) => attributes[kVisibility] = s;
  set colorIdentifier(int n) => attributes[kColorIdentifier] = n;


  PcoGivingFund() : super(pcoApplication, typeString);
  PcoGivingFund.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund;
  static Future<List<PcoGivingFund>> getManyFromDonationAndDesignationAndFundIds(String donationId,String designationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/designations/$designationId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/funds;
  static Future<List<PcoGivingFund>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/funds';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund;
  static Future<List<PcoGivingFund>> getManyFromPledgeCampaignAndFundIds(String pledgeCampaignId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund;
  static Future<List<PcoGivingFund>> getManyFromRecurringDonationAndDesignationAndFundIds(String recurringDonationId,String designationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund;
  static Future<PcoGivingFund?> getSingleFromDonationAndDesignationAndFundIds(String donationId,String designationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/designations/$designationId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/funds;
  static Future<PcoGivingFund?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/funds' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund;
  static Future<PcoGivingFund?> getSingleFromPledgeCampaignAndFundIds(String pledgeCampaignId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund;
  static Future<PcoGivingFund?> getSingleFromRecurringDonationAndDesignationAndFundIds(String recurringDonationId,String designationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data);
    }
    return retval;
  }




}
