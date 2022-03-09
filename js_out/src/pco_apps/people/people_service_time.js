/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.027404
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO People ServiceTime Object
/// 
/// - Application:        people
/// - Id:                 service_time
/// - Type:               ServiceTime
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// Description:
/// A ServiceTime Resource
/// 
/// Example:
/// ```json
/// {
///   "type": "ServiceTime",
///   "id": "1",
///   "attributes": {
///     "start_time": 1,
///     "day": "value",
///     "description": "string"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
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
/// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// All Actions:
/// NONE
///
export class PcoPeopleServiceTime extends PcoResource {
  static kPcoApplication = 'people';
  static kTypeString = 'ServiceTime';
  static kTypeId = 'service_time';
  static kApiVersion = '2021-08-17';
  static kShortestEdgeId = 'servicetime-campus-service_times';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
  static get canOrderBy() { return ['time'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoPeopleServiceTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoPeopleServiceTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoPeopleServiceTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStartTime() { return 'start_time' }
  static get kDay() { return 'day' }
  static get kDescription() { return 'description' }


  // getters and setters
  // @override
  get createAllowed() { return ['start_time','day','description']; }

  // @override
  get updateAllowed() { return ['start_time','day','description']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get startTime() { return attributes[this.constructor.kStartTime] ?? 0; }
  get day() { return attributes[this.constructor.kDay] ?? ''; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  

  // setters for object attributes

  set startTime(n) { attributes[this.constructor.kStartTime] = n; }
  
  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  set day(s) {attributes[this.constructor.kDay] = s;}
  set description(s) {attributes[this.constructor.kDescription] = s;}
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoPeopleServiceTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoPeopleServiceTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoPeopleServiceTime] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/campuses/${campusId}/service_times`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(campusId) {
    super(PcoPeopleServiceTime.kPcoApplication, PcoPeopleServiceTime.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/people/v2/campuses/${campusId}/service_times`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/${campusId}/service_times`
  static getFromCampus(campusId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/people/v2/campuses/${campusId}/service_times`;
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
