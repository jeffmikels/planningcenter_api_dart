/// This file was generated on 2021-11-18T15:28:02.042883


import '../../pco.dart';

/// This class represents a PCO People List Object
/// 
/// Application: people
/// Id:          list
/// Type:        List
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A list is a powerful tool for finding and grouping people together using any criteria imaginable.
/// 
/// Example:
/// 
/// {"type":"List","id":"1","attributes":{"name":"string","auto_refresh":true,"status":"string","has_inactive_results":true,"include_inactive":true,"returns":"string","return_original_if_none":true,"subset":"string","automations_active":true,"automations_count":1,"description":"string","invalid":true,"name_or_description":"string","recently_viewed":true,"refreshed_at":"2000-01-01T12:00:00Z","starred":true,"total_people":1,"batch_completed_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists
/// 
class PcoPeopleList extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'List';
  static const String kTypeId = 'list';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'list-organization-lists';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kName = 'name';
  static const kAutoRefresh = 'auto_refresh';
  static const kStatus = 'status';
  static const kHasInactiveResults = 'has_inactive_results';
  static const kIncludeInactive = 'include_inactive';
  static const kReturns = 'returns';
  static const kReturnOriginalIfNone = 'return_original_if_none';
  static const kSubset = 'subset';
  static const kAutomationsActive = 'automations_active';
  static const kAutomationsCount = 'automations_count';
  static const kDescription = 'description';
  static const kInvalid = 'invalid';
  static const kNameOrDescription = 'name_or_description';
  static const kRecentlyViewed = 'recently_viewed';
  static const kRefreshedAt = 'refreshed_at';
  static const kStarred = 'starred';
  static const kTotalPeople = 'total_people';
  static const kBatchCompletedAt = 'batch_completed_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  bool get isAutoRefresh => attributes[kAutoRefresh] == true;
  String get status => attributes[kStatus] ?? '';
  bool get isHasInactiveResults => attributes[kHasInactiveResults] == true;
  bool get isIncludeInactive => attributes[kIncludeInactive] == true;
  String get returns => attributes[kReturns] ?? '';
  bool get isReturnOriginalIfNone => attributes[kReturnOriginalIfNone] == true;
  String get subset => attributes[kSubset] ?? '';
  bool get isAutomationsActive => attributes[kAutomationsActive] == true;
  int get automationsCount => attributes[kAutomationsCount] ?? 0;
  String get description => attributes[kDescription] ?? '';
  bool get isInvalid => attributes[kInvalid] == true;
  String get nameOrDescription => attributes[kNameOrDescription] ?? '';
  bool get isRecentlyViewed => attributes[kRecentlyViewed] == true;
  DateTime get refreshedAt => DateTime.parse(attributes[kRefreshedAt] ?? '');
  bool get isStarred => attributes[kStarred] == true;
  int get totalPeople => attributes[kTotalPeople] ?? 0;
  DateTime get batchCompletedAt => DateTime.parse(attributes[kBatchCompletedAt] ?? '');




  PcoPeopleList() : super(kPcoApplication, kTypeString);
  PcoPeopleList.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/lists;
  static Future<List<PcoPeopleList>> getManyFromCampusAndListIds(String campusId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleList> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/campuses/$campusId/lists';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleList.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists;
  static Future<List<PcoPeopleList>> getManyFromListCategoryAndListIds(String listCategoryId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleList> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/list_categories/$listCategoryId/lists';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleList.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists;
  static Future<List<PcoPeopleList>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleList> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleList.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/lists;
  static Future<PcoPeopleList?> getSingleFromCampusAndListIds(String campusId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleList?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/campuses/$campusId/lists' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleList.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists;
  static Future<PcoPeopleList?> getSingleFromListCategoryAndListIds(String listCategoryId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleList?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/list_categories/$listCategoryId/lists' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleList.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists;
  static Future<PcoPeopleList?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleList?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleList.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleCampu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/campus
Future<List<PcoPeopleCampu>> getCampus({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCampu> retval = [];
  var url = '$apiEndpoint/campus';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCampu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category
Future<List<PcoPeopleListCategory>> getListCategoriesCategory({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleListCategory> retval = [];
  var url = '$apiEndpoint/category';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListCategory.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by
Future<List<PcoPeoplePerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListResult objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results
Future<List<PcoPeopleListResult>> getListResults({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleListResult> retval = [];
  var url = '$apiEndpoint/list_results';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListResult.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleMailchimpSyncStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
Future<List<PcoPeopleMailchimpSyncStatu>> getMailchimpSyncStatus({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleMailchimpSyncStatu> retval = [];
  var url = '$apiEndpoint/mailchimp_sync_status';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleMailchimpSyncStatu.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people
Future<List<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleRule objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules
Future<List<PcoPeopleRule>> getRules({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleRule> retval = [];
  var url = '$apiEndpoint/rules';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleRule.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares
Future<List<PcoPeopleListShare>> getListSharesShares({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleListShare> retval = [];
  var url = '$apiEndpoint/shares';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListShare.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleListStar objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star
Future<List<PcoPeopleListStar>> getListStarsStar({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleListStar> retval = [];
  var url = '$apiEndpoint/star';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleListStar.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by
Future<List<PcoPeoplePerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/updated_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
