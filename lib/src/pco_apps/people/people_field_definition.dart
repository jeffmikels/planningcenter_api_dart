/// This file was generated on 2021-11-18T13:57:09.965331


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
class PcoPeopleFieldDefinition extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'FieldDefinition';
  static const String typeId = 'field_definition';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'fielddefinition-organization-field_definitions';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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


  PcoPeopleFieldDefinition() : super(pcoApplication, typeString);
  PcoPeopleFieldDefinition.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition;
  static Future<List<PcoPeopleFieldDefinition>> getManyFromFieldDataAndFieldDefinitionIds(String fieldDataId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldDefinition> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/field_definition';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions;
  static Future<List<PcoPeopleFieldDefinition>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldDefinition> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldDefinition Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions;
  static Future<List<PcoPeopleFieldDefinition>> getManyFromTabAndFieldDefinitionIds(String tabId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldDefinition> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs/$tabId/field_definitions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition;
  static Future<PcoPeopleFieldDefinition?> getSingleFromFieldDataAndFieldDefinitionIds(String fieldDataId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldDefinition?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/field_definition' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDefinition.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions;
  static Future<PcoPeopleFieldDefinition?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldDefinition?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDefinition.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldDefinition Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions;
  static Future<PcoPeopleFieldDefinition?> getSingleFromTabAndFieldDefinitionIds(String tabId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldDefinition?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs/$tabId/field_definitions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDefinition.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
Future<List<PcoPeopleFieldOption>> getFieldOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldOption> retval = [];
  var url = '$apiEndpoint/field_options';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
Future<List<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleTab> retval = [];
  var url = '$apiEndpoint/tab';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleTab.fromJson(itemData));
    }
  }
  return retval;
}
    

}
