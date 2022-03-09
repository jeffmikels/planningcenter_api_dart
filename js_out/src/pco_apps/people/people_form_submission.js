/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.835001
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoPeopleFormSubmission extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FormSubmission';
  static kTypeId = 'form_submission';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'formsubmission-form-form_submissions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/form_submissions';

  /// possible includes with parameter ?include=a,b
  /// - `form_fields`: include associated form_fields 
  /// - `form_submission_values`: include associated form_submission_values 
  /// - `person`: include associated person 
  static get canInclude() { return ['form_fields','form_submission_values','person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `person.first_name`: (URLParameter), prefix with a hyphen (-person.first_name) to reverse the order
  /// - `person.last_name`: (URLParameter), prefix with a hyphen (-person.last_name) to reverse the order
  static get canOrderBy() { return ['created_at','person.first_name','person.last_name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFormSubmission.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFormSubmission.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFormSubmission.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kVerified() { return 'verified' }
  static get kRequiresVerification() { return 'requires_verification' }
  static get kCreatedAt() { return 'created_at' }


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

  get isVerified() { return attributes[this.constructor.kVerified] == true; }
  get isRequiresVerification() { return attributes[this.constructor.kRequiresVerification] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleFormSubmission._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFormSubmission({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormSubmission] objects (expecting many)
  /// using a path like this: `/people/v2/forms/${formId}/form_submissions`
  static getFromForm(formId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormSubmission.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/form_submissions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_fields`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFormFields({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    let url = `${apiEndpoint}/form_fields`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormSubmissionValue] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/form_submission_values`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFormSubmissionValues({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormSubmissionValue.canInclude;
    let url = `${apiEndpoint}/form_submission_values`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/form_submissions/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
