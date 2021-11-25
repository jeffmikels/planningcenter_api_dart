/// This file was generated on 2021-11-25T00:07:20.552818


import '../../pco.dart';

/// This class represents a PCO People FieldDefinition Object
/// 
/// Application: people
/// Id:          field_definition
/// Type:        FieldDefinition
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A field definition represents a custom field -- its name, data type, etc.
/// 
/// Example:
/// 
/// {"type":"FieldDefinition","id":"1","attributes":{"data_type":"string","name":"string","sequence":1,"slug":"string","config":"string","deleted_at":"2000-01-01T12:00:00Z","tab_id":"primary_key"},"relationships":{"tab":{"data":{"type":"Tab","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/field_definitions
/// 
/// possible includes with parameter ?include=a,b
/// @field_options: include associated field_options 
/// @tab: include associated tab 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @config (URLParameter), query on a specific config, example: ?where[config]=string
/// @data_type (URLParameter), query on a specific data_type, example: ?where[data_type]=string
/// @deleted_at (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
/// @tab_id (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
/// possible orderings with parameter ?order=
/// @config (URLParameter), prefix with a hyphen (-config) to reverse the order
/// @data_type (URLParameter), prefix with a hyphen (-data_type) to reverse the order
/// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @slug (URLParameter), prefix with a hyphen (-slug) to reverse the order
/// @tab_id (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
///
class PcoPeopleFieldDefinition extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldDefinition';
  static const String kTypeId = 'field_definition';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'fielddefinition-organization-field_definitions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions';

  /// possible includes with parameter ?include=a,b
  /// @field_options: include associated field_options 
  /// @tab: include associated tab 
  static List<String> get canInclude => ['field_options','tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @config (URLParameter), query on a specific config, example: ?where[config]=string
  /// @data_type (URLParameter), query on a specific data_type, example: ?where[data_type]=string
  /// @deleted_at (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
  /// @tab_id (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
  static List<String> get canQuery => ['config','data_type','deleted_at','name','sequence','slug','tab_id'];

  /// possible orderings with parameter ?order=
  /// @config (URLParameter), prefix with a hyphen (-config) to reverse the order
  /// @data_type (URLParameter), prefix with a hyphen (-data_type) to reverse the order
  /// @deleted_at (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @slug (URLParameter), prefix with a hyphen (-slug) to reverse the order
  /// @tab_id (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
  static List<String> get canOrderBy => ['config','data_type','deleted_at','name','sequence','slug','tab_id'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kDataType = 'data_type';
  static const kName = 'name';
  static const kSequence = 'sequence';
  static const kSlug = 'slug';
  static const kConfig = 'config';
  static const kDeletedAt = 'deleted_at';
  static const kTabId = 'tab_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['data_type','name','sequence','slug','config','deleted_at'];
  @override
  List<String> get updateAllowed => ['data_type','name','sequence','slug','config','deleted_at'];

  String get dataType => attributes[kDataType] ?? '';
  String get name => attributes[kName] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  String get slug => attributes[kSlug] ?? '';
  String get config => attributes[kConfig] ?? '';
  DateTime get deletedAt => DateTime.parse(attributes[kDeletedAt] ?? '');
  String get tabId => attributes[kTabId] ?? '';


  set dataType(String s) => attributes[kDataType] = s;
  set name(String s) => attributes[kName] = s;
  set sequence(int n) => attributes[kSequence] = n;
  set slug(String s) => attributes[kSlug] = s;
  set config(String s) => attributes[kConfig] = s;
  set deletedAt(DateTime d) => attributes[kDeletedAt] = d.toIso8601String();


  PcoPeopleFieldDefinition() : super(kPcoApplication, kTypeString);
  PcoPeopleFieldDefinition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getManyFromFieldData(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/field_definition';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getManyFromTabAndFieldDefinition(String tabId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/tabs/$tabId/field_definitions';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getSingleFromFieldData(String fieldDataId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/field_definition' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldDefinition.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/field_definitions' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldDefinition.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions;
  static Future<PcoCollection<PcoPeopleFieldDefinition>> getSingleFromTabAndFieldDefinition(String tabId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    var url = '/people/v2/tabs/$tabId/field_definitions' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldDefinition>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldDefinition.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
Future<PcoCollection<PcoPeopleFieldOption>> getFieldOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
  var url = '$apiEndpoint/field_options';
  return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
Future<PcoCollection<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleTab.canInclude;
  var url = '$apiEndpoint/tab';
  return PcoCollection.fromApiCall<PcoPeopleTab>(url, query: query, apiVersion:apiVersion);
}
    


}
