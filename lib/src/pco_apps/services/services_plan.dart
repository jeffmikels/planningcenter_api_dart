/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:29:04.329078
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `sortDate` -> `?order=sort_date`
/// - `title` -> `?order=title`
/// - `updatedAt` -> `?order=updated_at`
enum PcoServicesPlanOrder { createdAt, sortDate, title, updatedAt }

/// Possible Inbound Filters:
/// - `after` -> `?filter=after` : filter to plans with a time beginning after the `after` parameter
/// - `before` -> `?filter=before` : filter to plans with a time beginning before the `before` parameter
/// - `future` -> `?filter=future` : -- no description
/// - `noDates` -> `?filter=no_dates` : -- no description
/// - `past` -> `?filter=past` : -- no description
enum PcoServicesPlanFilter { after, before, future, noDates, past }

/// Creates a [PcoServicesPlanQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeContributors`: include associated contributors 
/// - `includeMySchedules`: include associated my_schedules 
/// - `includePlanTimes`: include associated plan_times 
/// - `includeSeries`: include associated series 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoServicesPlanQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoServicesPlan] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereSeriesTitle`: query on a specific series_title, example: ?where[series_title]=string
/// - `whereTitle`: query on a specific title, example: ?where[title]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
/// 
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoServicesPlanOrder.createdAt` : will order by `created_at`
/// - `PcoServicesPlanOrder.sortDate` : will order by `sort_date`
/// - `PcoServicesPlanOrder.title` : will order by `title`
/// - `PcoServicesPlanOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPlanQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPlanOrder, String> _orderMap = {
    PcoServicesPlanOrder.createdAt: 'created_at',
    PcoServicesPlanOrder.sortDate: 'sort_date',
    PcoServicesPlanOrder.title: 'title',
    PcoServicesPlanOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoServicesPlanOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPlanFilter, String> _filterMap = {
    PcoServicesPlanFilter.after: 'after',
    PcoServicesPlanFilter.before: 'before',
    PcoServicesPlanFilter.future: 'future',
    PcoServicesPlanFilter.noDates: 'no_dates',
    PcoServicesPlanFilter.past: 'past',
  };
  static String filterString(PcoServicesPlanFilter filter) => _filterMap[filter]!;

  PcoServicesPlanQuery({
    /// include associated contributors
    /// when true, adds `?include=contributors` to url
    bool includeContributors = false,
    
    /// include associated my_schedules
    /// when true, adds `?include=my_schedules` to url
    bool includeMySchedules = false,
    
    /// include associated plan_times
    /// when true, adds `?include=plan_times` to url
    bool includePlanTimes = false,
    
    /// include associated series
    /// when true, adds `?include=series` to url
    bool includeSeries = false,
    
    /// when true, adds `?include=contributors,my_schedules,plan_times,series` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,
    
    /// Query by `series_title`
    /// query on a specific series_title, url example: ?where[series_title]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSeriesTitle,
    
    /// Query by `title`
    /// query on a specific title, url example: ?where[title]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereTitle,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoServicesPlanFilter? filterBy,
    PcoServicesPlanOrder? orderBy,


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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeContributors) include.add('contributors');
    if (includeAll || includeMySchedules) include.add('my_schedules');
    if (includeAll || includePlanTimes) include.add('plan_times');
    if (includeAll || includeSeries) include.add('series');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereSeriesTitle != null) where.add(PlanningCenterApiWhere.parse('series_title', whereSeriesTitle));
    if (whereTitle != null) where.add(PlanningCenterApiWhere.parse('title', whereTitle));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

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
/// ## Instantiation
/// - Create a new instance using the `PcoServicesPlan()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesPlan.fromJson()` constructor.
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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans';
  static const String kCreatePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans';

  /// possible includes with parameter ?include=a,b
  /// - `contributors`: include associated contributors 
  /// - `my_schedules`: include associated my_schedules 
  /// - `plan_times`: include associated plan_times 
  /// - `series`: include associated series 
  static List<String> get canInclude => ['contributors','my_schedules','plan_times','series'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `series_title`: (URLParameter), query on a specific series_title, example: ?where[series_title]=string
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','id','series_title','title','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sort_date`: (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
  /// - `title`: (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','sort_date','title','updated_at'];

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
  List<String> get createAllowed => ['title', 'public', 'series_id', 'series_title'];

  @override
  List<String> get updateAllowed => ['title', 'public', 'series_id', 'series_title', 'reminders_disabled'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get title => _attributes[kTitle] ?? '';
  bool get isPublic => _attributes[kPublic] == true;
  String get seriesTitle => _attributes[kSeriesTitle] ?? '';
  int get planNotesCount => _attributes[kPlanNotesCount] ?? 0;
  int get otherTimeCount => _attributes[kOtherTimeCount] ?? 0;
  int get rehearsalTimeCount => _attributes[kRehearsalTimeCount] ?? 0;
  int get serviceTimeCount => _attributes[kServiceTimeCount] ?? 0;
  int get planPeopleCount => _attributes[kPlanPeopleCount] ?? 0;
  int get neededPositionsCount => _attributes[kNeededPositionsCount] ?? 0;
  int get itemsCount => _attributes[kItemsCount] ?? 0;
  int get totalLength => _attributes[kTotalLength] ?? 0;
  bool get isCanViewOrder => _attributes[kCanViewOrder] == true;
  bool get isMultiDay => _attributes[kMultiDay] == true;
  bool get isPrefersOrderView => _attributes[kPrefersOrderView] == true;
  bool get isRehearsable => _attributes[kRehearsable] == true;
  DateTime get filesExpireAt => DateTime.parse(_attributes[kFilesExpireAt] ?? '');
  DateTime get sortDate => DateTime.parse(_attributes[kSortDate] ?? '');
  DateTime get lastTimeAt => DateTime.parse(_attributes[kLastTimeAt] ?? '');
  String get permissions => _attributes[kPermissions] ?? '';
  String get dates => _attributes[kDates] ?? '';
  String get shortDates => _attributes[kShortDates] ?? '';
  String get planningCenterUrl => _attributes[kPlanningCenterUrl] ?? '';
  bool get isRemindersDisabled => _attributes[kRemindersDisabled] == true;
  
  // setters for object attributes
  ///
  /// pass `null` to remove key from attributes
  set title(String? x) => (x == null) ? _attributes.remove(kTitle) : _attributes[kTitle] = x;
  
  /// True if Public Access has been enabled.
  ///
  /// pass `null` to remove key from attributes
  set isPublic(bool? x) => (x == null) ? _attributes.remove(kPublic) : _attributes[kPublic] = x;
  ///
  /// pass `null` to remove key from attributes
  set seriesTitle(String? x) => (x == null) ? _attributes.remove(kSeriesTitle) : _attributes[kSeriesTitle] = x;
  ///
  /// pass `null` to remove key from attributes
  set isRemindersDisabled(bool? x) => (x == null) ? _attributes.remove(kRemindersDisabled) : _attributes[kRemindersDisabled] = x;
  
  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set seriesId(String? x) => (x == null) ? _attributes.remove(kSeriesId) : _attributes[kSeriesId] = x;
  String get seriesId => _attributes[kSeriesId] ?? '';
  
  // typed getters for each relationship
  
  List<PcoServicesContributor> get includedContributors => (relationships['contributors'] as List?)?.cast<PcoServicesContributor>() ?? [];
  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedMySchedules<T extends PcoResource>() => (relationships['my_schedules'] as List?)?.cast<T>() ?? [];
  
  List<PcoServicesPlanTime> get includedPlanTimes => (relationships['plan_times'] as List?)?.cast<PcoServicesPlanTime>() ?? [];
  List<PcoServicesSeries> get includedSeries => (relationships['series'] as List?)?.cast<PcoServicesSeries>() ?? [];

  // Class Constructors
  PcoServicesPlan.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoServicesPlan.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPlan] object using this endpoint: `https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans`
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `title`, `isPublic`, `seriesId`, `seriesTitle`
  /// - FIELDS USED WHEN UPDATING: `title`, `isPublic`, `seriesId`, `seriesTitle`, `isRemindersDisabled`
  factory PcoServicesPlan({required String serviceTypeId, String? id, DateTime? createdAt, String? title, DateTime? updatedAt, bool? isPublic, String? seriesTitle, int? planNotesCount, int? otherTimeCount, int? rehearsalTimeCount, int? serviceTimeCount, int? planPeopleCount, int? neededPositionsCount, int? itemsCount, int? totalLength, bool? isCanViewOrder, bool? isMultiDay, bool? isPrefersOrderView, bool? isRehearsable, DateTime? filesExpireAt, DateTime? sortDate, DateTime? lastTimeAt, String? permissions, String? dates, String? shortDates, String? planningCenterUrl, bool? isRemindersDisabled, String? seriesId, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoServicesPlan.empty();
    obj._id = id;
    obj._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/service_types/$serviceTypeId/plans';
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (title != null) obj._attributes['title'] = title;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (isPublic != null) obj._attributes['public'] = isPublic;
    if (seriesTitle != null) obj._attributes['series_title'] = seriesTitle;
    if (planNotesCount != null) obj._attributes['plan_notes_count'] = planNotesCount;
    if (otherTimeCount != null) obj._attributes['other_time_count'] = otherTimeCount;
    if (rehearsalTimeCount != null) obj._attributes['rehearsal_time_count'] = rehearsalTimeCount;
    if (serviceTimeCount != null) obj._attributes['service_time_count'] = serviceTimeCount;
    if (planPeopleCount != null) obj._attributes['plan_people_count'] = planPeopleCount;
    if (neededPositionsCount != null) obj._attributes['needed_positions_count'] = neededPositionsCount;
    if (itemsCount != null) obj._attributes['items_count'] = itemsCount;
    if (totalLength != null) obj._attributes['total_length'] = totalLength;
    if (isCanViewOrder != null) obj._attributes['can_view_order'] = isCanViewOrder;
    if (isMultiDay != null) obj._attributes['multi_day'] = isMultiDay;
    if (isPrefersOrderView != null) obj._attributes['prefers_order_view'] = isPrefersOrderView;
    if (isRehearsable != null) obj._attributes['rehearsable'] = isRehearsable;
    if (filesExpireAt != null) obj._attributes['files_expire_at'] = filesExpireAt.toIso8601String();
    if (sortDate != null) obj._attributes['sort_date'] = sortDate.toIso8601String();
    if (lastTimeAt != null) obj._attributes['last_time_at'] = lastTimeAt.toIso8601String();
    if (permissions != null) obj._attributes['permissions'] = permissions;
    if (dates != null) obj._attributes['dates'] = dates;
    if (shortDates != null) obj._attributes['short_dates'] = shortDates;
    if (planningCenterUrl != null) obj._attributes['planning_center_url'] = planningCenterUrl;
    if (isRemindersDisabled != null) obj._attributes['reminders_disabled'] = isRemindersDisabled;
    if (seriesId != null) obj._attributes['series_id'] = seriesId;

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



  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/recent_plans/$recentPlanId/live/$liveId/watchable_plans`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getWatchablePlansFromPersonAndRecentPlanAndLive(String personId,String recentPlanId,String liveId, {PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/people/$personId/recent_plans/$recentPlanId/live/$liveId/watchable_plans';
    
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getNextPlanFromServiceTypeAndPlan(String serviceTypeId,String planId, {PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan';
    
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/people/$personId/plan_people/$planPersonId/plan`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getFromPersonAndPlanPerson(String personId,String planPersonId, {PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/people/$personId/plan_people/$planPersonId/plan';
    
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getPreviousPlanFromServiceTypeAndPlan(String serviceTypeId,String planId, {PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan';
    
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `/services/v2/series/$seriesId/plans`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getFromSeries(String seriesId, {String? id, PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/series/$seriesId/plans';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
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
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getFromServiceType(String serviceTypeId, {String? id, PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/service_types/$serviceTypeId/plans';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/unscoped_plans`
  /// 
  /// Available Query Filters:
  /// - `deleted`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPlan>> getUnscopedPlansFromServiceType(String serviceTypeId, {PcoServicesPlanQuery? query, bool includeAll = false, bool includeContributors = false, bool includeMySchedules = false, bool includePlanTimes = false, bool includeSeries = false,}) async {
    query ??= PcoServicesPlanQuery();
    if (includeAll) query.include.addAll(PcoServicesPlan.canInclude);
    if (includeContributors) query.include.add('contributors');
    if (includeMySchedules) query.include.add('my_schedules');
    if (includePlanTimes) query.include.add('plan_times');
    if (includeSeries) query.include.add('series');
    var url = '/services/v2/service_types/$serviceTypeId/unscoped_plans';
    
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
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
  Future<PcoCollection<PcoServicesAttachment>> getAllAttachments({PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/all_attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesAttachment] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments`
  Future<PcoCollection<PcoServicesAttachment>> getAttachments({PcoServicesAttachmentQuery? query}) async {
    query ??= PcoServicesAttachmentQuery();
    var url = '$apiEndpoint/attachments';
    return PcoCollection.fromApiCall<PcoServicesAttachment>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesContributor] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors`
  Future<PcoCollection<PcoServicesContributor>> getContributors({PcoServicesContributorQuery? query}) async {
    query ??= PcoServicesContributorQuery();
    var url = '$apiEndpoint/contributors';
    return PcoCollection.fromApiCall<PcoServicesContributor>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesItem] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items`
  Future<PcoCollection<PcoServicesItem>> getItems({PcoServicesItemQuery? query}) async {
    query ??= PcoServicesItemQuery();
    var url = '$apiEndpoint/items';
    return PcoCollection.fromApiCall<PcoServicesItem>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesLive] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live`
  Future<PcoCollection<PcoServicesLive>> getLive({PcoServicesLiveQuery? query}) async {
    query ??= PcoServicesLiveQuery();
    var url = '$apiEndpoint/live';
    return PcoCollection.fromApiCall<PcoServicesLive>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSchedule] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules`
  Future<PcoCollection<PcoServicesSchedule>> getMySchedules({PcoServicesScheduleQuery? query}) async {
    query ??= PcoServicesScheduleQuery();
    var url = '$apiEndpoint/my_schedules';
    return PcoCollection.fromApiCall<PcoServicesSchedule>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions`
  Future<PcoCollection<PcoServicesNeededPosition>> getNeededPositions({PcoServicesNeededPositionQuery? query}) async {
    query ??= PcoServicesNeededPositionQuery();
    var url = '$apiEndpoint/needed_positions';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan`
  Future<PcoCollection<PcoServicesPlan>> getNextPlan({PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/next_plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanNote] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes`
  Future<PcoCollection<PcoServicesPlanNote>> getNotes({PcoServicesPlanNoteQuery? query}) async {
    query ??= PcoServicesPlanNoteQuery();
    var url = '$apiEndpoint/notes';
    return PcoCollection.fromApiCall<PcoServicesPlanNote>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times`
  Future<PcoCollection<PcoServicesPlanTime>> getPlanTimes({PcoServicesPlanTimeQuery? query}) async {
    query ??= PcoServicesPlanTimeQuery();
    var url = '$apiEndpoint/plan_times';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlan] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan`
  Future<PcoCollection<PcoServicesPlan>> getPreviousPlan({PcoServicesPlanQuery? query}) async {
    query ??= PcoServicesPlanQuery();
    var url = '$apiEndpoint/previous_plan';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesSeries] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series`
  Future<PcoCollection<PcoServicesSeries>> getSeries({PcoServicesSeriesQuery? query}) async {
    query ??= PcoServicesSeriesQuery();
    var url = '$apiEndpoint/series';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesTeam] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams`
  Future<PcoCollection<PcoServicesTeam>> getSignupTeams({PcoServicesTeamQuery? query}) async {
    query ??= PcoServicesTeamQuery();
    var url = '$apiEndpoint/signup_teams';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members`
  /// 
  /// Available Query Filters:
  /// - `confirmed`
  /// - `not_archived`
  /// - `not_deleted`
  Future<PcoCollection<PcoServicesPlanPerson>> getTeamMembers({PcoServicesPlanPersonQuery? query}) async {
    query ??= PcoServicesPlanPersonQuery();
    var url = '$apiEndpoint/team_members';
    return PcoCollection.fromApiCall<PcoServicesPlanPerson>(url, query: query, apiVersion: apiVersion);
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
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
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
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
