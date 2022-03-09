/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.835957
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
/// Description:
/// A form submission value.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `formsubmissionvalue-formsubmission-form_submission_values`: https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleFormSubmissionValue extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FormSubmissionValue';
  static kTypeId = 'form_submission_value';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'formsubmissionvalue-formsubmission-form_submission_values';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFormSubmissionValue.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFormSubmissionValue.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFormSubmissionValue.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDisplayValue() { return 'display_value' }


  // getters and setters
  // @override
  get createAllowed() { return []; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return false; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get displayValue() { return attributes[this.constructor.kDisplayValue] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleFormSubmissionValue._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFormSubmissionValue({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/form_submission_values`
  static getFromFormAndFormSubmission(formId, formSubmissionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormSubmissionValue.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/form_submission_values`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
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
