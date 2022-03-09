/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.511361
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services TimePreferenceOption Object
/// 
/// - Application:        services
/// - Id:                 time_preference_option
/// - Type:               TimePreferenceOption
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// 
/// Description:
/// A Service Time a person prefers to be scheduled to.
/// 
/// Example:
/// ```json
/// {
///   "type": "TimePreferenceOption",
///   "id": "1",
///   "attributes": {
///     "day_of_week": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "sort_index": "string",
///     "time_type": "string",
///     "minute_of_day": 1,
///     "starts_at": "2000-01-01T12:00:00Z"
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
/// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
/// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `timepreferenceoption-servicetype-time_preference_options`: https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options
/// 
/// All Actions:
/// NONE
///
export class PcoServicesTimePreferenceOption extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'TimePreferenceOption';
  static kTypeId = 'time_preference_option';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'timepreferenceoption-servicetype-time_preference_options';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/time_preference_options';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `day_of_week`: (URLParameter), prefix with a hyphen (-day_of_week) to reverse the order
  /// - `hour_of_day`: (URLParameter), prefix with a hyphen (-hour_of_day) to reverse the order
  static get canOrderBy() { return ['day_of_week','hour_of_day'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesTimePreferenceOption.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesTimePreferenceOption.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesTimePreferenceOption.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDayOfWeek() { return 'day_of_week' }
  static get kCreatedAt() { return 'created_at' }
  static get kUpdatedAt() { return 'updated_at' }
  static get kDescription() { return 'description' }
  static get kSortIndex() { return 'sort_index' }
  static get kTimeType() { return 'time_type' }
  static get kMinuteOfDay() { return 'minute_of_day' }
  static get kStartsAt() { return 'starts_at' }


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

  get dayOfWeek() { return attributes[this.constructor.kDayOfWeek] ?? 0; }
  get description() { return attributes[this.constructor.kDescription] ?? ''; }
  get sortIndex() { return attributes[this.constructor.kSortIndex] ?? ''; }
  get timeType() { return attributes[this.constructor.kTimeType] ?? ''; }
  get minuteOfDay() { return attributes[this.constructor.kMinuteOfDay] ?? 0; }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesTimePreferenceOption._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesTimePreferenceOption({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTimePreferenceOption] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/time_preference_options`
  static getFromServiceType(serviceTypeId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTimePreferenceOption.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/time_preference_options`;
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
