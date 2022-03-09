/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.551503
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns AttendanceType Object
/// 
/// - Application:        check-ins
/// - Id:                 attendance_type
/// - Type:               AttendanceType
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/attendance_types
/// 
/// Description:
/// A kind of attendee which is tracked by _headcount_, not by check-in.
/// 
/// Example:
/// ```json
/// {
///   "type": "AttendanceType",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "color": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "limit": 1
///   },
///   "relationships": {
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-attendancetype-event`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
/// - `headcount-attendancetype-headcounts`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
/// 
/// All Inbound Edges:
/// - `attendancetype-event-attendance_types`: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
/// - `attendancetype-headcount-attendance_type`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsAttendanceType extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'AttendanceType';
  static kTypeId = 'attendance_type';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/attendance_types';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/attendance_types';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  static get canInclude() { return ['event'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static get canQuery() { return ['id','name'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsAttendanceType.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsAttendanceType.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsAttendanceType.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kName() { return 'name' }
  static get kColor() { return 'color' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kLimit() { return 'limit' }


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

  get name() { return attributes[this.constructor.kName] ?? ''; }
  get color() { return attributes[this.constructor.kColor] ?? ''; }
  get limit() { return attributes[this.constructor.kLimit] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsAttendanceType._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsAttendanceType({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsAttendanceType] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/${eventId}/attendance_types`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/events/${eventId}/attendance_types`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsAttendanceType] objects (expecting one)
  /// using a path like this: `/check-ins/v2/headcounts/${headcountId}/attendance_type`
  static getFromHeadcount(headcountId, { query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsAttendanceType.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/headcounts/${headcountId}/attendance_type`;
    
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHeadcounts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let url = `${apiEndpoint}/headcounts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
