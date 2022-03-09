/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.822742
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People FieldDatum Object
/// 
/// - Application:        people
/// - Id:                 field_datum
/// - Type:               FieldDatum
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_data
/// 
/// Description:
/// A field datum is an individual piece of data for a custom field.
/// 
/// Example:
/// ```json
/// {
///   "type": "FieldDatum",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "file": "string",
///     "file_size": 1,
///     "file_content_type": "string",
///     "file_name": "string"
///   },
///   "relationships": {
///     "field_definition": {
///       "data": {
///         "type": "FieldDefinition",
///         "id": "1"
///       }
///     },
///     "customizable": {
///       "data": {
///         "type": "Customizable",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - field_definition: include associated field_definition 
/// - field_option: include associated field_option 
/// - tab: include associated tab 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
/// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
/// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
/// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// Possible orderings with parameter ?order=
/// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
/// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
/// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
/// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// All Outbound Edges:
/// - `fielddefinition-fielddatum-field_definition`: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
/// - `fieldoption-fielddatum-field_option`: https://api.planningcenteronline.com/people/v2/field_data/1/field_option
/// - `person-fielddatum-person`: https://api.planningcenteronline.com/people/v2/field_data/1/person
/// - `tab-fielddatum-tab`: https://api.planningcenteronline.com/people/v2/field_data/1/tab
/// 
/// All Inbound Edges:
/// - `fielddatum-organization-field_data`: https://api.planningcenteronline.com/people/v2/field_data
/// - `fielddatum-person-field_data`: https://api.planningcenteronline.com/people/v2/people/1/field_data
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleFieldDatum extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FieldDatum';
  static kTypeId = 'field_datum';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'fielddatum-organization-field_data';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_data';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/field_data';

  /// possible includes with parameter ?include=a,b
  /// - `field_definition`: include associated field_definition 
  /// - `field_option`: include associated field_option 
  /// - `tab`: include associated tab 
  static get canInclude() { return ['field_definition','field_option','tab'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `file`: (URLParameter), query on a specific file, example: ?where[file]=string
  /// - `file_content_type`: (URLParameter), query on a specific file_content_type, example: ?where[file_content_type]=string
  /// - `file_name`: (URLParameter), query on a specific file_name, example: ?where[file_name]=string
  /// - `file_size`: (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static get canQuery() { return ['file','file_content_type','file_name','file_size','value'] }

  /// possible orderings with parameter ?order=
  /// - `file`: (URLParameter), prefix with a hyphen (-file) to reverse the order
  /// - `file_content_type`: (URLParameter), prefix with a hyphen (-file_content_type) to reverse the order
  /// - `file_name`: (URLParameter), prefix with a hyphen (-file_name) to reverse the order
  /// - `file_size`: (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static get canOrderBy() { return ['file','file_content_type','file_name','file_size','value'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFieldDatum.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFieldDatum.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFieldDatum.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kValue() { return 'value' }
  static get kFile() { return 'file' }
  static get kFileSize() { return 'file_size' }
  static get kFileContentType() { return 'file_content_type' }
  static get kFileName() { return 'file_name' }
  static get kFieldDefinitionId() { return 'field_definition_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['value','field_definition_id']; }

  // @override
  get updateAllowed() { return ['value','field_definition_id']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get value() { return attributes[this.constructor.kValue] ?? ''; }
  get file() { return attributes[this.constructor.kFile] ?? ''; }
  get fileSize() { return attributes[this.constructor.kFileSize] ?? 0; }
  get fileContentType() { return attributes[this.constructor.kFileContentType] ?? ''; }
  get fileName() { return attributes[this.constructor.kFileName] ?? ''; }
  

  // setters for object attributes

  set value(s) {attributes[this.constructor.kValue] = s;}
  

  // additional setters and getters for assignable values

  get fieldDefinitionId() { return attributes[this.constructor.kFieldDefinitionId] ?? ''; }
  set fieldDefinitionId(s) {attributes[this.constructor.kFieldDefinitionId] = s;}
  



  // Class Constructors
  // PcoPeopleFieldDatum._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFieldDatum({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleFieldDatum] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/field_data`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleFieldDatum.kPcoApplication, PcoPeopleFieldDatum.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/field_data`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting many)
  /// using a path like this: `/people/v2/field_data`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_data`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDatum] objects (expecting one)
  /// using a path like this: `/people/v2/people/${peopleId}/field_data`
  static getFieldDataFromPeople(peopleId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDatum.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/field_data`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_definition`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldDefinition({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let url = `${apiEndpoint}/field_definition`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/field_option`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldOption({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let url = `${apiEndpoint}/field_option`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeoplePerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_data/1/tab`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTab({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    let url = `${apiEndpoint}/tab`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
