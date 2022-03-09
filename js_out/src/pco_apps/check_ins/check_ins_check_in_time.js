/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.555342
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns CheckInTime Object
/// 
/// - Application:        check-ins
/// - Id:                 check_in_time
/// - Type:               CheckInTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// 
/// Description:
/// A CheckInTime combines an EventTime and a Location, and associates it with
/// the parent CheckIn.
/// 
/// Example:
/// ```json
/// {
///   "type": "CheckInTime",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "has_validated": true,
///     "errors": [],
///     "services_integrated": true
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     },
///     "check_in": {
///       "data": {
///         "type": "CheckIn",
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
/// - `checkintime-checkin-check_in_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsCheckInTime extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'CheckInTime';
  static kTypeId = 'check_in_time';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'checkintime-checkin-check_in_times';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';

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
  get shortestEdgePath() { return PcoCheckInsCheckInTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsCheckInTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsCheckInTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kKind() { return 'kind' }
  static get kHasValidated() { return 'has_validated' }
  static get kErrors() { return 'errors' }
  static get kServicesIntegrated() { return 'services_integrated' }


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

  get kind() { return attributes[this.constructor.kKind] ?? ''; }
  get isHasValidated() { return attributes[this.constructor.kHasValidated] == true; }
  get errors() { return attributes[this.constructor.kErrors] ?? []; }
  get isServicesIntegrated() { return attributes[this.constructor.kServicesIntegrated] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsCheckInTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsCheckInTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/check_in_times`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/check_in_times`;
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
