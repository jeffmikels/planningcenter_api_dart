/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.382107
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services ItemTime Object
/// 
/// - Application:        services
/// - Id:                 item_time
/// - Type:               ItemTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "ItemTime",
///   "id": "1",
///   "attributes": {
///     "live_start_at": "2000-01-01T12:00:00Z",
///     "live_end_at": "2000-01-01T12:00:00Z",
///     "exclude": true,
///     "length": 1,
///     "length_offset": 1
///   },
///   "relationships": {
///     "item": {
///       "data": {
///         "type": "Item",
///         "id": "1"
///       }
///     },
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `itemtime-item-item_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times
/// - `itemtime-live-current_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time
/// - `itemtime-live-next_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time
/// 
/// All Actions:
/// NONE
///
export class PcoServicesItemTime extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'ItemTime';
  static kTypeId = 'item_time';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesItemTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesItemTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesItemTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kLiveStartAt() { return 'live_start_at' }
  static get kLiveEndAt() { return 'live_end_at' }
  static get kExclude() { return 'exclude' }
  static get kLength() { return 'length' }
  static get kLengthOffset() { return 'length_offset' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get liveStartAt() { return Date.parse(attributes[this.constructor.kLiveStartAt] ?? 0); }
  get liveEndAt() { return Date.parse(attributes[this.constructor.kLiveEndAt] ?? 0); }
  get isExclude() { return attributes[this.constructor.kExclude] == true; }
  get length() { return attributes[this.constructor.kLength] ?? 0; }
  get lengthOffset() { return attributes[this.constructor.kLengthOffset] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesItemTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesItemTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/item_times`
  static getFromServiceTypeAndPlanAndItem(serviceTypeId, planId, itemId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/items/${itemId}/item_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/current_item_time`
  static getCurrentItemTimeFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/current_item_time`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/next_item_time`
  static getNextItemTimeFromPeopleAndRecentPlanAndLive(peopleId, recentPlanId, liveId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/recent_plans/${recentPlanId}/live/${liveId}/next_item_time`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
