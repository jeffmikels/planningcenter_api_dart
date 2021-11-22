/// This file was generated on 2021-11-22T16:57:41.117946


import '../../pco.dart';

/// This class represents a PCO Services Live Object
/// 
/// Application: services
/// Id:          live
/// Type:        Live
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Live","id":"1","attributes":{"series_title":"string","title":"string","dates":"string","live_channel":"string","chat_room_channel":"string","can_control":true,"can_take_control":true,"can_chat":true,"can_control_video_feed":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live
/// 
/// possible includes with parameter ?include=a,b
/// @controller: include associated controller 
/// @current_item_time: include associated current_item_time 
/// @items: include associated items 
/// @next_item_time: include associated next_item_time 
/// @service_type: include associated service_type 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesLive extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Live';
  static const String kTypeId = 'live';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'live-plan-live';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live';

  /// possible includes with parameter ?include=a,b
  /// @controller: include associated controller 
  /// @current_item_time: include associated current_item_time 
  /// @items: include associated items 
  /// @next_item_time: include associated next_item_time 
  /// @service_type: include associated service_type 
  static List<String> get canInclude => ['controller','current_item_time','items','next_item_time','service_type'];

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
  static const kSeriesTitle = 'series_title';
  static const kTitle = 'title';
  static const kDates = 'dates';
  static const kLiveChannel = 'live_channel';
  static const kChatRoomChannel = 'chat_room_channel';
  static const kCanControl = 'can_control';
  static const kCanTakeControl = 'can_take_control';
  static const kCanChat = 'can_chat';
  static const kCanControlVideoFeed = 'can_control_video_feed';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get seriesTitle => attributes[kSeriesTitle] ?? '';
  String get title => attributes[kTitle] ?? '';
  String get dates => attributes[kDates] ?? '';
  String get liveChannel => attributes[kLiveChannel] ?? '';
  String get chatRoomChannel => attributes[kChatRoomChannel] ?? '';
  bool get isCanControl => attributes[kCanControl] == true;
  bool get isCanTakeControl => attributes[kCanTakeControl] == true;
  bool get isCanChat => attributes[kCanChat] == true;
  bool get isCanControlVideoFeed => attributes[kCanControlVideoFeed] == true;




  PcoServicesLive() : super(kPcoApplication, kTypeString);
  PcoServicesLive.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesLive Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live;
  static Future<List<PcoServicesLive>> getManyFromServiceTypeAndPlanAndLiveIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesLive> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLive.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLive Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live;
  static Future<PcoServicesLive?> getSingleFromServiceTypeAndPlanAndLiveIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesLive?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLive.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller
Future<List<PcoServicesPerson>> getPersonsController({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPerson.canInclude;
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/controller';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItemTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time
Future<List<PcoServicesItemTime>> getItemTimesCurrentItemTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemTime.canInclude;
  List<PcoServicesItemTime> retval = [];
  var url = '$apiEndpoint/current_item_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items
Future<List<PcoServicesItem>> getItems({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItem.canInclude;
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/items';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItemTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time
Future<List<PcoServicesItemTime>> getItemTimesNextItemTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemTime.canInclude;
  List<PcoServicesItemTime> retval = [];
  var url = '$apiEndpoint/next_item_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesServiceType.canInclude;
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_type';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans
Future<List<PcoServicesPlan>> getPlansWatchablePlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/watchable_plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: go_to_next_item
/// 
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_next_item
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> goToNextItem(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/go_to_next_item';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: go_to_previous_item
/// 
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_previous_item
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> goToPreviousItem(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/go_to_previous_item';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: toggle_control
/// 
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/toggle_control
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> toggleControl(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/toggle_control';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
