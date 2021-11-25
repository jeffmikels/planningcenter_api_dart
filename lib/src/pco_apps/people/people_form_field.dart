/// This file was generated on 2021-11-25T00:07:20.556129


import '../../pco.dart';

/// This class represents a PCO People FormField Object
/// 
/// Application: people
/// Id:          form_field
/// Type:        FormField
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A field in a custom form.
/// 
/// Example:
/// 
/// {"type":"FormField","id":"1","attributes":{"field_type":"value","label":"string","description":"string","required":true,"settings":"string","sequence":1,"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"form":{"data":{"type":"Form","id":"1"}},"fieldable":{"data":{"type":"Fieldable","id":"1"}},"options":{"data":{"type":"Options","id":"1"}},"form_field_conditions":{"data":[{"type":"FormFieldCondition","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// 
/// possible includes with parameter ?include=a,b
/// @options: include associated options 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoPeopleFormField extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormField';
  static const String kTypeId = 'form_field';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formfield-form-fields';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';

  /// possible includes with parameter ?include=a,b
  /// @options: include associated options 
  static List<String> get canInclude => ['options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @sequence (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','sequence','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kFieldType = 'field_type';
  static const kLabel = 'label';
  static const kDescription = 'description';
  static const kRequired = 'required';
  static const kSettings = 'settings';
  static const kSequence = 'sequence';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values: `string`, `text`, `checkboxes`, `dropdown`, `date`, `phone_number`, `address`, `birthday`, `gender`, `custom_field`, `note`, `workflow`, `heading`, `number`, `boolean`, `file`, `medical`, `workflow_checkbox`, `workflow_checkboxes`, `workflow_dropdown`, `marital_status`, `anniversary`, `grade`, `primary_campus`, `school`, or `household`
  String get fieldType => attributes[kFieldType] ?? '';
  String get label => attributes[kLabel] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isRequired => attributes[kRequired] == true;
  String get settings => attributes[kSettings] ?? '';
  int get sequence => attributes[kSequence] ?? 0;




  PcoPeopleFormField() : super(kPcoApplication, kTypeString);
  PcoPeopleFormField.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleFormField Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields;
  static Future<PcoCollection<PcoPeopleFormField>> getManyFromFormAndField(String formId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoPeopleFormField Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields;
  static Future<PcoCollection<PcoPeopleFormField>> getManyFromFormAndFormSubmissionAndFormField(String formId,String formSubmissionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleFormField Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields;
  static Future<PcoCollection<PcoPeopleFormField>> getSingleFromFormAndField(String formId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/fields' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFormField.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoPeopleFormField Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields;
  static Future<PcoCollection<PcoPeopleFormField>> getSingleFromFormAndFormSubmissionAndFormField(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFormField.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleFormFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
Future<PcoCollection<PcoPeopleFormFieldOption>> getFormFieldOptionsOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFormFieldOption.canInclude;
  var url = '$apiEndpoint/options';
  return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url, query: query, apiVersion:apiVersion);
}
    


}
