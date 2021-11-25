/// This file was generated on 2021-11-25T00:07:20.562215


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
/// possible includes with parameter ?include=a,b
/// @campus: include associated campus 
/// @category: include associated category 
/// @created_by: include associated created_by 
/// @mailchimp_sync_status: include associated mailchimp_sync_status 
/// @people: include associated people 
/// @rules: include associated rules 
/// @shares: include associated shares 
/// @updated_by: include associated updated_by 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @batch_completed_at (URLParameter), query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @batch_completed_at (URLParameter), prefix with a hyphen (-batch_completed_at) to reverse the order
/// @campus_id (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @list_category_id (URLParameter), prefix with a hyphen (-list_category_id) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @name_or_description (URLParameter), prefix with a hyphen (-name_or_description) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleList extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'List';
  static const String kTypeId = 'list';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'list-organization-lists';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists';

  /// possible includes with parameter ?include=a,b
  /// @campus: include associated campus 
  /// @category: include associated category 
  /// @created_by: include associated created_by 
  /// @mailchimp_sync_status: include associated mailchimp_sync_status 
  /// @people: include associated people 
  /// @rules: include associated rules 
  /// @shares: include associated shares 
  /// @updated_by: include associated updated_by 
  static List<String> get canInclude => ['campus','category','created_by','mailchimp_sync_status','people','rules','shares','updated_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @batch_completed_at (URLParameter), query on a specific batch_completed_at, example: ?where[batch_completed_at]=2000-01-01T12:00:00Z
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['batch_completed_at','created_at','id','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @batch_completed_at (URLParameter), prefix with a hyphen (-batch_completed_at) to reverse the order
  /// @campus_id (URLParameter), prefix with a hyphen (-campus_id) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @list_category_id (URLParameter), prefix with a hyphen (-list_category_id) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @name_or_description (URLParameter), prefix with a hyphen (-name_or_description) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['batch_completed_at','campus_id','created_at','list_category_id','name','name_or_description','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleList.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/lists;
  static Future<PcoCollection<PcoPeopleList>> getManyFromCampusAndList(String campusId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/campuses/$campusId/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists;
  static Future<PcoCollection<PcoPeopleList>> getManyFromListCategoryAndList(String listCategoryId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/list_categories/$listCategoryId/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleList Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists;
  static Future<PcoCollection<PcoPeopleList>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/lists';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/lists;
  static Future<PcoCollection<PcoPeopleList>> getSingleFromCampusAndList(String campusId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/campuses/$campusId/lists' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleList.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists;
  static Future<PcoCollection<PcoPeopleList>> getSingleFromListCategoryAndList(String listCategoryId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/list_categories/$listCategoryId/lists' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleList.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleList Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists;
  static Future<PcoCollection<PcoPeopleList>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleList.canInclude;
    var url = '/people/v2/lists' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleList>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleList.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleCampus objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/campus
Future<PcoCollection<PcoPeopleCampus>> getCampuses({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCampus.canInclude;
  var url = '$apiEndpoint/campus';
  return PcoCollection.fromApiCall<PcoPeopleCampus>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleListCategory objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category
Future<PcoCollection<PcoPeopleListCategory>> getListCategoriesCategory({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
  var url = '$apiEndpoint/category';
  return PcoCollection.fromApiCall<PcoPeopleListCategory>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/created_by
Future<PcoCollection<PcoPeoplePerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/created_by';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleListResult objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results
Future<PcoCollection<PcoPeopleListResult>> getListResults({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListResult.canInclude;
  var url = '$apiEndpoint/list_results';
  return PcoCollection.fromApiCall<PcoPeopleListResult>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleMailchimpSyncStatu objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync_status
Future<PcoCollection<PcoPeopleMailchimpSyncStatu>> getMailchimpSyncStatus({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleMailchimpSyncStatu.canInclude;
  var url = '$apiEndpoint/mailchimp_sync_status';
  return PcoCollection.fromApiCall<PcoPeopleMailchimpSyncStatu>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/people
Future<PcoCollection<PcoPeoplePerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleRule objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules
Future<PcoCollection<PcoPeopleRule>> getRules({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleRule.canInclude;
  var url = '$apiEndpoint/rules';
  return PcoCollection.fromApiCall<PcoPeopleRule>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleListShare objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/shares
Future<PcoCollection<PcoPeopleListShare>> getListSharesShares({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListShare.canInclude;
  var url = '$apiEndpoint/shares';
  return PcoCollection.fromApiCall<PcoPeopleListShare>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleListStar objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star
Future<PcoCollection<PcoPeopleListStar>> getListStarsStar({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleListStar.canInclude;
  var url = '$apiEndpoint/star';
  return PcoCollection.fromApiCall<PcoPeopleListStar>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/updated_by
Future<PcoCollection<PcoPeoplePerson>> getPersonsUpdatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/updated_by';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    

/// ACTION: mailchimp_sync
/// Sync a List to Mailchimp. (Mailchimp integration must already be configured for this organization.)
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/mailchimp_sync
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> mailchimpSync(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/mailchimp_sync';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
/// ACTION: run
/// Run a List to update its results.
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/run
/// 
/// Details:
/// *PlanningCenter API Docs don't cover this action very well*
Future<PlanningCenterApiResponse> run(Map<String, dynamic> data) async {
  var url = '$apiEndpoint/run';
  return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
}
    
}
