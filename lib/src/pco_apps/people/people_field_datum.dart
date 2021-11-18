/// This file was generated on 2021-11-17T23:59:27.309280


import '../../pco.dart';

/// This class represents a PCO People FieldDatum Object
/// 
/// Application: people
/// Id:          field_datum
/// Type:        FieldDatum
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A field datum is an individual piece of data for a custom field.
/// 
/// Example:
/// 
/// {"type":"FieldDatum","id":"1","attributes":{"value":"string","file":"string","file_size":1,"file_content_type":"string","file_name":"string"},"relationships":{"field_definition":{"data":{"type":"FieldDefinition","id":"1"}},"customizable":{"data":{"type":"Customizable","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/field_data
/// 
class PcoPeopleFieldDatum extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'FieldDatum';
  static const String typeId = 'field_datum';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'fielddatum-organization-field_data';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_data';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kValue = 'value';
  static const kFile = 'file';
  static const kFileSize = 'file_size';
  static const kFileContentType = 'file_content_type';
  static const kFileName = 'file_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['value','field_definition_id'];
  @override
  List<String> get updateAllowed => ['value','field_definition_id'];

  String get value => attributes[kValue] ?? '';
  String get file => attributes[kFile] ?? '';
  int get fileSize => attributes[kFileSize] ?? 0;
  String get fileContentType => attributes[kFileContentType] ?? '';
  String get fileName => attributes[kFileName] ?? '';


  set value(String s) => attributes[kValue] = s;


  PcoPeopleFieldDatum() : super(pcoApplication, typeString);
  PcoPeopleFieldDatum.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleFieldDatum Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data;
  static Future<List<PcoPeopleFieldDatum>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldDatum> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDatum.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldDatum Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data;
  static Future<List<PcoPeopleFieldDatum>> getManyFromPeopleAndFieldDataIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFieldDatum> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/field_data';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDatum.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFieldDatum Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data;
  static Future<PcoPeopleFieldDatum?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldDatum?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/field_data' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDatum.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldDatum Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data;
  static Future<PcoPeopleFieldDatum?> getSingleFromPeopleAndFieldDataIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFieldDatum?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/field_data' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDatum.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
Future<List<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldDefinition> retval = [];
  var url = '$apiEndpoint/field_definition';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDefinition.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
Future<List<PcoPeopleFieldOption>> getFieldOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFieldOption> retval = [];
  var url = '$apiEndpoint/field_option';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldOption.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab
Future<List<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleTab> retval = [];
  var url = '$apiEndpoint/tab';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleTab.fromJson(itemData));
    }
  }
  return retval;
}
    

}
