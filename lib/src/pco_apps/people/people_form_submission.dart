/// This file was generated on 2021-11-25T00:07:20.557710


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
/// possible includes with parameter ?include=a,b
/// @form_fields: include associated form_fields 
/// @form_submission_values: include associated form_submission_values 
/// @person: include associated person 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @person.first_name (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
/// @person.last_name (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
///
class PcoPeopleFormSubmission extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmission';
  static const String kTypeId = 'form_submission';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formsubmission-form-form_submissions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';

  /// possible includes with parameter ?include=a,b
  /// @form_fields: include associated form_fields 
  /// @form_submission_values: include associated form_submission_values 
  /// @person: include associated person 
  static List<String> get canInclude => ['form_fields','form_submission_values','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @person.first_name (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
  /// @person.last_name (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
  static List<String> get canOrderBy => ['created_at','person.first_name','person.last_name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoPeopleFormSubmission() : super(kPcoApplication, kTypeString);
  PcoPeopleFormSubmission.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleFormSubmission Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions;
  static Future<PcoCollection<PcoPeopleFormSubmission>> getManyFromFormAndFormSubmission(String formId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoPeopleFormSubmission Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions;
  static Future<PcoCollection<PcoPeopleFormSubmission>> getSingleFromFormAndFormSubmission(String formId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions' + '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoPeopleFormSubmission.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoPeopleFormField objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
Future<PcoCollection<PcoPeopleFormField>> getFormFields({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFormField.canInclude;
  var url = '$apiEndpoint/form_fields';
  return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeopleFormSubmissionValue objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
Future<PcoCollection<PcoPeopleFormSubmissionValue>> getFormSubmissionValues({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeopleFormSubmissionValue.canInclude;
  var url = '$apiEndpoint/form_submission_values';
  return PcoCollection.fromApiCall<PcoPeopleFormSubmissionValue>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoPeoplePerson objects
/// using a path like this: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person
Future<PcoCollection<PcoPeoplePerson>> getPersons({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoPeoplePerson.canInclude;
  var url = '$apiEndpoint/person';
  return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion:apiVersion);
}
    


}
