/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.466428
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services PlanPersonTime Object
/// 
/// - Application:        services
/// - Id:                 plan_person_time
/// - Type:               PlanPersonTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "PlanPersonTime",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "plan_person": {
///       "data": {
///         "type": "PlanPerson",
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
/// - `planpersontime-planperson-plan_person_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// 
/// All Actions:
/// NONE
///
export class PcoServicesPlanPersonTime extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'PlanPersonTime';
  static kTypeId = 'plan_person_time';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'planpersontime-planperson-plan_person_times';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times';

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
  get shortestEdgePath() { return PcoServicesPlanPersonTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesPlanPersonTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesPlanPersonTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kStatus() { return 'status' }
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

  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesPlanPersonTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesPlanPersonTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesPlanPersonTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan_person_times`
  static getFromPeopleAndPlanPeople(peopleId, planPeopleId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesPlanPersonTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/people/${peopleId}/plan_people/${planPeopleId}/plan_person_times`;
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
