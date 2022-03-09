/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.586472
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO CheckIns Organization Object
/// 
/// - Application:        check-ins
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2
/// 
/// Description:
/// An organization which has people and events.
/// This contains its date format & time zone preferences.
/// 
/// Example:
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "date_format_pattern": "string",
///     "time_zone_olson": "string",
///     "name": "string",
///     "daily_check_ins": 1,
///     "time_zone": "string",
///     "avatar_url": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
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
/// NONE
///
/// All Outbound Edges:
/// - `checkin-organization-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins
/// - `eventtime-organization-event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times
/// - `event-organization-events`: https://api.planningcenteronline.com/check-ins/v2/events
/// - `headcount-organization-headcounts`: https://api.planningcenteronline.com/check-ins/v2/headcounts
/// - `label-organization-labels`: https://api.planningcenteronline.com/check-ins/v2/labels
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `person-organization-people`: https://api.planningcenteronline.com/check-ins/v2/people
/// - `station-organization-stations`: https://api.planningcenteronline.com/check-ins/v2/stations
/// - `theme-organization-themes`: https://api.planningcenteronline.com/check-ins/v2/themes
/// 
/// All Inbound Edges:
/// - `organization-person-organization`: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
/// 
/// All Actions:
/// - `build_check_in_times_for_prepared_check_in`: https://api.planningcenteronline.com/check-ins/v2
/// - `build_recommended_check_in_times`: https://api.planningcenteronline.com/check-ins/v2
/// - `bulk_check_in`: https://api.planningcenteronline.com/check-ins/v2
///
export class PcoCheckInsOrganization extends PcoResource {
  static kPcoApplication = 'check-ins';
  static kTypeString = 'Organization';
  static kTypeId = 'organization';
  static kApiVersion = '2019-07-17';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/check-ins/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2';

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
  get shortestEdgePath() { return PcoCheckInsOrganization.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCheckInsOrganization.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCheckInsOrganization.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDateFormatPattern() { return 'date_format_pattern' }
  static get kTimeZoneOlson() { return 'time_zone_olson' }
  static get kName() { return 'name' }
  static get kDailyCheckIns() { return 'daily_check_ins' }
  static get kTimeZone() { return 'time_zone' }
  static get kAvatarUrl() { return 'avatar_url' }
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

  get dateFormatPattern() { return attributes[this.constructor.kDateFormatPattern] ?? ''; }
  get timeZoneOlson() { return attributes[this.constructor.kTimeZoneOlson] ?? ''; }
  get name() { return attributes[this.constructor.kName] ?? ''; }
  get dailyCheckIns() { return attributes[this.constructor.kDailyCheckIns] ?? 0; }
  get timeZone() { return attributes[this.constructor.kTimeZone] ?? ''; }
  get avatarUrl() { return attributes[this.constructor.kAvatarUrl] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCheckInsOrganization._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCheckInsOrganization({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsOrganization] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/${peopleId}/organization`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsOrganization.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/check-ins/v2/people/${peopleId}/organization`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins`
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
  getCheckIns({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsCheckIn.canInclude;
    let url = `${apiEndpoint}/check_ins`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEventTimes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEventTime.canInclude;
    let url = `${apiEndpoint}/event_times`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events`
  /// 
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvents({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsEvent.canInclude;
    let url = `${apiEndpoint}/events`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getHeadcounts({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsHeadcount.canInclude;
    let url = `${apiEndpoint}/headcounts`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getLabels({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsLabel.canInclude;
    let url = `${apiEndpoint}/labels`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPas] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPasses({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPas.canInclude;
    let url = `${apiEndpoint}/passes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPeople({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsPerson.canInclude;
    let url = `${apiEndpoint}/people`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getStations({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsStation.canInclude;
    let url = `${apiEndpoint}/stations`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/themes`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getThemes({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    let url = `${apiEndpoint}/themes`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `build_check_in_times_for_prepared_check_in`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  buildCheckInTimesForPreparedCheckIn(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/v2`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `build_recommended_check_in_times`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  buildRecommendedCheckInTimes(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/v2`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }

  /// ACTION: `bulk_check_in`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  /// returns an object like [PlanningCenterApiResponse] or [PlanningCenterApiError]
  /// [data] should be a plain Javascript object
  bulkCheckIn(data) {
    if (this.id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = `${this.apiEndpoint}/v2`;
    return this.api.call({url, verb:'post', data, apiVersion: this.apiVersion});
  }


}
