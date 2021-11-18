/// This file was generated on 2021-11-18T13:57:09.989458


import '../../pco.dart';

/// This class represents a PCO People ListStar Object
/// 
/// Application: people
/// Id:          list_star
/// Type:        ListStar
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A starred list for a person indicates it is special in some way
/// 
/// Example:
/// 
/// {"type":"ListStar","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/star
/// 
class PcoPeopleListStar extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'ListStar';
  static const String typeId = 'list_star';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'liststar-list-star';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleListStar() : super(pcoApplication, typeString);
  PcoPeopleListStar.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleListStar Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star;
  static Future<List<PcoPeopleListStar>> getManyFromListAndStarIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleListStar> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/star';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListStar.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListStar Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star;
  static Future<PcoPeopleListStar?> getSingleFromListAndStarIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleListStar?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/star' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListStar.fromJson(res.data);
    }
    return retval;
  }




}
