/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.849452
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People NamePrefix Object
/// 
/// - Application:        people
/// - Id:                 name_prefix
/// - Type:               NamePrefix
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_prefixes
/// 
/// Description:
/// A name prefix is one of Mr., Mrs., etc.
/// 
/// Example:
/// ```json
/// {
///   "type": "NamePrefix",
///   "id": "1",
///   "attributes": {
///     "value": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
/// 
/// Possible orderings with parameter ?order=
/// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `nameprefix-organization-name_prefixes`: https://api.planningcenteronline.com/people/v2/name_prefixes
/// - `nameprefix-person-name_prefix`: https://api.planningcenteronline.com/people/v2/people/1/name_prefix
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNamePrefix extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'NamePrefix';
  static kTypeId = 'name_prefix';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'nameprefix-organization-name_prefixes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_prefixes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/name_prefixes';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `value`: (URLParameter), query on a specific value, example: ?where[value]=string
  static get canQuery() { return ['value'] }

  /// possible orderings with parameter ?order=
  /// - `value`: (URLParameter), prefix with a hyphen (-value) to reverse the order
  static get canOrderBy() { return ['value'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleNamePrefix.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNamePrefix.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNamePrefix.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kValue() { return 'value' }


  // getters and setters
  // @override
  get createAllowed() { return ['value']; }

  // @override
  get updateAllowed() { return ['value']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get value() { return attributes[this.constructor.kValue] ?? ''; }
  

  // setters for object attributes

  set value(s) {attributes[this.constructor.kValue] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleNamePrefix._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNamePrefix({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleNamePrefix] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/name_prefixes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleNamePrefix.kPcoApplication, PcoPeopleNamePrefix.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/name_prefixes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/name_prefixes`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/name_prefixes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNamePrefix] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/name_prefix`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNamePrefix.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/name_prefix`;
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
