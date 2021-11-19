/// This file was generated on 2021-11-19T12:10:42.535767


import '../../pco.dart';

/// This class represents a PCO People ListCategory Object
/// 
/// Application: people
/// Id:          list_category
/// Type:        ListCategory
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A List Category
/// 
/// Example:
/// 
/// {"type":"ListCategory","id":"1","attributes":{"name":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","organization_id":"primary_key"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/list_categories
/// 
/// possible includes with parameter ?include=a,b
/// @lists: include associated lists 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @organization_id (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @organization_id (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleListCategory extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListCategory';
  static const String kTypeId = 'list_category';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'listcategory-organization-list_categories';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/list_categories';

  /// possible includes with parameter ?include=a,b
  /// @lists: include associated lists 
  static List<String> get canInclude => ['lists'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @organization_id (URLParameter), query on a specific organization_id, example: ?where[organization_id]=primary_key
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','organization_id','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @organization_id (URLParameter), prefix with a hyphen (-organization_id) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','organization_id','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kOrganizationId = 'organization_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name'];
  @override
  List<String> get updateAllowed => ['name'];

  String get name => attributes[kName] ?? '';
  String get organizationId => attributes[kOrganizationId] ?? '';


  set name(String s) => attributes[kName] = s;


  PcoPeopleListCategory() : super(kPcoApplication, kTypeString);
  PcoPeopleListCategory.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleListCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category;
  static Future<List<PcoPeopleListCategory>> getManyFromListAndCategoryIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleListCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    var url = '/people/v2/lists/$listId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleListCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories;
  static Future<List<PcoPeopleListCategory>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleListCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    var url = '/people/v2/list_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListCategory.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category;
  static Future<PcoPeopleListCategory?> getSingleFromListAndCategoryIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleListCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    var url = '/people/v2/lists/$listId/category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleListCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories;
  static Future<PcoPeopleListCategory?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleListCategory?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListCategory.canInclude;
    var url = '/people/v2/list_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListCategory.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
Future<List<PcoPeopleList>> getLists({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleList.canInclude;
  List<PcoPeopleList> retval = [];
  var url = '$apiEndpoint/lists';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleList.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
