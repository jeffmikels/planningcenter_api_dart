/// This file was generated on 2021-11-25T00:07:20.563782


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleListResult extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListResult';
  static const String kTypeId = 'list_result';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'listresult-list-list_results';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/list_results';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

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





  PcoPeopleListResult() : super(kPcoApplication, kTypeString);
  PcoPeopleListResult.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleListResult Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results;
  static Future<PcoCollection<PcoPeopleListResult>> getManyFromListAndListResult(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListResult.canInclude;
    var url = '/people/v2/lists/$listId/list_results';
    return PcoCollection.fromApiCall<PcoPeopleListResult>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleListResult Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/list_results;
  static Future<PcoCollection<PcoPeopleListResult>> getSingleFromListAndListResult(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListResult.canInclude;
    var url = '/people/v2/lists/$listId/list_results' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleListResult>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleListResult.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
