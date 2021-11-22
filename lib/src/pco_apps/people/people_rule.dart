/// This file was generated on 2021-11-22T16:37:09.173458


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
/// possible includes with parameter ?include=a,b
/// @conditions: include associated conditions 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @subset (URLParameter), query on a specific subset, example: ?where[subset]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @subset (URLParameter), prefix with a hyphen (-subset) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleRule extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Rule';
  static const String kTypeId = 'rule';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'rule-list-rules';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules';

  /// possible includes with parameter ?include=a,b
  /// @conditions: include associated conditions 
  static List<String> get canInclude => ['conditions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @subset (URLParameter), query on a specific subset, example: ?where[subset]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','subset','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @subset (URLParameter), prefix with a hyphen (-subset) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','subset','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kSubset = 'subset';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get subset => attributes[kSubset] ?? '';




  PcoPeopleRule() : super(kPcoApplication, kTypeString);
  PcoPeopleRule.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleRule Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules;
  static Future<List<PcoPeopleRule>> getManyFromListAndRuleIds(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleRule> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleRule.canInclude;
    var url = '/people/v2/lists/$listId/rules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleRule.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleRule Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules;
  static Future<PcoPeopleRule?> getSingleFromListAndRuleIds(String listId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleRule?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleRule.canInclude;
    var url = '/people/v2/lists/$listId/rules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleRule.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleCondition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
Future<List<PcoPeopleCondition>> getConditions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleCondition.canInclude;
  List<PcoPeopleCondition> retval = [];
  var url = '$apiEndpoint/conditions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleCondition.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
