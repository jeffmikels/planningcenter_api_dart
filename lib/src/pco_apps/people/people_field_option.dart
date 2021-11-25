/// This file was generated on 2021-11-25T00:07:20.553689


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// @value (URLParameter), query on a specific value, example: ?where[value]=string
/// possible orderings with parameter ?order=
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
///
class PcoPeopleFieldOption extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FieldOption';
  static const String kTypeId = 'field_option';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'fieldoption-tab-field_options';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs/1/field_options';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @sequence (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// @value (URLParameter), query on a specific value, example: ?where[value]=string
  static List<String> get canQuery => ['sequence','value'];

  /// possible orderings with parameter ?order=
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @value (URLParameter), prefix with a hyphen (-value) to reverse the order
  static List<String> get canOrderBy => ['sequence','value'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoPeopleFieldOption.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option;
  static Future<PcoCollection<PcoPeopleFieldOption>> getManyFromFieldData(String fieldDataId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/field_option';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options;
  static Future<PcoCollection<PcoPeopleFieldOption>> getManyFromFieldDefinitionAndFieldOption(String fieldDefinitionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleFieldOption Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options;
  static Future<PcoCollection<PcoPeopleFieldOption>> getManyFromTabAndFieldOption(String tabId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/tabs/$tabId/field_options';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_data/1/field_option;
  static Future<PcoCollection<PcoPeopleFieldOption>> getSingleFromFieldData(String fieldDataId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_data/$fieldDataId/field_option' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldOption.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options;
  static Future<PcoCollection<PcoPeopleFieldOption>> getSingleFromFieldDefinitionAndFieldOption(String fieldDefinitionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/field_definitions/$fieldDefinitionId/field_options' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldOption.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleFieldOption Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/tabs/1/field_options;
  static Future<PcoCollection<PcoPeopleFieldOption>> getSingleFromTabAndFieldOption(String tabId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    var url = '/people/v2/tabs/$tabId/field_options' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFieldOption>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFieldOption.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
