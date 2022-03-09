/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.439239
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services NeededPosition Object
/// 
/// - Application:        services
/// - Id:                 needed_position
/// - Type:               NeededPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions
/// 
/// Description:
/// An amount of unfilled positions needed within a team in a plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "NeededPosition",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "team_position_name": "string",
///     "scheduled_to": "string"
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "time_preference_option": {
///       "data": {
///         "type": "TimePreferenceOption",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - team: include associated team 
/// - time: include associated time 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
/// 
/// All Inbound Edges:
/// - `neededposition-plan-needed_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
/// 
/// All Actions:
/// NONE
///
export class PcoServicesNeededPosition extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'NeededPosition';
  static kTypeId = 'needed_position';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'neededposition-plan-needed_positions';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team 
  /// - `time`: include associated time 
  static get canInclude() { return ['team','time'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// 
  static get canOrderBy() { return [] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesNeededPosition.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesNeededPosition.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesNeededPosition.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kQuantity() { return 'quantity' }
  static get kTeamPositionName() { return 'team_position_name' }
  static get kScheduledTo() { return 'scheduled_to' }
  static get kTimeId() { return 'time_id' }
  static get kTimePreferenceOptionId() { return 'time_preference_option_id' }


  // getters and setters
  // @override
  get createAllowed() { return ['quantity','time_id','time_preference_option_id']; }

  // @override
  get updateAllowed() { return ['quantity']; }

  // @override
  get canCreate() { return true; }

  // @override
  get canUpdate() { return true; }

  // @override
  get canDestroy() { return true; }

  // getters for object attributes

  get quantity() { return attributes[this.constructor.kQuantity] ?? 0; }
  get teamPositionName() { return attributes[this.constructor.kTeamPositionName] ?? ''; }
  get scheduledTo() { return attributes[this.constructor.kScheduledTo] ?? ''; }
  

  // setters for object attributes

  set quantity(n) { attributes[this.constructor.kQuantity] = n; }
  

  // additional setters and getters for assignable values

  get timeId() { return attributes[this.constructor.kTimeId] ?? ''; }
  set timeId(s) {attributes[this.constructor.kTimeId] = s;}
  get timePreferenceOptionId() { return attributes[this.constructor.kTimePreferenceOptionId] ?? ''; }
  set timePreferenceOptionId(s) {attributes[this.constructor.kTimePreferenceOptionId] = s;}
  



  // Class Constructors
  // PcoServicesNeededPosition._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesNeededPosition({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };

  /// Create a new [PcoServicesNeededPosition] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  constructor(peopleId,upPlanId) {
    super(PcoServicesNeededPosition.kPcoApplication, PcoServicesNeededPosition.kTypeString);
    this._apiPathOverride = `https://api.planningcenteronline.com/services/v2/people/${peopleId}/next_up_plans/${upPlanId}/needed_positions`;
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/${serviceTypeId}/plans/${planId}/needed_positions`
  static getFromServiceTypeAndPlan(serviceTypeId, planId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/service_types/${serviceTypeId}/plans/${planId}/needed_positions`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTeam({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    let url = `${apiEndpoint}/team`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getTime({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    let url = `${apiEndpoint}/time`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
