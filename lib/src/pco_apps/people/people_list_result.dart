/// This file was generated on 2021-11-18T15:28:02.045105


import '../../pco.dart';

/// This class represents a PCO People ListResult Object
/// 
/// Application: people
/// Id:          list_result
/// Type:        ListResult
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A list result
/// 
/// Example:
/// 
/// {"type":"ListResult","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"list":{"data":{"type":"List","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/list_results
/// 
class PcoPeopleListResult extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListResult';
  static const String kTypeId = 'list_result';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'listresult-list-list_results';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/list_results';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoPeopleListResult() : super(kPcoApplication, kTypeString);
  PcoPeopleListResult.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleListResult Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results;
  static Future<List<PcoPeopleListResult>> getManyFromListAndListResultIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleListResult> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/list_results';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleListResult.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleListResult Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results;
  static Future<PcoPeopleListResult?> getSingleFromListAndListResultIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleListResult?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/list_results' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleListResult.fromJson(res.data);
    }
    return retval;
  }




}
