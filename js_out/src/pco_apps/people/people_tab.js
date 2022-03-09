/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.054125
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Tab Object
/// 
/// - Application:        people
/// - Id:                 tab
/// - Type:               Tab
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/tabs
/// 
/// Description:
/// A tab is a custom tab and groups like field definitions.
/// 
/// Example:
/// ```json
/// {
///   "type": "Tab",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "sequence": 1,
///     "slug": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - field_definitions: include associated field_definitions 
/// - field_options: include associated field_options 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
/// 
/// Possible orderings with parameter ?order=
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
/// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
///
/// All Outbound Edges:
/// - `fielddefinition-tab-field_definitions`: https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions
/// - `fieldoption-tab-field_options`: https://api.planningcenteronline.com/people/v2/tabs/1/field_options
/// 
/// All Inbound Edges:
/// - `tab-fielddatum-tab`: https://api.planningcenteronline.com/people/v2/field_data/1/tab
/// - `tab-fielddefinition-tab`: https://api.planningcenteronline.com/people/v2/field_definitions/1/tab
/// - `tab-organization-tabs`: https://api.planningcenteronline.com/people/v2/tabs
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleTab extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Tab';
  static kTypeId = 'tab';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'tab-organization-tabs';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/tabs';

  /// possible includes with parameter ?include=a,b
  /// - `field_definitions`: include associated field_definitions 
  /// - `field_options`: include associated field_options 
  static get canInclude() { return ['field_definitions','field_options'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `sequence`: (URLParameter), query on a specific sequence, example: ?where[sequence]=1
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  static get canQuery() { return ['name','sequence','slug'] }

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `sequence`: (URLParameter), prefix with a hyphen (-sequence) to reverse the order
  /// - `slug`: (URLParameter), prefix with a hyphen (-slug) to reverse the order
  static get canOrderBy() { return ['name','sequence','slug'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleTab.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleTab.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleTab.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kSequence() { return 'sequence' }
  static get kSlug() { return 'slug' }


  // getters and setters
  // @override
  get createAllowed() { return ['name','sequence','slug']; }

  // @override
  get updateAllowed() { return ['name','sequence','slug']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get sequence() { return attributes[this.constructor.kSequence] ?? 0; }
  get slug() { return attributes[this.constructor.kSlug] ?? ''; }
  

  // setters for object attributes

  set name(s) {attributes[this.constructor.kName] = s;}
  set sequence(n) { attributes[this.constructor.kSequence] = n; }
  set slug(s) {attributes[this.constructor.kSlug] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleTab._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleTab({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleTab] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/tabs`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleTab.kPcoApplication, PcoPeopleTab.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/tabs`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/tabs`
  /// 
  /// Available Query Filters:
  /// - `with_field_definitions`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/tabs`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_data/${fieldDataId}/tab`
  static getFromFieldData(fieldDataId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_data/${fieldDataId}/tab`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleTab] objects (expecting many)
  /// using a path like this: `/people/v2/field_definitions/${fieldDefinitionId}/tab`
  static getFromFieldDefinition(fieldDefinitionId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleTab.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/field_definitions/${fieldDefinitionId}/tab`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldDefinition] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_definitions`
  /// 
  /// Available Query Filters:
  /// - `with_deleted`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldDefinitions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldDefinition.canInclude;
    let url = `${apiEndpoint}/field_definitions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleFieldOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/tabs/1/field_options`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getFieldOptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleFieldOption.canInclude;
    let url = `${apiEndpoint}/field_options`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
