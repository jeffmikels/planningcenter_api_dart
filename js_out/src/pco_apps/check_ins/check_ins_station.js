/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.605213
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Station Object
/// 
/// - Application:        check-ins
/// - Id:                 station
/// - Type:               Station
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/stations
/// 
/// Description:
/// A device where people can be checked in.
/// A device may also be connected to a printer
/// and print labels for itself or other stations.
/// 
/// Example:
/// ```json
/// {
///   "type": "Station",
///   "id": "1",
///   "attributes": {
///     "online": true,
///     "mode": 1,
///     "name": "string",
///     "timeout_seconds": 1,
///     "input_type": "value",
///     "input_type_options": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - event: include associated event 
/// - location: include associated location 
/// - print_station: include associated print_station 
/// - theme: include associated theme 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
/// - `checkin-station-checked_in_at_check_ins`: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
/// - `event-station-event`: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
/// - `location-station-location`: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
/// - `theme-station-theme`: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
/// 
/// All Inbound Edges:
/// - `station-checkin-checked_in_at`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
/// - `station-organization-stations`: https://api.planningcenteronline.com/check-ins/v2/stations
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
/// 
/// All Actions:
/// NONE
///
export class PcoCheckInsStation extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Station';
  static kTypeId = 'station';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = 'station-organization-stations';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/stations';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  /// - `location`: include associated location 
  /// - `print_station`: include associated print_station 
  /// - `theme`: include associated theme 
  static get canInclude() { return ['event','location','print_station','theme'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCheckInsStation.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsStation.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsStation.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kOnline() { return 'online' }
  static get kMode() { return 'mode' }
  static get kName() { return 'name' }
  static get kTimeoutSeconds() { return 'timeout_seconds' }
  static get kInputType() { return 'input_type' }
  static get kInputTypeOptions() { return 'input_type_options' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kCheckInCount() { return 'check_in_count' }


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

  get isOnline() { return attributes[this.constructor.kOnline] == true; }
  get mode() { return attributes[this.constructor.kMode] ?? 0; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get timeoutSeconds() { return attributes[this.constructor.kTimeoutSeconds] ?? 0; }
  get inputType() { return attributes[this.constructor.kInputType] ?? ''; }
  get inputTypeOptions() { return attributes[this.constructor.kInputTypeOptions] ?? ''; }
  get checkInCount() { return attributes[this.constructor.kCheckInCount] ?? 0; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsStation._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsStation({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations`
  static get({id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/checked_in_at`
  static getCheckedInAtFromCheckIn(checkInId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/checked_in_at`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/${checkInId}/check_in_group/${checkInGroupId}/print_station`
  static getPrintStationFromCheckInAndCheckInGroup(checkInId, checkInGroupId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/check_ins/${checkInId}/check_in_group/${checkInGroupId}/print_station`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/${stationId}/print_station`
  static getPrintStationFromStation(stationId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/stations/${stationId}/print_station`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups`
  /// 
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckInGroups({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckInGroup.canInclude;
    let url = `${apiEndpoint}/check_in_groups`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins`
  /// 
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getCheckedInAtCheckIns({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/checked_in_at_check_ins`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/location`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLocation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLocation.canInclude;
    let url = `${apiEndpoint}/location`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPrintStation({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let url = `${apiEndpoint}/print_station`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/theme`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTheme({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    let url = `${apiEndpoint}/theme`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
