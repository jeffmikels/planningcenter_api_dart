/// This file was generated on 2021-11-22T16:57:41.826843


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @default (URLParameter), query on a specific default, example: ?where[default]=true
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @visibility (URLParameter), query on a specific visibility, example: ?where[visibility]=value
/// possible orderings with parameter ?order=

///
class PcoGivingFund extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Fund';
  static const String kTypeId = 'fund';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'fund-organization-funds';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/funds';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @default (URLParameter), query on a specific default, example: ?where[default]=true
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @visibility (URLParameter), query on a specific visibility, example: ?where[visibility]=value
  static List<String> get canQuery => ['default','id','name','visibility'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoGivingFund() : super(kPcoApplication, kTypeString);
  PcoGivingFund.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund;
  static Future<List<PcoGivingFund>> getManyFromDonationAndDesignationAndFundIds(String donationId,String designationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/donations/$donationId/designations/$designationId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/funds;
  static Future<List<PcoGivingFund>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/funds';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund;
  static Future<List<PcoGivingFund>> getManyFromPledgeCampaignAndFundIds(String pledgeCampaignId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingFund Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund;
  static Future<List<PcoGivingFund>> getManyFromRecurringDonationAndDesignationAndFundIds(String recurringDonationId,String designationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingFund> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingFund.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/designations/1/fund;
  static Future<PcoGivingFund?> getSingleFromDonationAndDesignationAndFundIds(String donationId,String designationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/donations/$donationId/designations/$designationId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/funds;
  static Future<PcoGivingFund?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/funds' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/pledge_campaigns/1/fund;
  static Future<PcoGivingFund?> getSingleFromPledgeCampaignAndFundIds(String pledgeCampaignId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/pledge_campaigns/$pledgeCampaignId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingFund Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/recurring_donations/1/designations/1/fund;
  static Future<PcoGivingFund?> getSingleFromRecurringDonationAndDesignationAndFundIds(String recurringDonationId,String designationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingFund?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingFund.canInclude;
    var url = '/giving/v2/recurring_donations/$recurringDonationId/designations/$designationId/fund' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingFund.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
