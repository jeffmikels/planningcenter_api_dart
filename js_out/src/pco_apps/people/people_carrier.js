/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.814575
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People Carrier Object
/// 
/// - Application:        people
/// - Id:                 carrier
/// - Type:               Carrier
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/carriers
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Carrier",
///   "id": "1",
///   "attributes": {
///     "value": "string",
///     "name": "string",
///     "international": true
///   },
///   "relationships": {}
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
/// - `international`: (URLParameter), prefix with a hyphen (-international) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `carrier-organization-carriers`: https://api.planningcenteronline.com/people/v2/carriers
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleCarrier extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'Carrier';
  static kTypeId = 'carrier';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'carrier-organization-carriers';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/carriers';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/carriers';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `international`: (URLParameter), prefix with a hyphen (-international) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static get canOrderBy() { return ['international','name'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleCarrier.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleCarrier.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleCarrier.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kValue() { return 'value' }
  static get kName() { return 'name' }
  static get kInternational() { return 'international' }


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

  get value() { return attributes[this.constructor.kValue] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get isInternational() { return attributes[this.constructor.kInternational] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleCarrier._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleCarrier({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleCarrier] objects (expecting many)
  /// using a path like this: `/people/v2/carriers`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleCarrier.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/carriers`;
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
