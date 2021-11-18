/// This file was generated on 2021-11-18T13:57:09.722996


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
class PcoServicesLive extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Live';
  static const String typeId = 'live';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'live-plan-live';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoServicesLive() : super(pcoApplication, typeString);
  PcoServicesLive.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesLive Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live;
  static Future<List<PcoServicesLive>> getManyFromServiceTypeAndPlanAndLiveIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesLive> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLive.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLive Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live;
  static Future<PcoServicesLive?> getSingleFromServiceTypeAndPlanAndLiveIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesLive?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLive.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller
Future<List<PcoServicesPerson>> getPersonsController({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/controller';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItemTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time
Future<List<PcoServicesItemTime>> getItemTimesCurrentItemTime({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItemTime> retval = [];
  var url = '$apiEndpoint/current_item_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items
Future<List<PcoServicesItem>> getItems({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItem> retval = [];
  var url = '$apiEndpoint/items';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItem.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItemTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time
Future<List<PcoServicesItemTime>> getItemTimesNextItemTime({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesItemTime> retval = [];
  var url = '$apiEndpoint/next_item_time';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesServiceType objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type
Future<List<PcoServicesServiceType>> getServiceTypes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesServiceType> retval = [];
  var url = '$apiEndpoint/service_type';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesServiceType.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans
Future<List<PcoServicesPlan>> getPlansWatchablePlans({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/watchable_plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData));
    }
  }
  return retval;
}
    

}
