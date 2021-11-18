/// This file was generated on 2021-11-18T15:28:02.104021


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
class PcoPeopleTab extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'Tab';
  static const String kTypeId = 'tab';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'tab-organization-tabs';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoPeopleTab.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab;
  static Future<List<PcoPeopleTab>> getManyFromFieldDataAndTabIds(String fieldDataId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleTab> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/tab';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleTab.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab;
  static Future<List<PcoPeopleTab>> getManyFromFieldDefinitionAndTabIds(String fieldDefinitionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleTab> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleTab.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleTab Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs;
  static Future<List<PcoPeopleTab>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleTab> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleTab.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab;
  static Future<PcoPeopleTab?> getSingleFromFieldDataAndTabIds(String fieldDataId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleTab?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/tab' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleTab.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab;
  static Future<PcoPeopleTab?> getSingleFromFieldDefinitionAndTabIds(String fieldDefinitionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleTab?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions/$fieldDefinitionId/tab' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleTab.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleTab Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs;
  static Future<PcoPeopleTab?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleTab?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleTab.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
Future<List<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldDefinition> retval = [];
  var url = '$apiEndpoint/field_definitions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
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
    

}
