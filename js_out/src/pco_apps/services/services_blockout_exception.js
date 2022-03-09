/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.330105
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services BlockoutException Object
/// 
/// - Application:        services
/// - Id:                 blockout_exception
/// - Type:               BlockoutException
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// Description:
/// A single exception for the dates generated from the blockout
/// 
/// Example:
/// ```json
/// {
///   "type": "BlockoutException",
///   "id": "1",
///   "attributes": {
///     "date": "2000-01-01",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "blockout": {
///       "data": {
///         "type": "Blockout",
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
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// All Actions:
/// NONE
///
export class PcoServicesBlockoutException extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'BlockoutException';
  static kTypeId = 'blockout_exception';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'blockoutexception-blockout-blockout_exceptions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesBlockoutException.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesBlockoutException.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesBlockoutException.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDate() { return 'date' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }


  // getters and setters
  // @override
  get createAllowed() { return ['date']; }

  // @override
  get updateAllowed() { return []; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return false; }

  // @override
  get canDestroy() { return false; }

  // getters for object attributes

  get date() { return attributes[this.constructor.kDate] ?? ''; }
  

  // setters for object attributes

  set date(s) {attributes[this.constructor.kDate] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesBlockoutException._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesBlockoutException({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesBlockoutException] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/blockouts/${blockoutId}/blockout_exceptions`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId,blockoutId) {
    super(PcoServicesBlockoutException.kPcoApplication, PcoServicesBlockoutException.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/blockouts/${blockoutId}/blockout_exceptions`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/blockouts/${blockoutId}/blockout_exceptions`
  static getFromPeopleAndBlockout(peopleId, blockoutId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesBlockoutException.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/blockouts/${blockoutId}/blockout_exceptions`;
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
