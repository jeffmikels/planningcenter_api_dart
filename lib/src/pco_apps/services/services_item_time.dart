/// This file was generated on 2021-11-22T16:37:08.790922


import '../../pco.dart';

/// This class represents a PCO Services ItemTime Object
/// 
/// Application: services
/// Id:          item_time
/// Type:        ItemTime
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"ItemTime","id":"1","attributes":{"live_start_at":"2000-01-01T12:00:00Z","live_end_at":"2000-01-01T12:00:00Z","exclude":true,"length":1,"length_offset":1},"relationships":{"item":{"data":{"type":"Item","id":"1"}},"plan_time":{"data":{"type":"PlanTime","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesItemTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemTime';
  static const String kTypeId = 'item_time';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kLiveStartAt = 'live_start_at';
  static const kLiveEndAt = 'live_end_at';
  static const kExclude = 'exclude';
  static const kLength = 'length';
  static const kLengthOffset = 'length_offset';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get liveStartAt => DateTime.parse(attributes[kLiveStartAt] ?? '');
  DateTime get liveEndAt => DateTime.parse(attributes[kLiveEndAt] ?? '');
  bool get isExclude => attributes[kExclude] == true;
  int get length => attributes[kLength] ?? 0;
  int get lengthOffset => attributes[kLengthOffset] ?? 0;




  PcoServicesItemTime() : super(kPcoApplication, kTypeString);
  PcoServicesItemTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesItemTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times;
  static Future<List<PcoServicesItemTime>> getManyFromServiceTypeAndPlanAndItemAndItemTimeIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesItemTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time;
  static Future<List<PcoServicesItemTime>> getManyFromPeopleAndRecentPlanAndLiveAndCurrentItemTimeIds(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/current_item_time';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesItemTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time;
  static Future<List<PcoServicesItemTime>> getManyFromPeopleAndRecentPlanAndLiveAndItemTimeIds(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesItemTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/next_item_time';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesItemTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesItemTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times;
  static Future<PcoServicesItemTime?> getSingleFromServiceTypeAndPlanAndItemAndItemTimeIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesItemTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time;
  static Future<PcoServicesItemTime?> getSingleFromPeopleAndRecentPlanAndLiveAndCurrentItemTimeIds(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/current_item_time' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesItemTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time;
  static Future<PcoServicesItemTime?> getSingleFromPeopleAndRecentPlanAndLiveAndItemTimeIds(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesItemTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/next_item_time' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesItemTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
