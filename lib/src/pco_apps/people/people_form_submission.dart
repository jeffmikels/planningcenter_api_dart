/// This file was generated on 2022-03-04T15:29:14.433920


import '../../pco.dart';

/// This class represents a PCO People FormSubmission Object
/// 
/// - Application:        people
/// - Id:                 form_submission
/// - Type:               FormSubmission
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// 
/// Description:
/// A form submission.
/// 
/// Example:
/// ```json
/// {
///   "type": "FormSubmission",
///   "id": "1",
///   "attributes": {
///     "verified": true,
///     "requires_verification": true,
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "form": {
///       "data": {
///         "type": "Form",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - form_fields: include associated form_fields 
/// - form_submission_values: include associated form_submission_values 
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `person.first_name`: (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
/// - `person.last_name`: (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
///
/// All Outbound Edges:
/// - `formfield-formsubmission-form_fields`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
/// - `formsubmissionvalue-formsubmission-form_submission_values`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// - `person-formsubmission-person`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person
/// 
/// All Inbound Edges:
/// - `formsubmission-form-form_submissions`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions
/// 
/// All Actions:
/// NONE
///
class PcoPeopleFormSubmission extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmission';
  static const String kTypeId = 'form_submission';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formsubmission-form-form_submissions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';

  /// possible includes with parameter ?include=a,b
  /// - `form_fields`: include associated form_fields 
  /// - `form_submission_values`: include associated form_submission_values 
  /// - `person`: include associated person 
  static List<String> get canInclude => ['form_fields','form_submission_values','person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `person.first_name`: (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
  /// - `person.last_name`: (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
  static List<String> get canOrderBy => ['created_at','person.first_name','person.last_name'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kVerified = 'verified';
  static const kRequiresVerification = 'requires_verification';
  static const kCreatedAt = 'created_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes

  bool get isVerified => attributes[kVerified] == true;
  bool get isRequiresVerification => attributes[kRequiresVerification] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleFormSubmission() : super(kPcoApplication, kTypeString);
  PcoPeopleFormSubmission.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions`
  static Future<PcoCollection<PcoPeopleFormSubmission>> getFromForm(String formId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmission>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields`
  Future<PcoCollection<PcoPeopleFormField>> getFormFields({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '$apiEndpoint/form_fields';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values`
  Future<PcoCollection<PcoPeopleFormSubmissionValue>> getFormSubmissionValues({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmissionValue.canInclude;
    var url = '$apiEndpoint/form_submission_values';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmissionValue>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
