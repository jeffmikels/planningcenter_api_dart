/// This file was generated on 2021-11-22T16:57:41.149108


import '../../pco.dart';

/// This class represents a PCO Services Plan Object
/// 
/// Application: services
/// Id:          plan
/// Type:        Plan
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A single plan within a Service Type.
/// 
/// Example:
/// 
/// {"type":"Plan","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","title":"string","updated_at":"2000-01-01T12:00:00Z","public":true,"series_title":"string","plan_notes_count":1,"other_time_count":1,"rehearsal_time_count":1,"service_time_count":1,"plan_people_count":1,"needed_positions_count":1,"items_count":1,"total_length":1,"can_view_order":true,"multi_day":true,"prefers_order_view":true,"rehearsable":true,"files_expire_at":"2000-01-01T12:00:00Z","sort_date":"2000-01-01T12:00:00Z","last_time_at":"2000-01-01T12:00:00Z","permissions":"string","dates":"string","short_dates":"string","planning_center_url":"string","reminders_disabled":true},"relationships":{"service_type":{"data":{"type":"ServiceType","id":"1"}},"next_plan":{"data":{"type":"Plan","id":"1"}},"previous_plan":{"data":{"type":"Plan","id":"1"}},"attachment_types":{"data":[{"type":"AttachmentType","id":"1"}]},"series":{"data":{"type":"Series","id":"1"}},"created_by":{"data":{"type":"Person","id":"1"}},"updated_by":{"data":{"type":"Person","id":"1"}},"linked_publishing_episode":{"data":{"type":"LinkedPublishingEpisode","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/plans
/// 
/// possible includes with parameter ?include=a,b
/// @contributors: include associated contributors 
/// @my_schedules: include associated my_schedules 
/// @plan_times: include associated plan_times 
/// @series: include associated series 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @series_title (URLParameter), query on a specific series_title, example: ?where[series_title]=string
/// @title (URLParameter), query on a specific title, example: ?where[title]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @sort_date (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
/// @title (URLParameter), prefix with a hyphen (-title) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesPlan extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Plan';
  static const String kTypeId = 'plan';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'plan-series-plans';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/series/1/plans';

  /// possible includes with parameter ?include=a,b
  /// @contributors: include associated contributors 
  /// @my_schedules: include associated my_schedules 
  /// @plan_times: include associated plan_times 
  /// @series: include associated series 
  static List<String> get canInclude => ['contributors','my_schedules','plan_times','series'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @series_title (URLParameter), query on a specific series_title, example: ?where[series_title]=string
  /// @title (URLParameter), query on a specific title, example: ?where[title]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','id','series_title','title','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @sort_date (URLParameter), prefix with a hyphen (-sort_date) to reverse the order
  /// @title (URLParameter), prefix with a hyphen (-title) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','sort_date','title','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kTitle = 'title';
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


  // getters and setters
  @override
  List<String> get createAllowed => ['title','public','series_id','series_title'];
  @override
  List<String> get updateAllowed => ['title','public','series_id','series_title','reminders_disabled'];

  String get title => attributes[kTitle] ?? '';

  /// True if Public Access has been enabled.
  bool get isPublic => attributes[kPublic] == true;
  String get seriesTitle => attributes[kSeriesTitle] ?? '';
  int get planNotesCount => attributes[kPlanNotesCount] ?? 0;
  int get otherTimeCount => attributes[kOtherTimeCount] ?? 0;
  int get rehearsalTimeCount => attributes[kRehearsalTimeCount] ?? 0;
  int get serviceTimeCount => attributes[kServiceTimeCount] ?? 0;
  int get planPeopleCount => attributes[kPlanPeopleCount] ?? 0;
  int get neededPositionsCount => attributes[kNeededPositionsCount] ?? 0;

  /// The total number of items, including regular items, songs, media, and headers, that the current user can see in the plan.
  int get itemsCount => attributes[kItemsCount] ?? 0;

  /// The total of length of all items, excluding pre-service and post-service items.
  int get totalLength => attributes[kTotalLength] ?? 0;
  bool get isCanViewOrder => attributes[kCanViewOrder] == true;
  bool get isMultiDay => attributes[kMultiDay] == true;
  bool get isPrefersOrderView => attributes[kPrefersOrderView] == true;
  bool get isRehearsable => attributes[kRehearsable] == true;

  /// A date 15 days after the last service time.
  DateTime get filesExpireAt => DateTime.parse(attributes[kFilesExpireAt] ?? '');

  /// A time representing the chronological first Service Time, used to sort plan chronologically. If no Service Times exist, it uses Rehearsal Times, then Other Times, then NOW.
  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  DateTime get lastTimeAt => DateTime.parse(attributes[kLastTimeAt] ?? '');

  /// The current user's permissions for this plan's Service Type.
  String get permissions => attributes[kPermissions] ?? '';

  /// The full date string representing all Service Time dates.
  String get dates => attributes[kDates] ?? '';

  /// The shortened date string representing all Service Time dates. Months are abbreviated, and the year is omitted.
  String get shortDates => attributes[kShortDates] ?? '';
  String get planningCenterUrl => attributes[kPlanningCenterUrl] ?? '';
  bool get isRemindersDisabled => attributes[kRemindersDisabled] == true;


  set title(String s) => attributes[kTitle] = s;

  /// True if Public Access has been enabled.
  set isPublic(bool b) => attributes[kPublic] = b;
  set seriesTitle(String s) => attributes[kSeriesTitle] = s;
  set isRemindersDisabled(bool b) => attributes[kRemindersDisabled] = b;


  PcoServicesPlan() : super(kPcoApplication, kTypeString);
  PcoServicesPlan.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans;
  static Future<List<PcoServicesPlan>> getManyFromPeopleAndRecentPlanAndLiveAndWatchablePlanIds(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/watchable_plans';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan;
  static Future<List<PcoServicesPlan>> getManyFromServiceTypeAndPlanAndPlanIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan;
  static Future<List<PcoServicesPlan>> getManyFromPeopleAndPlanPeopleAndPlanIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan;
  static Future<List<PcoServicesPlan>> getManyFromServiceTypeAndPlanAndPreviousPlanIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series/1/plans;
  static Future<List<PcoServicesPlan>> getManyFromSeriesAndPlanIds(String seriesId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/series/$seriesId/plans';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans;
  static Future<List<PcoServicesPlan>> getManyFromServiceTypeAndPlanIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlan Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans;
  static Future<List<PcoServicesPlan>> getManyFromServiceTypeAndUnscopedPlanIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlan> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/unscoped_plans';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/watchable_plans;
  static Future<PcoServicesPlan?> getSingleFromPeopleAndRecentPlanAndLiveAndWatchablePlanIds(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/watchable_plans' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan;
  static Future<PcoServicesPlan?> getSingleFromServiceTypeAndPlanAndPlanIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/next_plan' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan;
  static Future<PcoServicesPlan?> getSingleFromPeopleAndPlanPeopleAndPlanIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan;
  static Future<PcoServicesPlan?> getSingleFromServiceTypeAndPlanAndPreviousPlanIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/previous_plan' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series/1/plans;
  static Future<PcoServicesPlan?> getSingleFromSeriesAndPlanIds(String seriesId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/series/$seriesId/plans' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans;
  static Future<PcoServicesPlan?> getSingleFromServiceTypeAndPlanIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesPlan Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans;
  static Future<PcoServicesPlan?> getSingleFromServiceTypeAndUnscopedPlanIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlan?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/unscoped_plans' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlan.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/all_attachments
Future<List<PcoServicesAttachment>> getAttachmentsAllAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/all_attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/attachments
Future<List<PcoServicesAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesAttachment.canInclude;
  List<PcoServicesAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesAttachment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesContributor objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/contributors
Future<List<PcoServicesContributor>> getContributors({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesContributor.canInclude;
  List<PcoServicesContributor> retval = [];
  var url = '$apiEndpoint/contributors';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesContributor.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesItem objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items
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
    
/// will get many PcoServicesLive objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/live
Future<List<PcoServicesLive>> getLives({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesLive.canInclude;
  List<PcoServicesLive> retval = [];
  var url = '$apiEndpoint/live';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesLive.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSchedule objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules
Future<List<PcoServicesSchedule>> getSchedulesMySchedules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSchedule.canInclude;
  List<PcoServicesSchedule> retval = [];
  var url = '$apiEndpoint/my_schedules';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSchedule.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesNeededPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
Future<List<PcoServicesNeededPosition>> getNeededPositions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
  List<PcoServicesNeededPosition> retval = [];
  var url = '$apiEndpoint/needed_positions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesNeededPosition.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/next_plan
Future<List<PcoServicesPlan>> getPlansNextPlan({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/next_plan';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanNote objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/notes
Future<List<PcoServicesPlanNote>> getPlanNotesNotes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanNote.canInclude;
  List<PcoServicesPlanNote> retval = [];
  var url = '$apiEndpoint/notes';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNote.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/plan_times
Future<List<PcoServicesPlanTime>> getPlanTimes({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
  List<PcoServicesPlanTime> retval = [];
  var url = '$apiEndpoint/plan_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanTime.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/previous_plan
Future<List<PcoServicesPlan>> getPlansPreviousPlan({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/previous_plan';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesSeries objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
Future<List<PcoServicesSeries>> getSeries({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesSeries.canInclude;
  List<PcoServicesSeries> retval = [];
  var url = '$apiEndpoint/series';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesSeries.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/signup_teams
Future<List<PcoServicesTeam>> getTeamsSignupTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/signup_teams';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members
Future<List<PcoServicesPlanPerson>> getPlanPersonsTeamMembers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanPerson.canInclude;
  List<PcoServicesPlanPerson> retval = [];
  var url = '$apiEndpoint/team_members';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: import_template
/// Import template to plan
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/import_template
/// 
/// Details:
/// This action allows the importing of a template into a plan.
/// Accepted attributes:
/// - `plan_id` (Integer) ID of template to copying from
/// - `copy_items` (Boolean) Copy Items from another plan. (default false)
/// - `copy_people` (Boolean) Copy People from another plan. (default false)
/// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
/// 
Future<PlanningCenterApiResponse> importTemplate(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/import_template';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: item_reorder
/// Reorder plan items in one request.
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/item_reorder
/// 
/// Details:
/// This can be used to reorder all items in a plan in one request.
/// It expects a `POST` body with a `sequence` of `Item` ids in order.  E.G.
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
/// On success you will get back a `204 No Content`.
/// 
Future<PlanningCenterApiResponse> itemReorder(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/item_reorder';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
