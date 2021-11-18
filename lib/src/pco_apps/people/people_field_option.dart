/// This file was generated on 2021-11-18T15:28:02.035576


import '../../pco.dart';

/// This class represents a PCO People FieldOption Object
/// 
/// Application: people
/// Id:          field_option
/// Type:        FieldOption
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A field option represents an individual option for a custom field of type "select" or "checkboxes".
/// 
/// Example:
/// 
/// {"type":"FieldOption","id":"1","attributes":{"value":"string","sequence":1},"relationships":{"field_definition":{"data":{"type":"FieldDefinition","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// 
class PcoPeopleFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldOption';
  static const String kTypeId = 'field_option';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'fieldoption-tab-field_options';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs/1/field_options';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kValue = 'value';
  static const kSequence = 'sequence';


  // getters and setters
  @override
  List<String> get createAllowed => ['value','sequence'];
  @override
  List<String> get updateAllowed => ['value','sequence'];

  String get value => attributes[kValue] ?? '';
  int get sequence => attributes[kSequence] ?? 0;


  set value(String s) => attributes[kValue] = s;
  set sequence(int n) => attributes[kSequence] = n;


  PcoPeopleFieldOption() : super(kPcoApplication, kTypeString);
  PcoPeopleFieldOption.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option;
  static Future<List<PcoPeopleFieldOption>> getManyFromFieldDataAndFieldOptionIds(String fieldDataId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/field_option';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldOption.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options;
  static Future<List<PcoPeopleFieldOption>> getManyFromFieldDefinitionAndFieldOptionIds(String fieldDefinitionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldOption.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options;
  static Future<List<PcoPeopleFieldOption>> getManyFromTabAndFieldOptionIds(String tabId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldOption> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs/$tabId/field_options';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldOption.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option;
  static Future<PcoPeopleFieldOption?> getSingleFromFieldDataAndFieldOptionIds(String fieldDataId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data/$fieldDataId/field_option' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldOption.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options;
  static Future<PcoPeopleFieldOption?> getSingleFromFieldDefinitionAndFieldOptionIds(String fieldDefinitionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldOption.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options;
  static Future<PcoPeopleFieldOption?> getSingleFromTabAndFieldOptionIds(String tabId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldOption?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/tabs/$tabId/field_options' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldOption.fromJson(res.data);
    }
    return retval;
  }




}
