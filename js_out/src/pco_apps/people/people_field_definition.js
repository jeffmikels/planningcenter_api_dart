/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.827635
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People FieldDefinition Object
/// 
/// - Application:        people
/// - Id:                 field_definition
/// - Type:               FieldDefinition
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/field_definitions
/// 
/// Description:
/// A field definition represents a custom field -- its name, data type, etc.
/// 
/// Example:
/// ```json
/// {
///   "type": "FieldDefinition",
///   "id": "1",
///   "attributes": {
///     "data_type": "string",
///     "name": "string",
///     "sequence": 1,
///     "slug": "string",
///     "config": "string",
///     "deleted_at": "2000-01-01T12:00:00Z",
///     "tab_id": "primary_key"
///   },
///   "relationships": {
///     "tab": {
///       "data": {
///         "type": "Tab",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - field_options: include associated field_options 
/// - tab: include associated tab 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `config`: (URLParameter), query on a specific config, example: ?where[config]=string
/// - `data_type`: (URLParameter), query on a specific data_type, example: ?where[data_type]=string
/// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
/// - `tab_id`: (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `config`: (URLParameter), prefix with a hyphen (-config) to reverse the order
/// - `data_type`: (URLParameter), prefix with a hyphen (-data_type) to reverse the order
/// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
/// - `tab_id`: (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
///
/// All Outbound Edges:
/// - `fieldoption-fielddefinition-field_options`: https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options
/// - `tab-fielddefinition-tab`: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
/// 
/// All Inbound Edges:
/// - `fielddefinition-fielddatum-field_definition`: https://api.planningcenteronline.com/people/v2/field_data/1/field_definition
/// - `fielddefinition-organization-field_definitions`: https://api.planningcenteronline.com/people/v2/field_definitions
/// - `fielddefinition-tab-field_definitions`: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleFieldDefinition extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'FieldDefinition';
  static kTypeId = 'field_definition';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'fielddefinition-organization-field_definitions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/field_definitions';

  /// possible includes with parameter ?include=a,b
  /// - `field_options`: include associated field_options 
  /// - `tab`: include associated tab 
  static get canInclude() { return ['field_options','tab'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `config`: (URLParameter), query on a specific config, example: ?where[config]=string
  /// - `data_type`: (URLParameter), query on a specific data_type, example: ?where[data_type]=string
  /// - `deleted_at`: (URLParameter), query on a specific deleted_at, example: ?where[deleted_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  /// - `tab_id`: (URLParameter), query on a specific tab_id, example: ?where[tab_id]=primary_key
  static get canQuery() { return ['config','data_type','deleted_at','name','sequence','slug','tab_id'] }

  /// possible orderings with parameter ?order=
  /// - `config`: (URLParameter), prefix with a hyphen (-config) to reverse the order
  /// - `data_type`: (URLParameter), prefix with a hyphen (-data_type) to reverse the order
  /// - `deleted_at`: (URLParameter), prefix with a hyphen (-deleted_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
  /// - `tab_id`: (URLParameter), prefix with a hyphen (-tab_id) to reverse the order
  static get canOrderBy() { return ['config','data_type','deleted_at','name','sequence','slug','tab_id'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleFieldDefinition.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleFieldDefinition.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleFieldDefinition.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDataType() { return 'data_type' }
  static get kName() { return 'name' }
  static get kSequence() { return 'sequence' }
  static get kSlug() { return 'slug' }
  static get kConfig() { return 'config' }
  static get kDeletedAt() { return 'deleted_at' }
  static get kTabId() { return 'tab_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['data_type','name','sequence','slug','config','deleted_at']; }

  // @override
  get updateAllowed() { return ['data_type','name','sequence','slug','config','deleted_at']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get dataType() { return attributes[this.constructor.kDataType] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get slug() { return attributes[this.constructor.kSlug] ?? ''; }
  get config() { return attributes[this.constructor.kConfig] ?? ''; }
  get deletedAt() { return Date.parse(attributes[this.constructor.kDeletedAt] ?? 0); }
  get tabId() { return attributes[this.constructor.kTabId] ?? ''; }
  

  // setters for object attributes

  set dataType(s) {attributes[this.constructor.kDataType] = s;}
  set name(s) {attributes[this.constructor.kName] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  set slug(s) {attributes[this.constructor.kSlug] = s;}
  set config(s) {attributes[this.constructor.kConfig] = s;}
  set deletedAt(d) { attributes[this.constructor.kDeletedAt] = d.toISOString(); }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleFieldDefinition._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleFieldDefinition({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleFieldDefinition] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/field_definitions`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleFieldDefinition.kPcoApplication, PcoPeopleFieldDefinition.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/field_definitions`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions`
  /// 
  /// Available Query Filters:
  /// - `include_deleted`
  /// By default, deleted fields are not included. Pass filter=include_deleted to include them.
  /// 
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_definitions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting one)
  /// using a path like this: `/people/v2/field_data/${fieldDataId}/field_definition`
  static getFromFieldData(fieldDataId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_data/${fieldDataId}/field_definition`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `/people/v2/tabs/${tabId}/field_definitions`
  /// 
  /// Available Query Filters:
  /// - `with_deleted`
  static getFromTab(tabId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/tabs/${tabId}/field_definitions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/field_options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let url = `${apiEndpoint}/field_options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/field_definitions/1/tab`
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
