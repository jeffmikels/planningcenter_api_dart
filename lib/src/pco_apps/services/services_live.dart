/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.914125
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services Live Object
/// 
/// - Application:        services
/// - Id:                 live
/// - Type:               Live
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Live",
///   "id": "1",
///   "attributes": {
///     "series_title": "string",
///     "title": "string",
///     "dates": "string",
///     "live_channel": "string",
///     "chat_room_channel": "string",
///     "can_control": true,
///     "can_take_control": true,
///     "can_chat": true,
///     "can_control_video_feed": true
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - controller: include associated controller 
/// - current_item_time: include associated current_item_time 
/// - items: include associated items 
/// - next_item_time: include associated next_item_time 
/// - service_type: include associated service_type 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-live-controller`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller
/// - `itemtime-live-current_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time
/// - `item-live-items`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items
/// - `itemtime-live-next_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time
/// - `servicetype-live-service_type`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type
/// - `plan-live-watchable_plans`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans
/// 
/// All Inbound Edges:
/// - `live-plan-live`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live
/// 
/// All Actions:
/// - `go_to_next_item`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_next_item
/// - `go_to_previous_item`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_previous_item
/// - `toggle_control`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/toggle_control
///
class PcoServicesLive extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Live';
  static const String kTypeId = 'live';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'live-plan-live';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live';

  /// possible includes with parameter ?include=a,b
  /// - `controller`: include associated controller 
  /// - `current_item_time`: include associated current_item_time 
  /// - `items`: include associated items 
  /// - `next_item_time`: include associated next_item_time 
  /// - `service_type`: include associated service_type 
  static List<String> get canInclude => ['controller','current_item_time','items','next_item_time','service_type'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
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

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get seriesTitle => attributes[kSeriesTitle] ?? '';
  String get title => attributes[kTitle] ?? '';
  String get dates => attributes[kDates] ?? '';
  String get liveChannel => attributes[kLiveChannel] ?? '';
  String get chatRoomChannel => attributes[kChatRoomChannel] ?? '';
  bool get isCanControl => attributes[kCanControl] == true;
  bool get isCanTakeControl => attributes[kCanTakeControl] == true;
  bool get isCanChat => attributes[kCanChat] == true;
  bool get isCanControlVideoFeed => attributes[kCanControlVideoFeed] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesLive._() : super(kPcoApplication, kTypeString);
  PcoServicesLive.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesLive] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$peopleId/recent_plans/$recentPlanId/live`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesLive(String peopleId,String recentPlanId) {
    return PcoServicesLive._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/people/$peopleId/recent_plans/$recentPlanId/live';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/live`
  static Future<PcoCollection<PcoServicesLive>> getFromServiceTypeAndPlan(String serviceTypeId,String planId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesLive>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller`
  Future<PcoCollection<PcoServicesPerson>> getController({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    var url = '$apiEndpoint/controller';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time`
  Future<PcoCollection<PcoServicesItemTime>> getCurrentItemTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '$apiEndpoint/current_item_time';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items`
  Future<PcoCollection<PcoServicesItem>> getItems({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '$apiEndpoint/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time`
  Future<PcoCollection<PcoServicesItemTime>> getNextItemTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url = '$apiEndpoint/next_item_time';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type`
  Future<PcoCollection<PcoServicesServiceType>> getServiceType({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '$apiEndpoint/service_type';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans`
  Future<PcoCollection<PcoServicesPlan>> getWatchablePlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '$apiEndpoint/watchable_plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `go_to_next_item`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_next_item`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goToNextItem(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/go_to_next_item';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `go_to_previous_item`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_previous_item`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goToPreviousItem(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/go_to_previous_item';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }

  /// ACTION: `toggle_control`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/toggle_control`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> toggleControl(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/toggle_control';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
