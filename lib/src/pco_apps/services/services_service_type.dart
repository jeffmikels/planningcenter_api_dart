/// This file was generated on 2021-11-22T16:57:41.201691


import '../../pco.dart';

/// This class represents a PCO Services ServiceType Object
/// 
/// Application: services
/// Id:          service_type
/// Type:        ServiceType
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Service Type is a container for plans.
/// 
/// Example:
/// 
/// {"type":"ServiceType","id":"1","attributes":{"archived_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z","deleted_at":"2000-01-01T12:00:00Z","name":"string","sequence":1,"updated_at":"2000-01-01T12:00:00Z","attachment_types_enabled":true,"background_check_permissions":"string","comment_permissions":"string","custom_item_types":"string","frequency":"string","last_plan_from":"string","permissions":"string","standard_item_types":"string"},"relationships":{"parent":{"data":{"type":"Folder","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types
/// 
/// possible includes with parameter ?include=a,b
/// @time_preference_options: include associated time_preference_options 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
///
class PcoServicesServiceType extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'ServiceType';
  static const String kTypeId = 'service_type';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'servicetype-organization-service_types';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types';

  /// possible includes with parameter ?include=a,b
  /// @time_preference_options: include associated time_preference_options 
  static List<String> get canInclude => ['time_preference_options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id','name'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  static List<String> get canOrderBy => ['name','sequence'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kArchivedAt = 'archived_at';
  static const kDeletedAt = 'deleted_at';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kAttachmentTypesEnabled = 'attachment_types_enabled';
  static const kBackgroundCheckPermissions = 'background_check_permissions';
  static const kCommentPermissions = 'comment_permissions';
  static const kCustomItemTypes = 'custom_item_types';
  static const kFrequency = 'frequency';
  static const kLastPlanFrom = 'last_plan_from';
  static const kPermissions = 'permissions';
  static const kStandardItemTypes = 'standard_item_types';


  // getters and setters
  @override
  List<String> get createAllowed => ['attachment_types_enabled','background_check_permissions','comment_permissions','custom_item_types','frequency','last_plan_from','name','parent_id','sequence','standard_item_types'];
  @override
  List<String> get updateAllowed => ['attachment_types_enabled','background_check_permissions','comment_permissions','custom_item_types','frequency','last_plan_from','name','parent_id','sequence','standard_item_types'];

  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  bool get isAttachmentTypesEnabled => attributes[kAttachmentTypesEnabled] == true;
  String get backgroundCheckPermissions => attributes[kBackgroundCheckPermissions] ?? '';
  String get commentPermissions => attributes[kCommentPermissions] ?? '';

  /// A array of hashes that maps an item title substring matcher to a color:
  ///[{ name: "Announcements", color: "#FFFFFF" }]
  ///Valid substring matchers are any string that could be used as an item title.
  ///A color is the hexadecimal value of a valid color e.g. #FFFFFF
  ///Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  String get customItemTypes => attributes[kCustomItemTypes] ?? '';
  String get frequency => attributes[kFrequency] ?? '';
  String get lastPlanFrom => attributes[kLastPlanFrom] ?? '';
  String get permissions => attributes[kPermissions] ?? '';

  /// An array of hashes that maps an item type to a color:
  ///[{ name: "Header", color: "#FFFFFF" }]
  ///Valid names are Header, Song, and Media.
  ///A color is the hexadecimal value of a valid color e.g. #FFFFFF
  ///Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  String get standardItemTypes => attributes[kStandardItemTypes] ?? '';


  set name(String s) => attributes[kName] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set isAttachmentTypesEnabled(bool b) => attributes[kAttachmentTypesEnabled] = b;
  set backgroundCheckPermissions(String s) => attributes[kBackgroundCheckPermissions] = s;
  set commentPermissions(String s) => attributes[kCommentPermissions] = s;

  /// A array of hashes that maps an item title substring matcher to a color:
  ///[{ name: "Announcements", color: "#FFFFFF" }]
  ///Valid substring matchers are any string that could be used as an item title.
  ///A color is the hexadecimal value of a valid color e.g. #FFFFFF
  ///Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  set customItemTypes(String s) => attributes[kCustomItemTypes] = s;
  set frequency(String s) => attributes[kFrequency] = s;
  set lastPlanFrom(String s) => attributes[kLastPlanFrom] = s;

  /// An array of hashes that maps an item type to a color:
  ///[{ name: "Header", color: "#FFFFFF" }]
  ///Valid names are Header, Song, and Media.
  ///A color is the hexadecimal value of a valid color e.g. #FFFFFF
  ///Valid colors values are #e8f6df, #e0f7ff, #e6e2fd, #ffe0e8, #ffedd1, #cfcfcf, #eaebeb, and #ffffff
  set standardItemTypes(String s) => attributes[kStandardItemTypes] = s;


  PcoServicesServiceType() : super(kPcoApplication, kTypeString);
  PcoServicesServiceType.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesServiceType Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/service_types;
  static Future<List<PcoServicesServiceType>> getManyFromFolderAndServiceTypeIds(String folderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesServiceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/folders/$folderId/service_types';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesServiceType Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type;
  static Future<List<PcoServicesServiceType>> getManyFromPeopleAndRecentPlanAndLiveAndServiceTypeIds(String peopleId,String recentPlanId,String liveId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesServiceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/service_type';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesServiceType Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types;
  static Future<List<PcoServicesServiceType>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesServiceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/service_types';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesServiceType Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/service_type;
  static Future<List<PcoServicesServiceType>> getManyFromTeamAndServiceTypeIds(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesServiceType> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/teams/$teamId/service_type';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesServiceType.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesServiceType Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/folders/1/service_types;
  static Future<PcoServicesServiceType?> getSingleFromFolderAndServiceTypeIds(String folderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesServiceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/folders/$folderId/service_types' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesServiceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesServiceType Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/recent_plans/1/live/1/service_type;
  static Future<PcoServicesServiceType?> getSingleFromPeopleAndRecentPlanAndLiveAndServiceTypeIds(String peopleId,String recentPlanId,String liveId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesServiceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/people/$peopleId/recent_plans/$recentPlanId/live/$liveId/service_type' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesServiceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesServiceType Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types;
  static Future<PcoServicesServiceType?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesServiceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/service_types' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesServiceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesServiceType Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/service_type;
  static Future<PcoServicesServiceType?> getSingleFromTeamAndServiceTypeIds(String teamId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesServiceType?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesServiceType.canInclude;
    var url = '/services/v2/teams/$teamId/service_type' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesServiceType.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesAttachment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/attachments
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
    
/// will get many PcoServicesItemNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/item_note_categories
Future<List<PcoServicesItemNoteCategory>> getItemNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesItemNoteCategory.canInclude;
  List<PcoServicesItemNoteCategory> retval = [];
  var url = '$apiEndpoint/item_note_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesItemNoteCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesLayout objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/layouts
Future<List<PcoServicesLayout>> getLayouts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesLayout.canInclude;
  List<PcoServicesLayout> retval = [];
  var url = '$apiEndpoint/layouts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesLayout.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesLiveController objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
Future<List<PcoServicesLiveController>> getLiveControllers({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesLiveController.canInclude;
  List<PcoServicesLiveController> retval = [];
  var url = '$apiEndpoint/live_controllers';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesLiveController.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanNoteCategory objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_note_categories
Future<List<PcoServicesPlanNoteCategory>> getPlanNoteCategories({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanNoteCategory.canInclude;
  List<PcoServicesPlanNoteCategory> retval = [];
  var url = '$apiEndpoint/plan_note_categories';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanNoteCategory.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTemplate objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_templates
Future<List<PcoServicesPlanTemplate>> getPlanTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanTemplate.canInclude;
  List<PcoServicesPlanTemplate> retval = [];
  var url = '$apiEndpoint/plan_templates';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanTemplate.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plan_times
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
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans
Future<List<PcoServicesPlan>> getPlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPublicView objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
Future<List<PcoServicesPublicView>> getPublicViews({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPublicView.canInclude;
  List<PcoServicesPublicView> retval = [];
  var url = '$apiEndpoint/public_view';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPublicView.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeamPosition objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
Future<List<PcoServicesTeamPosition>> getTeamPositions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
  List<PcoServicesTeamPosition> retval = [];
  var url = '$apiEndpoint/team_positions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeamPosition.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/teams
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/teams';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTimePreferenceOption objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
Future<List<PcoServicesTimePreferenceOption>> getTimePreferenceOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTimePreferenceOption.canInclude;
  List<PcoServicesTimePreferenceOption> retval = [];
  var url = '$apiEndpoint/time_preference_options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTimePreferenceOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/unscoped_plans
Future<List<PcoServicesPlan>> getPlansUnscopedPlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/unscoped_plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

/// ACTION: create_plans
/// Create multiple plans
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/create_plans
/// 
/// Details:
/// This action provides the abillity to create multiple plans with a single API request.
/// Accepted attributes:
/// - `count` (Integer) The number of plans to create. (max 12, default 1)
/// - `copy_items` (Boolean) Copy Items from another plan. (default false)
/// - `copy_people` (Boolean) Copy People from another plan. (default false)
/// - `team_ids` (Array[Integer]) IDs of teams to copy people from when `copy_people` is set to true.
///   If nil, `copy_people` copies from all teams. (default nil)
/// - `copy_notes` (Boolean) Copy Notes from another plan. (default false)
/// - `as_template` (Boolean) Create the new plans as templates (default false)
/// - `base_date` (ISO 8601 Date) The date from which to start building the plans. (default false)
/// Accepted Relationships
/// - `plan` (optional) The plan from which to copy times, items, people, and notes
/// - `template` (optional) Collection of templates from which to copy items, people, and notes (not times) for each new plan.
///   Order dependant. Takes precedence over `plan`.
/// 
Future<PlanningCenterApiResponse> createPlans(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/create_plans';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
