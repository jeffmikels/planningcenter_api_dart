/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.828758
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People FieldOption Object
/// 
/// - Application:        people
/// - Id:                 field_option
/// - Type:               FieldOption
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// 
/// Description:
/// A field option represents an individual option for a custom field of type "select" or "checkboxes".
/// 
/// Example:
/// ```json
/// {
///   "type": "FieldOption",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "sequence": 1
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
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
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// Possible orderings with parameter ?order=
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `fieldoption-fielddefinition-field_options`: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - `fieldoption-tab-field_options`: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleFieldOption extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FieldOption';
  static kTypeId = 'field_option';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'fieldoption-tab-field_options';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs/1/field_options';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static get canQuery() { return ['sequence','value'] }

  /// possible orderings with parameter ?order=
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static get canOrderBy() { return ['sequence','value'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFieldOption.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFieldOption.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFieldOption.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kValue() { return 'value' }
  static get kSequence() { return 'sequence' }


  // getters and setters
  // @override
  get createAllowed() { return ['value','sequence']; }

  // @override
  get updateAllowed() { return ['value','sequence']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get value() { return attributes[this.constructor.kValue] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  

  // setters for object attributes

  set value(s) {attributes[this.constructor.kValue] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleFieldOption._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFieldOption({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleFieldOption] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/field_definitions/${fieldDefinitionId}/field_options`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(fieldDefinitionId) {
    super(PcoPeopleFieldOption.kPcoApplication, PcoPeopleFieldOption.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/field_definitions/${fieldDefinitionId}/field_options`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/${fieldDataId}/field_option`
  static getFromFieldData(fieldDataId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_data/${fieldDataId}/field_option`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/${fieldDefinitionId}/field_options`
  static getFromFieldDefinition(fieldDefinitionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_definitions/${fieldDefinitionId}/field_options`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/${tabId}/field_options`
  static getFromTab(tabId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/tabs/${tabId}/field_options`;
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
