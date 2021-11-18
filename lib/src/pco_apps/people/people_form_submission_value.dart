/// This file was generated on 2021-11-18T15:28:02.039657


import '../../pco.dart';

/// This class represents a PCO People FormSubmissionValue Object
/// 
/// Application: people
/// Id:          form_submission_value
/// Type:        FormSubmissionValue
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A form submission value.
/// 
/// Example:
/// 
/// {"type":"FormSubmissionValue","id":"1","attributes":{"display_value":"string"},"relationships":{"form_field":{"data":{"type":"FormField","id":"1"}},"form_field_option":{"data":{"type":"FormFieldOption","id":"1"}},"form_submission":{"data":{"type":"FormSubmission","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// 
class PcoPeopleFormSubmissionValue extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmissionValue';
  static const String kTypeId = 'form_submission_value';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formsubmissionvalue-formsubmission-form_submission_values';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kDisplayValue = 'display_value';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get displayValue => attributes[kDisplayValue] ?? '';




  PcoPeopleFormSubmissionValue() : super(kPcoApplication, kTypeString);
  PcoPeopleFormSubmissionValue.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoPeopleFormSubmissionValue Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values;
  static Future<List<PcoPeopleFormSubmissionValue>> getManyFromFormAndFormSubmissionAndFormSubmissionValueIds(String formId,String formSubmissionId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFormSubmissionValue> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFormSubmissionValue.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFormSubmissionValue Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values;
  static Future<PcoPeopleFormSubmissionValue?> getSingleFromFormAndFormSubmissionAndFormSubmissionValueIds(String formId,String formSubmissionId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFormSubmissionValue?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFormSubmissionValue.fromJson(res.data);
    }
    return retval;
  }




}
