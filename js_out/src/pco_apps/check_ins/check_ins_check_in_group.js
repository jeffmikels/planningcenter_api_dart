/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.554560
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns CheckInGroup Object
/// 
/// - Application:        check-ins
/// - Id:                 check_in_group
/// - Type:               CheckInGroup
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// 
/// Description:
/// When one or more people check in, they're grouped in a `CheckInGroup`.
/// These check-ins all have the same "checked-in by" person. `CheckInGroup` is also
/// the basis for label printing.
/// 
/// `print_status` may be:
/// 
/// - `ready`: This group isn't printed or canceled yet
/// - `printed`: This group was successfully printed at a station
/// - `canceled`: This group was canceled at a station
/// - `skipped`: This group had no labels to print, so it was never printed.
/// 
/// Example:
/// ```json
/// {
///   "type": "CheckInGroup",
///   "id": "1",
///   "attributes": {
///     "name_labels_count": 1,
///     "security_labels_count": 1,
///     "check_ins_count": 1,
///     "print_status": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - check_ins: include associated check_ins 
/// - event_period: include associated event_period 
/// - print_station: include associated print_station 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `checkin-checkingroup-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins
/// - `eventperiod-checkingroup-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
/// 
/// All Inbound Edges:
/// - `checkingroup-checkin-check_in_group`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsCheckInGroup extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'CheckInGroup';
  static kTypeId = 'check_in_group';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'checkingroup-station-check_in_groups';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group';

  /// possible includes with parameter ?include=a,b
  /// - `check_ins`: include associated check_ins 
  /// - `event_period`: include associated event_period 
  /// - `print_station`: include associated print_station 
  static get canInclude() { return ['check_ins','event_period','print_station'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsCheckInGroup.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsCheckInGroup.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsCheckInGroup.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kNameLabelsCount() { return 'name_labels_count' }
  static get kSecurityLabelsCount() { return 'security_labels_count' }
  static get kCheckInsCount() { return 'check_ins_count' }
  static get kPrintStatus() { return 'print_status' }
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

  get nameLabelsCount() { return attributes[this.constructor.kNameLabelsCount] ?? 0; }
  get securityLabelsCount() { return attributes[this.constructor.kSecurityLabelsCount] ?? 0; }
  get checkInsCount() { return attributes[this.constructor.kCheckInsCount] ?? 0; }
  get printStatus() { return attributes[this.constructor.kPrintStatus] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsCheckInGroup._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsCheckInGroup({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/check_in_group`
  static getFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/check_in_group`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/check_in_groups`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  static getFromStation(stationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/check_in_groups`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/check_ins`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckIns({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/check_ins`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/event_period`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventPeriod({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventPeriod.canInclude;
    let url = `${apiEndpoint}/event_period`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPrintStation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let url = `${apiEndpoint}/print_station`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
