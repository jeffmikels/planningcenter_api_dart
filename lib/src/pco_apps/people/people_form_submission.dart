/// This file was generated on 2021-11-18T13:57:09.978028


import '../../pco.dart';

/// This class represents a PCO People FormSubmission Object
/// 
/// Application: people
/// Id:          form_submission
/// Type:        FormSubmission
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A form submission.
/// 
/// Example:
/// 
/// {"type":"FormSubmission","id":"1","attributes":{"verified":true,"requires_verification":true,"created_at":"2000-01-01T12:00:00Z"},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"form":{"data":{"type":"Form","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// 
class PcoPeopleFormSubmission extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'FormSubmission';
  static const String typeId = 'form_submission';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'formsubmission-form-form_submissions';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kVerified = 'verified';
  static const kRequiresVerification = 'requires_verification';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isVerified => attributes[kVerified] == true;
  bool get isRequiresVerification => attributes[kRequiresVerification] == true;




  PcoPeopleFormSubmission() : super(pcoApplication, typeString);
  PcoPeopleFormSubmission.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeopleFormSubmission Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions;
  static Future<List<PcoPeopleFormSubmission>> getManyFromFormAndFormSubmissionIds(String formId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeopleFormSubmission> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleFormSubmission.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleFormSubmission Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions;
  static Future<PcoPeopleFormSubmission?> getSingleFromFormAndFormSubmissionIds(String formId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeopleFormSubmission?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/forms/$formId/form_submissions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleFormSubmission.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoPeopleFormField objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
Future<List<PcoPeopleFormField>> getFormFields({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFormField> retval = [];
  var url = '$apiEndpoint/form_fields';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormField.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeopleFormSubmissionValue objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
Future<List<PcoPeopleFormSubmissionValue>> getFormSubmissionValues({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeopleFormSubmissionValue> retval = [];
  var url = '$apiEndpoint/form_submission_values';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeopleFormSubmissionValue.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person
Future<List<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoPeoplePerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoPeoplePerson.fromJson(itemData));
    }
  }
  return retval;
}
    

}
