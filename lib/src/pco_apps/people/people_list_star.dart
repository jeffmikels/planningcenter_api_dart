/// This file was generated on 2021-11-19T12:10:42.542428


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeopleListStar extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListStar';
  static const String kTypeId = 'list_star';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'liststar-list-star';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleListStar() : super(kPcoApplication, kTypeString);
  PcoPeopleListStar.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleListStar Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star;
  static Future<List<PcoPeopleListStar>> getManyFromListAndStarIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleListStar> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListStar.canInclude;
    var url = '/people/v2/lists/$listId/star';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListStar.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListStar Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/star;
  static Future<PcoPeopleListStar?> getSingleFromListAndStarIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleListStar?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListStar.canInclude;
    var url = '/people/v2/lists/$listId/star' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListStar.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
