/// This file was generated on 2021-11-25T00:07:20.617718


import '../../pco.dart';

/// This class represents a PCO People Tab Object
/// 
/// Application: people
/// Id:          tab
/// Type:        Tab
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A tab is a custom tab and groups like field definitions.
/// 
/// Example:
/// 
/// {"type":"Tab","id":"1","attributes":{"name":"string","sequence":1,"slug":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/tabs
/// 
/// possible includes with parameter ?include=a,b
/// @field_definitions: include associated field_definitions 
/// @field_options: include associated field_options 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @slug (URLParameter), prefix with a hyphen (-slug) to reverse the order
///
class PcoPeopleTab extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Tab';
  static const String kTypeId = 'tab';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'tab-organization-tabs';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs';

  /// possible includes with parameter ?include=a,b
  /// @field_definitions: include associated field_definitions 
  /// @field_options: include associated field_options 
  static List<String> get canInclude => ['field_definitions','field_options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
  static List<String> get canQuery => ['name','sequence','slug'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @slug (URLParameter), prefix with a hyphen (-slug) to reverse the order
  static List<String> get canOrderBy => ['name','sequence','slug'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kSlug = 'slug';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','sequence','slug'];
  @override
  List<String> get updateAllowed => ['name','sequence','slug'];

  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get slug => attributes[kSlug] ?? '';


  set name(String s) => attributes[kName] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set slug(String s) => attributes[kSlug] = s;


  PcoPeopleTab() : super(kPcoApplication, kTypeString);
  PcoPeopleTab.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab;
  static Future<PcoCollection<PcoPeopleTab>> getManyFromFieldData(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab;
  static Future<PcoCollection<PcoPeopleTab>> getManyFromFieldDefinition(String fieldDefinitionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs;
  static Future<PcoCollection<PcoPeopleTab>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/tabs';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab;
  static Future<PcoCollection<PcoPeopleTab>> getSingleFromFieldData(String fieldDataId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/tab' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleTab.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab;
  static Future<PcoCollection<PcoPeopleTab>> getSingleFromFieldDefinition(String fieldDefinitionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleTab.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs;
  static Future<PcoCollection<PcoPeopleTab>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    var url = '/people/v2/tabs' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleTab.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
Future<PcoCollection<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
  var url = '$apiEndpoint/field_definitions';
  return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
  var url = '$apiEndpoint/field_options';
  return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:apiVersion);
}
    


}
