/// This file was generated on 2021-11-17T23:59:29.888631


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
class PcoPeopleListCategory extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'ListCategory';
  static const String typeId = 'list_category';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'listcategory-organization-list_categories';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/list_categories';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoPeopleListCategory() : super(pcoApplication, typeString);
  PcoPeopleListCategory.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleListCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category;
  static Future<List<PcoPeopleListCategory>> getManyFromListAndCategoryIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleListCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/category';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListCategory.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleListCategory Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories;
  static Future<List<PcoPeopleListCategory>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleListCategory> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/list_categories';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListCategory.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/category;
  static Future<PcoPeopleListCategory?> getSingleFromListAndCategoryIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleListCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/category' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListCategory.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleListCategory Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories;
  static Future<PcoPeopleListCategory?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleListCategory?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/list_categories' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListCategory.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleList objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/list_categories/1/lists
Future<List<PcoPeopleList>> getLists({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleList> retval = [];
  var url = '$apiEndpoint/lists';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleList.fromJson(itemData));
    }
  }
  return retval;
}
    

}
