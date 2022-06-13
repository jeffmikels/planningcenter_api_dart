/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.608719
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services ItemTime Object
///
/// - Application:        services
/// - Id:                 item_time
/// - Type:               ItemTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `liveStartAt` (ro) -> PCO: `live_start_at`
/// - `liveEndAt` (ro) -> PCO: `live_end_at`
/// - `isExclude` (ro) -> PCO: `exclude`
/// - `length` (ro) -> PCO: `length`
/// - `lengthOffset` (ro) -> PCO: `length_offset`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `itemtime-item-item_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/item_times
/// - `itemtime-live-current_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/current_item_time
/// - `itemtime-live-next_item_time`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/next_item_time
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesItemTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ItemTime';
  static const String kTypeId = 'item_time';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/item_times';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

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

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  DateTime get liveStartAt => DateTime.parse(attributes[kLiveStartAt] ?? '');
  DateTime get liveEndAt => DateTime.parse(attributes[kLiveEndAt] ?? '');
  bool get isExclude => attributes[kExclude] == true;
  int get length => attributes[kLength] ?? 0;
  int get lengthOffset => attributes[kLengthOffset] ?? 0;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoServicesItemTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesItemTime.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesItemTime] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times`
  static Future<PcoCollection<PcoServicesItemTime>>
      getFromServiceTypeAndPlanAndItem(
          String serviceTypeId, String planId, String itemId,
          {String? id,
          PlanningCenterApiQuery? query,
          bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/item_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/current_item_time`
  static Future<PcoCollection<PcoServicesItemTime>>
      getCurrentItemTimeFromPeopleAndRecentPlanAndLive(
          String peopleId, String recentPlanId, String liveId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url =
        '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/current_item_time';

    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesItemTime] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/next_item_time`
  static Future<PcoCollection<PcoServicesItemTime>>
      getNextItemTimeFromPeopleAndRecentPlanAndLive(
          String peopleId, String recentPlanId, String liveId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItemTime.canInclude;
    var url =
        '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/next_item_time';

    return PcoCollection.fromApiCall<PcoServicesItemTime>(url,
        query: query, apiVersion: kApiVersion);
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
