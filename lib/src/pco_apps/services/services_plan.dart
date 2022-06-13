/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.521810
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services Plan Object
///
/// - Application:        services
/// - Id:                 plan
/// - Type:               Plan
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/service_types/1/plans
///
/// ## Description
/// A single plan within a Service Type.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `title` (rw) -> PCO: `title`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isPublic` (rw) -> PCO: `public`
/// - `seriesTitle` (rw) -> PCO: `series_title`
/// - `planNotesCount` (ro) -> PCO: `plan_notes_count`
/// - `otherTimeCount` (ro) -> PCO: `other_time_count`
/// - `rehearsalTimeCount` (ro) -> PCO: `rehearsal_time_count`
/// - `serviceTimeCount` (ro) -> PCO: `service_time_count`
/// - `planPeopleCount` (ro) -> PCO: `plan_people_count`
/// - `neededPositionsCount` (ro) -> PCO: `needed_positions_count`
/// - `itemsCount` (ro) -> PCO: `items_count`
/// - `totalLength` (ro) -> PCO: `total_length`
/// - `isCanViewOrder` (ro) -> PCO: `can_view_order`
/// - `isMultiDay` (ro) -> PCO: `multi_day`
/// - `isPrefersOrderView` (ro) -> PCO: `prefers_order_view`
/// - `isRehearsable` (ro) -> PCO: `rehearsable`
/// - `filesExpireAt` (ro) -> PCO: `files_expire_at`
/// - `sortDate` (ro) -> PCO: `sort_date`
/// - `lastTimeAt` (ro) -> PCO: `last_time_at`
/// - `permissions` (ro) -> PCO: `permissions`
/// - `dates` (ro) -> PCO: `dates`
/// - `shortDates` (ro) -> PCO: `short_dates`
/// - `planningCenterUrl` (ro) -> PCO: `planning_center_url`
/// - `isRemindersDisabled` (rw) -> PCO: `reminders_disabled`
/// - `seriesId` (wo) -> PCO: `series_id`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `contributors`: include associated contributors
/// - `my_schedules`: include associated my_schedules
/// - `plan_times`: include associated plan_times
/// - `series`: include associated series
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `series_title`: (URLParameter), query on a specific series_title, example: ?where[series_title]=string
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `sort_date`: (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
/// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attachment-plan-all_attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
/// - `attachment-plan-attachments`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments
/// - `contributor-plan-contributors`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors
/// - `item-plan-items`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
/// - `live-plan-live`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live
/// - `schedule-plan-my_schedules`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules
/// - `neededposition-plan-needed_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
/// - `plan-plan-next_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan
/// - `plannote-plan-notes`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
/// - `plantime-plan-plan_times`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times
/// - `plan-plan-previous_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan
/// - `series-plan-series`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
/// - `team-plan-signup_teams`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
/// - `planperson-plan-team_members`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
///
/// Inbound Edges:
/// - `plan-live-watchable_plans`: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans
/// - `plan-plan-next_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan
/// - `plan-planperson-plan`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
/// - `plan-plan-previous_plan`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan
/// - `plan-series-plans`: https://api.planningcenteronline.com/services/v2/series/1/plans
/// - `plan-servicetype-plans`: https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// - `plan-servicetype-unscoped_plans`: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans
///
/// Actions:
/// - `import_template`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/import_template
/// - `item_reorder`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/item_reorder
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Plan",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "title": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "public": true,
///     "series_title": "string",
///     "plan_notes_count": 1,
///     "other_time_count": 1,
///     "rehearsal_time_count": 1,
///     "service_time_count": 1,
///     "plan_people_count": 1,
///     "needed_positions_count": 1,
///     "items_count": 1,
///     "total_length": 1,
///     "can_view_order": true,
///     "multi_day": true,
///     "prefers_order_view": true,
///     "rehearsable": true,
///     "files_expire_at": "2000-01-01T12:00:00Z",
///     "sort_date": "2000-01-01T12:00:00Z",
///     "last_time_at": "2000-01-01T12:00:00Z",
///     "permissions": "string",
///     "dates": "string",
///     "short_dates": "string",
///     "planning_center_url": "string",
///     "reminders_disabled": true
///   },
///   "relationships": {
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     },
///     "next_plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "previous_plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "attachment_types": {
///       "data": [
///         {
///           "type": "AttachmentType",
///           "id": "1"
///         }
///       ]
///     },
///     "series": {
///       "data": {
///         "type": "Series",
///         "id": "1"
///       }
///     },
///     "created_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "updated_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "linked_publishing_episode": {
///       "data": {
///         "type": "LinkedPublishingEpisode",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlan extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Plan';
  static const String kTypeId = 'plan';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/plans';

  /// possible includes with parameter ?include=a,b
  /// - `contributors`: include associated contributors
  /// - `my_schedules`: include associated my_schedules
  /// - `plan_times`: include associated plan_times
  /// - `series`: include associated series
  static List<String> get canInclude =>
      ['contributors', 'my_schedules', 'plan_times', 'series'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `series_title`: (URLParameter), query on a specific series_title, example: ?where[series_title]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'id', 'series_title', 'title', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sort_date`: (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy =>
      ['created_at', 'sort_date', 'title', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kTitle = 'title';
  static const kUpdatedAt = 'updated_at';
  static const kPublic = 'public';
  static const kSeriesTitle = 'series_title';
  static const kPlanNotesCount = 'plan_notes_count';
  static const kOtherTimeCount = 'other_time_count';
  static const kRehearsalTimeCount = 'rehearsal_time_count';
  static const kServiceTimeCount = 'service_time_count';
  static const kPlanPeopleCount = 'plan_people_count';
  static const kNeededPositionsCount = 'needed_positions_count';
  static const kItemsCount = 'items_count';
  static const kTotalLength = 'total_length';
  static const kCanViewOrder = 'can_view_order';
  static const kMultiDay = 'multi_day';
  static const kPrefersOrderView = 'prefers_order_view';
  static const kRehearsable = 'rehearsable';
  static const kFilesExpireAt = 'files_expire_at';
  static const kSortDate = 'sort_date';
  static const kLastTimeAt = 'last_time_at';
  static const kPermissions = 'permissions';
  static const kDates = 'dates';
  static const kShortDates = 'short_dates';
  static const kPlanningCenterUrl = 'planning_center_url';
  static const kRemindersDisabled = 'reminders_disabled';
  static const kSeriesId = 'series_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['title', 'public', 'series_id', 'series_title'];

  @override
  List<String> get updateAllowed =>
      ['title', 'public', 'series_id', 'series_title', 'reminders_disabled'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get title => attributes[kTitle] ?? '';
  bool get isPublic => attributes[kPublic] == true;
  String get seriesTitle => attributes[kSeriesTitle] ?? '';
  int get planNotesCount => attributes[kPlanNotesCount] ?? 0;
  int get otherTimeCount => attributes[kOtherTimeCount] ?? 0;
  int get rehearsalTimeCount => attributes[kRehearsalTimeCount] ?? 0;
  int get serviceTimeCount => attributes[kServiceTimeCount] ?? 0;
  int get planPeopleCount => attributes[kPlanPeopleCount] ?? 0;
  int get neededPositionsCount => attributes[kNeededPositionsCount] ?? 0;
  int get itemsCount => attributes[kItemsCount] ?? 0;
  int get totalLength => attributes[kTotalLength] ?? 0;
  bool get isCanViewOrder => attributes[kCanViewOrder] == true;
  bool get isMultiDay => attributes[kMultiDay] == true;
  bool get isPrefersOrderView => attributes[kPrefersOrderView] == true;
  bool get isRehearsable => attributes[kRehearsable] == true;
  DateTime get filesExpireAt =>
      DateTime.parse(attributes[kFilesExpireAt] ?? '');
  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  DateTime get lastTimeAt => DateTime.parse(attributes[kLastTimeAt] ?? '');
  String get permissions => attributes[kPermissions] ?? '';
  String get dates => attributes[kDates] ?? '';
  String get shortDates => attributes[kShortDates] ?? '';
  String get planningCenterUrl => attributes[kPlanningCenterUrl] ?? '';
  bool get isRemindersDisabled => attributes[kRemindersDisabled] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set title(String? x) =>
      (x == null) ? attributes.remove(kTitle) : attributes[kTitle] = x;

  /// True if Public Access has been enabled.

  /// pass `null` to remove key from attributes
  set isPublic(bool? x) =>
      (x == null) ? attributes.remove(kPublic) : attributes[kPublic] = x;

  /// pass `null` to remove key from attributes
  set seriesTitle(String? x) => (x == null)
      ? attributes.remove(kSeriesTitle)
      : attributes[kSeriesTitle] = x;

  /// pass `null` to remove key from attributes
  set isRemindersDisabled(bool? x) => (x == null)
      ? attributes.remove(kRemindersDisabled)
      : attributes[kRemindersDisabled] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set seriesId(String? x) =>
      (x == null) ? attributes.remove(kSeriesId) : attributes[kSeriesId] = x;
  String get seriesId => attributes[kSeriesId] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedContributors<T extends PcoResource>() =>
      relationships['contributors']?.cast<T>() ?? [];
  List<T> includedMySchedules<T extends PcoResource>() =>
      relationships['my_schedules']?.cast<T>() ?? [];
  List<T> includedPlanTimes<T extends PcoResource>() =>
      relationships['plan_times']?.cast<T>() ?? [];
  List<T> includedSeries<T extends PcoResource>() =>
      relationships['series']?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesPlan.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesPlan.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlan] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesPlan(String serviceTypeId,
      {String? title, bool? isPublic, String? seriesTitle}) {
    var obj = PcoServicesPlan.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans';
    if (title != null) obj.title = title;
    if (isPublic != null) obj.isPublic = isPublic;
    if (seriesTitle != null) obj.seriesTitle = seriesTitle;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/watchable_plans`
  static Future<PcoCollection<PcoServicesPlan>>
      getWatchablePlansFromPeopleAndRecentPlanAndLive(
          String peopleId, String recentPlanId, String liveId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url =
        '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/watchable_plans';

    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan`
  static Future<PcoCollection<PcoServicesPlan>>
      getNextPlanFromServiceTypeAndPlan(String serviceTypeId, String planId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan';

    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/plan_people/$planPeopleId/plan`
  static Future<PcoCollection<PcoServicesPlan>> getFromPeopleAndPlanPeople(
      String peopleId, String planPeopleId,
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan';

    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan`
  static Future<PcoCollection<PcoServicesPlan>>
      getPreviousPlanFromServiceTypeAndPlan(String serviceTypeId, String planId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url =
        '/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan';

    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `/services/v2/series/$seriesId/plans`
  static Future<PcoCollection<PcoServicesPlan>> getFromSeries(String seriesId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/series/$seriesId/plans';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans`
  ///
  /// Available Query Filters:
  /// - `after`
  /// filter to plans with a time beginning after the `after` parameter
  ///
  /// - `before`
  /// filter to plans with a time beginning before the `before` parameter
  ///
  /// - `future`
  /// - `no_dates`
  /// - `past`
  static Future<PcoCollection<PcoServicesPlan>> getFromServiceType(
      String serviceTypeId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/unscoped_plans`
  ///
  /// Available Query Filters:
  /// - `deleted`
  static Future<PcoCollection<PcoServicesPlan>> getUnscopedPlansFromServiceType(
      String serviceTypeId,
      {PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/unscoped_plans';

    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments`
  ///
  /// Available Query Filters:
  /// - `attachable_type`
  /// filter attachments by their attachable_type as specified in the `attachable_type` parameter.
  /// Default: `["ServiceType", "Plan", "Item", "Media", "Song", "Arrangement", "Key"]`.
  /// e.g. `?filter=attachable_type&attachable_type=Plan,ServiceType`
  ///
  /// - `extensions`
  /// filter to attachments with a file extension specified in the `extensions` parameter.
  /// e.g. `?filter=extensions&extensions=pdf,txt`
  ///
  Future<PcoCollection<PcoServicesAttachment>> getAllAttachments(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/all_attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAttachment.canInclude;
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesContributor] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors`
  Future<PcoCollection<PcoServicesContributor>> getContributors(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesContributor.canInclude;
    var url = '$apiEndpoint/contributors';
    return PcoCollection.fromApiCall<PcoServicesContributor>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items`
  Future<PcoCollection<PcoServicesItem>> getItems(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesItem.canInclude;
    var url = '$apiEndpoint/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live`
  Future<PcoCollection<PcoServicesLive>> getLive(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLive.canInclude;
    var url = '$apiEndpoint/live';
    return PcoCollection.fromApiCall<PcoServicesLive>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules`
  Future<PcoCollection<PcoServicesSchedule>> getMySchedules(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSchedule.canInclude;
    var url = '$apiEndpoint/my_schedules';
    return PcoCollection.fromApiCall<PcoServicesSchedule>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions`
  Future<PcoCollection<PcoServicesNeededPosition>> getNeededPositions(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    var url = '$apiEndpoint/needed_positions';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan`
  Future<PcoCollection<PcoServicesPlan>> getNextPlan(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '$apiEndpoint/next_plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes`
  Future<PcoCollection<PcoServicesPlanNote>> getNotes(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan`
  Future<PcoCollection<PcoServicesPlan>> getPreviousPlan(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '$apiEndpoint/previous_plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSeries] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series`
  Future<PcoCollection<PcoServicesSeries>> getSeries(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '$apiEndpoint/series';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams`
  Future<PcoCollection<PcoServicesTeam>> getSignupTeams(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/signup_teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members`
  ///
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesPlanPerson>> getTeamMembers(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
    var url = '$apiEndpoint/team_members';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `import_template`
  ///
  /// Import template to plan
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/import_template`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This action allows the importing of a template into a plan.
  ///
  /// Accepted attributes:
  /// - `plan_id` (Integer) ID of template to copying from
  ///
  /// - `copy_items` (Boolean) Copy Items from another plan. (default false)
  ///
  /// - `copy_people` (Boolean) Copy People from another plan. (default false)
  ///
  /// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
  Future<PlanningCenterApiResponse> importTemplate(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/import_template';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `item_reorder`
  ///
  /// Reorder plan items in one request.
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/item_reorder`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// This can be used to reorder all items in a plan in one request.
  ///
  /// It expects a `POST` body with a `sequence` of `Item` ids in order.  E.G.
  ///
  /// ```json
  /// {
  ///   "data": {
  ///     "type": "PlanItemReorder",
  ///     "attributes": {
  ///       "sequence": [
  ///         "5",
  ///         "1",
  ///         "3"
  ///       ]
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// On success you will get back a `204 No Content`.
  Future<PlanningCenterApiResponse> itemReorder(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/item_reorder';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
