/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.831147
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

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
export class PcoPeopleFormField extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FormField';
  static kTypeId = 'form_field';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'formfield-form-fields';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/forms/1/fields';

  /// possible includes with parameter ?include=a,b
  /// - `options`: include associated options 
  static get canInclude() { return ['options'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','sequence','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFormField.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFormField.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFormField.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kFieldType() { return 'field_type' }
  static get kLabel() { return 'label' }
  static get kDescription() { return 'description' }
  static get kRequired() { return 'required' }
  static get kSettings() { return 'settings' }
  static get kSequence() { return 'sequence' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


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

  get fieldType() { return attributes[this.constructor.kFieldType] ?? ''; }
  get label() { return attributes[this.constructor.kLabel] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get isRequired() { return attributes[this.constructor.kRequired] == true; }
  get settings() { return attributes[this.constructor.kSettings] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleFormField._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFormField({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormField] objects (expecting one)
  /// using a path like this: `/people/v2/forms/${formId}/fields`
  static getFieldsFromForm(formId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/fields`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormField] objects (expecting many)
  /// using a path like this: `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/form_fields`
  static getFromFormAndFormSubmission(formId, formSubmissionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormField.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/forms/${formId}/form_submissions/${formSubmissionId}/form_fields`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFormFieldOption] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/forms/1/fields/1/options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFormFieldOption.canInclude;
    let url = `${apiEndpoint}/options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
