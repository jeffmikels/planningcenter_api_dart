/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.596472
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Pass Object
/// 
/// - Application:        check-ins
/// - Id:                 pass
/// - Type:               Pass
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/passes
/// 
/// Description:
/// Enables quick lookup of a person via barcode reader.
/// 
/// Example:
/// ```json
/// {
///   "type": "Pass",
///   "id": "1",
///   "attributes": {
///     "code": "string",
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
/// 
/// All Inbound Edges:
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsPas extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Pass';
  static kTypeId = 'pass';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'pass-organization-passes';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/passes';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
  static get canQuery() { return ['code'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsPas.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsPas.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsPas.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kCode() { return 'code' }
  static get kKind() { return 'kind' }
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

  get code() { return attributes[this.constructor.kCode] ?? ''; }
  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsPas._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsPas({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/passes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/${peopleId}/passes`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/people/${peopleId}/passes`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
