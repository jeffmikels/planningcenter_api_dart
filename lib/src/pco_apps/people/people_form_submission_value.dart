/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:09.952157
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People FormSubmissionValue Object
/// 
/// - Application:        people
/// - Id:                 form_submission_value
/// - Type:               FormSubmissionValue
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// 
/// ## Description
/// A form submission value.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `displayValue` (ro) -> PCO: `display_value`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `formsubmissionvalue-formsubmission-form_submission_values`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "FormSubmissionValue",
///   "id": "1",
///   "attributes": {
///     "display_value": "string"
///   },
///   "relationships": {
///     "form_field": {
///       "data": {
///         "type": "FormField",
///         "id": "1"
///       }
///     },
///     "form_field_option": {
///       "data": {
///         "type": "FormFieldOption",
///         "id": "1"
///       }
///     },
///     "form_submission": {
///       "data": {
///         "type": "FormSubmission",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleFormSubmissionValue extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormSubmissionValue';
  static const String kTypeId = 'form_submission_value';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formsubmissionvalue-formsubmission-form_submission_values';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDisplayValue = 'display_value';


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

  String get displayValue => attributes[kDisplayValue] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleFormSubmissionValue._() : super(kPcoApplication, kTypeString);
  PcoPeopleFormSubmissionValue.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values`
  static Future<PcoCollection<PcoPeopleFormSubmissionValue>> getFromFormAndFormSubmission(String formId,String formSubmissionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormSubmissionValue.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_submission_values';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormSubmissionValue>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
