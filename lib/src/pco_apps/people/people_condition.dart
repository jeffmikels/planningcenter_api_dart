/// This file was generated on 2021-11-19T12:10:42.499984


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
/// possible includes with parameter ?include=a,b
/// @created_by: include associated created_by 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @application (URLParameter), query on a specific application, example: ?where[application]=string
/// @comparison (URLParameter), query on a specific comparison, example: ?where[comparison]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @definition_class (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
/// @definition_identifier (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
/// @description (URLParameter), query on a specific description, example: ?where[description]=string
/// @settings (URLParameter), query on a specific settings, example: ?where[settings]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @application (URLParameter), prefix with a hyphen (-application) to reverse the order
/// @comparison (URLParameter), prefix with a hyphen (-comparison) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @definition_class (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
/// @definition_identifier (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
/// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
/// @settings (URLParameter), prefix with a hyphen (-settings) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleCondition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Condition';
  static const String kTypeId = 'condition';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'condition-rule-conditions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions';

  /// possible includes with parameter ?include=a,b
  /// @created_by: include associated created_by 
  static List<String> get canInclude => ['created_by'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @application (URLParameter), query on a specific application, example: ?where[application]=string
  /// @comparison (URLParameter), query on a specific comparison, example: ?where[comparison]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @definition_class (URLParameter), query on a specific definition_class, example: ?where[definition_class]=string
  /// @definition_identifier (URLParameter), query on a specific definition_identifier, example: ?where[definition_identifier]=string
  /// @description (URLParameter), query on a specific description, example: ?where[description]=string
  /// @settings (URLParameter), query on a specific settings, example: ?where[settings]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['application','comparison','created_at','definition_class','definition_identifier','description','settings','updated_at'];

  /// possible orderings with parameter ?order=
  /// @application (URLParameter), prefix with a hyphen (-application) to reverse the order
  /// @comparison (URLParameter), prefix with a hyphen (-comparison) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @definition_class (URLParameter), prefix with a hyphen (-definition_class) to reverse the order
  /// @definition_identifier (URLParameter), prefix with a hyphen (-definition_identifier) to reverse the order
  /// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// @settings (URLParameter), prefix with a hyphen (-settings) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['application','comparison','created_at','definition_class','definition_identifier','description','settings','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleCondition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleCondition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions;
  static Future<List<PcoPeopleCondition>> getManyFromListAndRuleAndConditionIds(String listId,String ruleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleCondition> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCondition.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleCondition.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleCondition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions;
  static Future<PcoPeopleCondition?> getSingleFromListAndRuleAndConditionIds(String listId,String ruleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleCondition?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleCondition.canInclude;
    var url = '/people/v2/lists/$listId/rules/$ruleId/conditions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleCondition.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/lists/1/rules/1/conditions/1/created_by
Future<List<PcoPeoplePerson>> getPersonsCreatedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/created_by';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
