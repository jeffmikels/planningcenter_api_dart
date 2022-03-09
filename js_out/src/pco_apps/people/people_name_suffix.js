/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.850562
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People NameSuffix Object
/// 
/// - Application:        people
/// - Id:                 name_suffix
/// - Type:               NameSuffix
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/name_suffixes
/// 
/// Description:
/// A name suffix is one of Sr., Jr., etc.
/// 
/// Example:
/// ```json
/// {
///   "type": "NameSuffix",
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
/// - `namesuffix-organization-name_suffixes`: https://api.planningcenteronline.com/people/v2/name_suffixes
/// - `namesuffix-person-name_suffix`: https://api.planningcenteronline.com/people/v2/people/1/name_suffix
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleNameSuffix extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'NameSuffix';
  static kTypeId = 'name_suffix';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'namesuffix-organization-name_suffixes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/name_suffixes';

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
  get shortestEdgePath() { return PcoPeopleNameSuffix.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleNameSuffix.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleNameSuffix.kApiVersion; }

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
  // PcoPeopleNameSuffix._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleNameSuffix({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleNameSuffix] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/name_suffixes`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor() {
    super(PcoPeopleNameSuffix.kPcoApplication, PcoPeopleNameSuffix.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/name_suffixes`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/name_suffixes`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/name_suffixes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleNameSuffix] objects (expecting many)
  /// using a path like this: `/people/v2/people/${peopleId}/name_suffix`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleNameSuffix.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/people/${peopleId}/name_suffix`;
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
