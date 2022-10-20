/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:11.948997
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesLiveOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesLiveFilter { none }

/// Creates a [PcoServicesLiveQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeController`: include associated controller 
/// - `includeCurrentItemTime`: include associated current_item_time 
/// - `includeItems`: include associated items 
/// - `includeNextItemTime`: include associated next_item_time 
/// - `includeServiceType`: include associated service_type 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoServicesLiveQuery(includes: ['a', 'b'])`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesLiveQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesLiveOrder, String> _orderMap = {
    
  };
  static String orderString(PcoServicesLiveOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesLiveFilter, String> _filterMap = {
    
  };
  static String filterString(PcoServicesLiveFilter filter) => _filterMap[filter]!;

  PcoServicesLiveQuery({
    /// include associated controller
    /// when true, adds `?include=controller` to url
    bool includeController = false,
    
    /// include associated current_item_time
    /// when true, adds `?include=current_item_time` to url
    bool includeCurrentItemTime = false,
    
    /// include associated items
    /// when true, adds `?include=items` to url
    bool includeItems = false,
    
    /// include associated next_item_time
    /// when true, adds `?include=next_item_time` to url
    bool includeNextItemTime = false,
    
    /// include associated service_type
    /// when true, adds `?include=service_type` to url
    bool includeServiceType = false,
    
    /// when true, adds `?include=controller,current_item_time,items,next_item_time,service_type` to url parameters
    bool includeAll = false,




    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeAll || includeController) include.add('controller');
    if (includeAll || includeCurrentItemTime) include.add('current_item_time');
    if (includeAll || includeItems) include.add('items');
    if (includeAll || includeNextItemTime) include.add('next_item_time');
    if (includeAll || includeServiceType) include.add('service_type');}
}

/// This class represents a PCO Services Live Object
/// 
/// - Application:        services
/// - Id:                 live
/// - Type:               Live
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series/1/plans/1/live
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoServicesLive()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesLive.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
/// 
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///   
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `seriesTitle` (ro) -> PCO: `series_title`
/// - `title` (ro) -> PCO: `title`
/// - `dates` (ro) -> PCO: `dates`
/// - `liveChannel` (ro) -> PCO: `live_channel`
/// - `chatRoomChannel` (ro) -> PCO: `chat_room_channel`
/// - `isCanControl` (ro) -> PCO: `can_control`
/// - `isCanTakeControl` (ro) -> PCO: `can_take_control`
/// - `isCanChat` (ro) -> PCO: `can_chat`
/// - `isCanControlVideoFeed` (ro) -> PCO: `can_control_video_feed`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `person-live-controller`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/controller
/// - `itemtime-live-current_item_time`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/current_item_time
/// - `item-live-items`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/items
/// - `itemtime-live-next_item_time`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/next_item_time
/// - `servicetype-live-service_type`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/service_type
/// - `plan-live-watchable_plans`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/watchable_plans
/// 
/// Inbound Edges:
/// - `live-plan-live`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live
/// 
/// Actions:
/// - `go_to_next_item`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/go_to_next_item
/// - `go_to_previous_item`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/go_to_previous_item
/// - `toggle_control`: https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/toggle_control
///
/// ## Raw Data Object Example
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
class PcoServicesLive extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Live';
  static const String kTypeId = 'live';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/series/1/plans/1/live';
  static const String kCreatePathTemplate = 'null';

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
  String get createPathTemplate => kCreatePathTemplate;

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
  String get seriesTitle => _attributes[kSeriesTitle] ?? '';
  String get title => _attributes[kTitle] ?? '';
  String get dates => _attributes[kDates] ?? '';
  String get liveChannel => _attributes[kLiveChannel] ?? '';
  String get chatRoomChannel => _attributes[kChatRoomChannel] ?? '';
  bool get isCanControl => _attributes[kCanControl] == true;
  bool get isCanTakeControl => _attributes[kCanTakeControl] == true;
  bool get isCanChat => _attributes[kCanChat] == true;
  bool get isCanControlVideoFeed => _attributes[kCanControlVideoFeed] == true;
  
  // typed getters for each relationship
  
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedController<T extends PcoResource>() => (relationships['controller'] as List?)?.cast<T>() ?? [];
  
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedCurrentItemTime<T extends PcoResource>() => (relationships['current_item_time'] as List?)?.cast<T>() ?? [];
  
  List<PcoServicesItem> get includedItems => (relationships['items'] as List?)?.cast<PcoServicesItem>() ?? [];
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedNextItemTime<T extends PcoResource>() => (relationships['next_item_time'] as List?)?.cast<T>() ?? [];
  
  PcoServicesServiceType? get includedServiceType => _firstOrNull<PcoServicesServiceType>(relationships['service_type']);

  // Class Constructors
  PcoServicesLive.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoServicesLive.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesLive] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesLive({String? id, String? seriesTitle, String? title, String? dates, String? liveChannel, String? chatRoomChannel, bool? isCanControl, bool? isCanTakeControl, bool? isCanChat, bool? isCanControlVideoFeed, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesLive.empty();
    obj._id = id;
    if (seriesTitle != null) obj._attributes['series_title'] = seriesTitle;
    if (title != null) obj._attributes['title'] = title;
    if (dates != null) obj._attributes['dates'] = dates;
    if (liveChannel != null) obj._attributes['live_channel'] = liveChannel;
    if (chatRoomChannel != null) obj._attributes['chat_room_channel'] = chatRoomChannel;
    if (isCanControl != null) obj._attributes['can_control'] = isCanControl;
    if (isCanTakeControl != null) obj._attributes['can_take_control'] = isCanTakeControl;
    if (isCanChat != null) obj._attributes['can_chat'] = isCanChat;
    if (isCanControlVideoFeed != null) obj._attributes['can_control_video_feed'] = isCanControlVideoFeed;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class



  /// Will get a collection of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/live`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesLive>> getFromServiceTypeAndPlan(String serviceTypeId,String planId, {String? id, PcoServicesLiveQuery? query, bool includeAll = false, bool includeController = false, bool includeCurrentItemTime = false, bool includeItems = false, bool includeNextItemTime = false, bool includeServiceType = false,}) async {
    query ??= PcoServicesLiveQuery();
    if (includeAll) query.include.addAll(PcoServicesLive.canInclude);
    if (includeController) query.include.add('controller');
    if (includeCurrentItemTime) query.include.add('current_item_time');
    if (includeItems) query.include.add('items');
    if (includeNextItemTime) query.include.add('next_item_time');
    if (includeServiceType) query.include.add('service_type');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/live';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesLive>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/controller`
  Future<PcoCollection<PcoServicesPerson>> getController({PcoServicesPersonQuery? query}) async {
    query ??= PcoServicesPersonQuery();
    var url = '$apiEndpoint/controller';
    return PcoCollection.fromApiCall<PcoServicesPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/current_item_time`
  Future<PcoCollection<PcoServicesItemTime>> getCurrentItemTime({PcoServicesItemTimeQuery? query}) async {
    query ??= PcoServicesItemTimeQuery();
    var url = '$apiEndpoint/current_item_time';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/items`
  Future<PcoCollection<PcoServicesItem>> getItems({PcoServicesItemQuery? query}) async {
    query ??= PcoServicesItemQuery();
    var url = '$apiEndpoint/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/next_item_time`
  Future<PcoCollection<PcoServicesItemTime>> getNextItemTime({PcoServicesItemTimeQuery? query}) async {
    query ??= PcoServicesItemTimeQuery();
    var url = '$apiEndpoint/next_item_time';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/service_type`
  Future<PcoCollection<PcoServicesServiceType>> getServiceType({PcoServicesServiceTypeQuery? query}) async {
    query ??= PcoServicesServiceTypeQuery();
    var url = '$apiEndpoint/service_type';
    return PcoCollection.fromApiCall<PcoServicesServiceType>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/watchable_plans`
  Future<PcoCollection<PcoServicesPlan>> getWatchablePlans({PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
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
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/go_to_next_item`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goToNextItem(Object data) async {
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
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/go_to_previous_item`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> goToPreviousItem(Object data) async {
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
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans/1/live/1/toggle_control`
  /// 
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> toggleControl(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/toggle_control';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
