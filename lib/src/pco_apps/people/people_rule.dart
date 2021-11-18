/// This file was generated on 2021-11-17T23:59:29.916076


import '../../pco.dart';

/// This class represents a PCO People Rule Object
/// 
/// Application: people
/// Id:          rule
/// Type:        Rule
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A rule belongs to a List and groups conditions together.
/// 
/// Example:
/// 
/// {"type":"Rule","id":"1","attributes":{"subset":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/rules
/// 
class PcoPeopleRule extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'Rule';
  static const String typeId = 'rule';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'rule-list-rules';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSubset = 'subset';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get subset => attributes[kSubset] ?? '';




  PcoPeopleRule() : super(pcoApplication, typeString);
  PcoPeopleRule.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleRule Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules;
  static Future<List<PcoPeopleRule>> getManyFromListAndRuleIds(String listId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleRule> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleRule.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleRule Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules;
  static Future<PcoPeopleRule?> getSingleFromListAndRuleIds(String listId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleRule?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleRule.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleCondition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
Future<List<PcoPeopleCondition>> getConditions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleCondition> retval = [];
  var url = '$apiEndpoint/conditions';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCondition.fromJson(itemData));
    }
  }
  return retval;
}
    

}
