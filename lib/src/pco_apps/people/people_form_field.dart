/// This file was generated on 2022-03-04T20:00:53.700933


import '../../pco.dart';

/// This class represents a PCO People FormField Object
/// 
/// - Application:        people
/// - Id:                 form_field
/// - Type:               FormField
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/forms/1/fields
/// 
/// Description:
/// A field in a custom form.
/// 
/// Example:
/// ```json
/// {
///   "type": "FormField",
///   "id": "1",
///   "attributes": {
///     "field_type": "value",
///     "label": "string",
///     "description": "string",
///     "required": true,
///     "settings": "string",
///     "sequence": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "form": {
///       "data": {
///         "type": "Form",
///         "id": "1"
///       }
///     },
///     "fieldable": {
///       "data": {
///         "type": "Fieldable",
///         "id": "1"
///       }
///     },
///     "options": {
///       "data": {
///         "type": "Options",
///         "id": "1"
///       }
///     },
///     "form_field_conditions": {
///       "data": [
///         {
///           "type": "FormFieldCondition",
///           "id": "1"
///         }
///       ]
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - options: include associated options 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `formfieldoption-formfield-options`: https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options
/// 
/// All Inbound Edges:
/// - `formfield-form-fields`: https://api.planningcenteronline.com/people/v2/forms/1/fields
/// - `formfield-formsubmission-form_fields`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields
/// 
/// All Actions:
/// NONE
///
class PcoPeopleFormField extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'FormField';
  static const String kTypeId = 'form_field';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'formfield-form-fields';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';

  /// possible includes with parameter ?include=a,b
  /// - `options`: include associated options 
  static List<String> get canInclude => ['options'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','sequence','updated_at'];

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
  static const kFieldType = 'field_type';
  static const kLabel = 'label';
  static const kDescription = 'description';
  static const kRequired = 'required';
  static const kSettings = 'settings';
  static const kSequence = 'sequence';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';


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

  String get fieldType => attributes[kFieldType] ?? '';
  String get label => attributes[kLabel] ?? '';
  String get description => attributes[kDescription] ?? '';
  bool get isRequired => attributes[kRequired] == true;
  String get settings => attributes[kSettings] ?? '';
  int get sequence => attributes[kSequence] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleFormField() : super(kPcoApplication, kTypeString);
  PcoPeopleFormField.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleFormField] objects (expecting one)
  /// using a path like this: `/people/v2/forms/$formId/fields`
  static Future<PcoCollection<PcoPeopleFormField>> getFieldsFromForm(String formId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/fields';
    
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields`
  static Future<PcoCollection<PcoPeopleFormField>> getFromFormAndFormSubmission(String formId,String formSubmissionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    var url = '/people/v2/forms/$formId/form_submissions/$formSubmissionId/form_fields';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleFormField>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeopleFormFieldOption] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options`
  Future<PcoCollection<PcoPeopleFormFieldOption>> getOptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleFormFieldOption.canInclude;
    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoPeopleFormFieldOption>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
