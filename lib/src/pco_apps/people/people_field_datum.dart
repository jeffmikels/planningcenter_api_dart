/// This file was generated on 2021-11-19T12:10:42.503399


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
/// possible includes with parameter ?include=a,b
/// @field_definition: include associated field_definition 
/// @field_option: include associated field_option 
/// @tab: include associated tab 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @file (URLParameter), query on a specific file, example: ?where[file]=string
/// @file_content_type (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
/// @file_name (URLParameter), query on a specific file_name, example: ?where[file_name]=string
/// @file_size (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @file (URLParameter), prefix with a hyphen (-file) to reverse the order
/// @file_content_type (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
/// @file_name (URLParameter), prefix with a hyphen (-file_name) to reverse the order
/// @file_size (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleFieldDatum extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldDatum';
  static const String kTypeId = 'field_datum';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'fielddatum-organization-field_data';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_data';

  /// possible includes with parameter ?include=a,b
  /// @field_definition: include associated field_definition 
  /// @field_option: include associated field_option 
  /// @tab: include associated tab 
  static List<String> get canInclude => ['field_definition','field_option','tab'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @file (URLParameter), query on a specific file, example: ?where[file]=string
  /// @file_content_type (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
  /// @file_name (URLParameter), query on a specific file_name, example: ?where[file_name]=string
  /// @file_size (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// @value (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['file','file_content_type','file_name','file_size','value'];

  /// possible orderings with parameter ?order=
  /// @file (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// @file_content_type (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
  /// @file_name (URLParameter), prefix with a hyphen (-file_name) to reverse the order
  /// @file_size (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['file','file_content_type','file_name','file_size','value'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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


  PcoPeopleFieldDatum() : super(kPcoApplication, kTypeString);
  PcoPeopleFieldDatum.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleFieldDatum Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data;
  static Future<List<PcoPeopleFieldDatum>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleFieldDatum> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/field_data';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDatum.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFieldDatum Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data;
  static Future<List<PcoPeopleFieldDatum>> getManyFromPeopleAndFieldDataIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleFieldDatum> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/people/$peopleId/field_data';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFieldDatum.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFieldDatum Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data;
  static Future<PcoPeopleFieldDatum?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleFieldDatum?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/field_data' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDatum.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoPeopleFieldDatum Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/field_data;
  static Future<PcoPeopleFieldDatum?> getSingleFromPeopleAndFieldDataIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleFieldDatum?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    var url = '/people/v2/people/$peopleId/field_data' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFieldDatum.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoPeopleFieldDefinition objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
Future<List<PcoPeopleFieldDefinition>> getFieldDefinitions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
  List<PcoPeopleFieldDefinition> retval = [];
  var url = '$apiEndpoint/field_definition';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldDefinition.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
Future<List<PcoPeopleFieldOption>> getFieldOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
  List<PcoPeopleFieldOption> retval = [];
  var url = '$apiEndpoint/field_option';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFieldOption.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleTab objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/tab
Future<List<PcoPeopleTab>> getTabs({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleTab.canInclude;
  List<PcoPeopleTab> retval = [];
  var url = '$apiEndpoint/tab';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleTab.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
