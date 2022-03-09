/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.326770
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services Blockout Object
/// 
/// - Application:        services
/// - Id:                 blockout
/// - Type:               Blockout
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// 
/// Description:
/// An object representing a blockout date, and an optional recurrence pattern
/// 
/// Example:
/// ```json
/// {
///   "type": "Blockout",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "group_identifier": "string",
///     "organization_name": "string",
///     "reason": "string",
///     "repeat_frequency": "string",
///     "repeat_interval": "string",
///     "repeat_period": "string",
///     "settings": "string",
///     "time_zone": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "repeat_until": "2000-01-01",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "share": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
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
/// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `blockoutdate-blockout-blockout_dates`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
/// 
/// All Inbound Edges:
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// 
/// All Actions:
/// NONE
///
export class PcoServicesBlockout extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'Blockout';
  static kTypeId = 'blockout';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'blockout-person-blockouts';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/blockouts';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
  static get canQuery() { return ['group_identifier'] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesBlockout.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesBlockout.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesBlockout.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDescription() { return 'description' }
  static get kGroupIdentifier() { return 'group_identifier' }
  static get kOrganizationName() { return 'organization_name' }
  static get kReason() { return 'reason' }
  static get kRepeatFrequency() { return 'repeat_frequency' }
  static get kRepeatInterval() { return 'repeat_interval' }
  static get kRepeatPeriod() { return 'repeat_period' }
  static get kSettings() { return 'settings' }
  static get kTimeZone() { return 'time_zone' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kRepeatUntil() { return 'repeat_until' }
  static get kStartsAt() { return 'starts_at' }
  static get kEndsAt() { return 'ends_at' }
  static get kShare() { return 'share' }


  // getters and setters
  // @override
  get createAllowed() { return ['reason','repeat_frequency','repeat_interval','repeat_period','share','repeat_until','starts_at','ends_at']; }

  // @override
  get updateAllowed() { return ['reason','repeat_frequency','repeat_interval','repeat_period','share','repeat_until','starts_at','ends_at']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get groupIdentifier() { return attributes[this.constructor.kGroupIdentifier] ?? ''; }
  get organizationName() { return attributes[this.constructor.kOrganizationName] ?? ''; }
  get reason() { return attributes[this.constructor.kReason] ?? ''; }
  get repeatFrequency() { return attributes[this.constructor.kRepeatFrequency] ?? ''; }
  get repeatInterval() { return attributes[this.constructor.kRepeatInterval] ?? ''; }
  get repeatPeriod() { return attributes[this.constructor.kRepeatPeriod] ?? ''; }
  get settings() { return attributes[this.constructor.kSettings] ?? ''; }
  get timeZone() { return attributes[this.constructor.kTimeZone] ?? ''; }
  get repeatUntil() { return attributes[this.constructor.kRepeatUntil] ?? ''; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get isShare() { return attributes[this.constructor.kShare] == true; }
  

  // setters for object attributes

  set reason(s) {attributes[this.constructor.kReason] = s;}
  
  /// Possible values:
  /// 
  /// - no_repeat
  /// 
  /// - every_1
  /// 
  /// - every_2
  /// 
  /// - every_3
  /// 
  /// - every_4
  /// 
  /// - every_5
  /// 
  /// - every_6
  /// 
  /// - every_7
  /// 
  /// - every_8
  set repeatFrequency(s) {attributes[this.constructor.kRepeatFrequency] = s;}
  
  /// Possible values:
  /// 
  /// - exact_day_of_month
  /// 
  /// - week_of_month_1
  /// 
  /// - week_of_month_2
  /// 
  /// - week_of_month_3
  /// 
  /// - week_of_month_4
  /// 
  /// - week_of_month_last
  set repeatInterval(s) {attributes[this.constructor.kRepeatInterval] = s;}
  
  /// Possible values:
  /// 
  /// - daily
  /// 
  /// - weekly
  /// 
  /// - monthly
  /// 
  /// - yearly
  set repeatPeriod(s) {attributes[this.constructor.kRepeatPeriod] = s;}
  set repeatUntil(s) {attributes[this.constructor.kRepeatUntil] = s;}
  set startsAt(d) { attributes[this.constructor.kStartsAt] = d.toISOString(); }
  set endsAt(d) { attributes[this.constructor.kEndsAt] = d.toISOString(); }
  set isShare(b) { attributes[this.constructor.kShare] = b; }
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesBlockout._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesBlockout({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesBlockout] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/blockouts`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId) {
    super(PcoServicesBlockout.kPcoApplication, PcoServicesBlockout.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/blockouts`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/blockouts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  static getFromPeople(peopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesBlockout.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/blockouts`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesBlockoutDate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBlockoutDates({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesBlockoutDate.canInclude;
    let url = `${apiEndpoint}/blockout_dates`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getBlockoutExceptions({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesBlockoutException.canInclude;
    let url = `${apiEndpoint}/blockout_exceptions`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
