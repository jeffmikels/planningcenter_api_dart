/// This file was generated on 2021-11-17T23:59:27.311623


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
class PcoPeopleFormField extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'FormField';
  static const String typeId = 'form_field';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'formfield-form-fields';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoPeopleFormField() : super(pcoApplication, typeString);
  PcoPeopleFormField.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleFormField Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields;
  static Future<List<PcoPeopleFormField>> getManyFromFormAndFieldIds(String formId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFormField> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/fields';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFormField.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoPeopleFormField Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields;
  static Future<List<PcoPeopleFormField>> getManyFromFormAndFormSubmissionAndFormFieldIds(String formId,String formSubmissionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFormField> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFormField.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFormField Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields;
  static Future<PcoPeopleFormField?> getSingleFromFormAndFieldIds(String formId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFormField?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/fields' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFormField.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoPeopleFormField Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields;
  static Future<PcoPeopleFormField?> getSingleFromFormAndFormSubmissionAndFormFieldIds(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFormField?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFormField.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleFormFieldOption objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
Future<List<PcoPeopleFormFieldOption>> getFormFieldOptionsOptions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFormFieldOption> retval = [];
  var url = '$apiEndpoint/options';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormFieldOption.fromJson(itemData));
    }
  }
  return retval;
}
    

}
