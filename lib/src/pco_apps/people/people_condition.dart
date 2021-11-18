/// This file was generated on 2021-11-18T15:28:02.030872


import '../../pco.dart';

/// This class represents a PCO People Condition Object
/// 
/// Application: people
/// Id:          condition
/// Type:        Condition
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A condition is an individual criterion used by a List Rule.
/// 
/// Example:
/// 
/// {"type":"Condition","id":"1","attributes":{"application":"string","definition_class":"string","comparison":"string","settings":"string","definition_identifier":"string","description":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"created_by":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions
/// 
class PcoPeopleCondition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Condition';
  static const String kTypeId = 'condition';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'condition-rule-conditions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kApplication = 'application';
  static const kDefinitionClass = 'definition_class';
  static const kComparison = 'comparison';
  static const kSettings = 'settings';
  static const kDefinitionIdentifier = 'definition_identifier';
  static const kDescription = 'description';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get application => attributes[kApplication] ?? '';
  String get definitionClass => attributes[kDefinitionClass] ?? '';
  String get comparison => attributes[kComparison] ?? '';
  String get settings => attributes[kSettings] ?? '';
  String get definitionIdentifier => attributes[kDefinitionIdentifier] ?? '';
  String get description => attributes[kDescription] ?? '';




  PcoPeopleCondition() : super(kPcoApplication, kTypeString);
  PcoPeopleCondition.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleCondition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions;
  static Future<List<PcoPeopleCondition>> getManyFromListAndRuleAndConditionIds(String listId,String ruleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleCondition> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCondition.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleCondition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions;
  static Future<PcoPeopleCondition?> getSingleFromListAndRuleAndConditionIds(String listId,String ruleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleCondition?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCondition.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
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
    

}
