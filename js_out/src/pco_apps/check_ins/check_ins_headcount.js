/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.562529
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Headcount Object
/// 
/// - Application:        check-ins
/// - Id:                 headcount
/// - Type:               Headcount
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/headcounts
/// 
/// Description:
/// A tally of attendees for a given event time and attendance type.
/// If one does not exist, the count may have been zero.
/// 
/// Example:
/// ```json
/// {
///   "type": "Headcount",
///   "id": "1",
///   "attributes": {
///     "total": 1,
///     "updated_at": "2000-01-01T12:00:00Z",
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "attendance_type": {
///       "data": {
///         "type": "AttendanceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - attendance_type: include associated attendance_type 
/// - event_time: include associated event_time 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `total`: (URLParameter), prefix with a hyphen (-total) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `attendancetype-headcount-attendance_type`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
/// - `eventtime-headcount-event_time`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time
/// 
/// All Inbound Edges:
/// - `headcount-attendancetype-headcounts`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
/// - `headcount-eventtime-headcounts`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/headcounts
/// - `headcount-organization-headcounts`: https://api.planningcenteronline.com/check-ins/v2/headcounts
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsHeadcount extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Headcount';
  static kTypeId = 'headcount';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'headcount-organization-headcounts';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/headcounts';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/headcounts';

  /// possible includes with parameter ?include=a,b
  /// - `attendance_type`: include associated attendance_type 
  /// - `event_time`: include associated event_time 
  static get canInclude() { return ['attendance_type','event_time'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static get canQuery() { return ['created_at','updated_at'] }

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `total`: (URLParameter), prefix with a hyphen (-total) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static get canOrderBy() { return ['created_at','total','updated_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsHeadcount.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsHeadcount.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsHeadcount.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kTotal() { return 'total' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCreatedAt() { return 'created_at' }


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

  get total() { return attributes[this.constructor.kTotal] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsHeadcount._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsHeadcount({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/headcounts`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/headcounts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/${attendanceTypeId}/headcounts`
  static getFromAttendanceType(attendanceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/attendance_types/${attendanceTypeId}/headcounts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/${eventTimeId}/headcounts`
  static getFromEventTime(eventTimeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/event_times/${eventTimeId}/headcounts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsAttendanceType] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getAttendanceType({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    let url = `${apiEndpoint}/attendance_type`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts/1/event_time`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventTime({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let url = `${apiEndpoint}/event_time`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
