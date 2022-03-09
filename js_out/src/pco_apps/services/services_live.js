/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.399493
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoServicesLive extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Live';
  static kTypeId = 'live';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'live-plan-live';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live';

  /// possible includes with parameter ?include=a,b
  /// - `controller`: include associated controller 
  /// - `current_item_time`: include associated current_item_time 
  /// - `items`: include associated items 
  /// - `next_item_time`: include associated next_item_time 
  /// - `service_type`: include associated service_type 
  static get canInclude() { return ['controller','current_item_time','items','next_item_time','service_type'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesLive.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesLive.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesLive.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kSeriesTitle() { return 'series_title' }
  static get kTitle() { return 'title' }
  static get kDates() { return 'dates' }
  static get kLiveChannel() { return 'live_channel' }
  static get kChatRoomChannel() { return 'chat_room_channel' }
  static get kCanControl() { return 'can_control' }
  static get kCanTakeControl() { return 'can_take_control' }
  static get kCanChat() { return 'can_chat' }
  static get kCanControlVideoFeed() { return 'can_control_video_feed' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get seriesTitle() { return attributes[this.constructor.kSeriesTitle] ?? ''; }
  get title() { return attributes[this.constructor.kTitle] ?? ''; }
  get dates() { return attributes[this.constructor.kDates] ?? ''; }
  get liveChannel() { return attributes[this.constructor.kLiveChannel] ?? ''; }
  get chatRoomChannel() { return attributes[this.constructor.kChatRoomChannel] ?? ''; }
  get isCanControl() { return attributes[this.constructor.kCanControl] == true; }
  get isCanTakeControl() { return attributes[this.constructor.kCanTakeControl] == true; }
  get isCanChat() { return attributes[this.constructor.kCanChat] == true; }
  get isCanControlVideoFeed() { return attributes[this.constructor.kCanControlVideoFeed] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesLive._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesLive({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesLive] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId,recentPlanId) {
    super(PcoServicesLive.kPcoApplication, PcoServicesLive.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/live`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/live`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/controller`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getController({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPerson.canInclude;
    let url = `${apiEndpoint}/controller`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCurrentItemTime({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let url = `${apiEndpoint}/current_item_time`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/items`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getItems({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    let url = `${apiEndpoint}/items`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getNextItemTime({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let url = `${apiEndpoint}/next_item_time`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesServiceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getServiceType({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    let url = `${apiEndpoint}/service_type`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getWatchablePlans({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    let url = `${apiEndpoint}/watchable_plans`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  goToNextItem(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/go_to_next_item`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `go_to_previous_item`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/go_to_previous_item`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  goToPreviousItem(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/go_to_previous_item`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `toggle_control`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/toggle_control`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  toggleControl(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/toggle_control`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
