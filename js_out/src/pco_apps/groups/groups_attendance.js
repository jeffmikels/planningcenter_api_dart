/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.324457
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Groups Attendance Object
/// 
/// - Application:        groups
/// - Id:                 attendance
/// - Type:               Attendance
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Attendance",
///   "id": "1",
///   "attributes": {
///     "attended": true,
///     "role": "value"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
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
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `role`: (URLParameter), query on a specific role, example: ?where[role]=value
/// 
/// Possible orderings with parameter ?order=
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
///
/// All Outbound Edges:
/// - `person-attendance-person`: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
/// 
/// All Inbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// 
/// All Actions:
/// NONE
///
export class PcoGroupsAttendance extends PcoResource {
  static kPcoApplication = 'groups';
  static kTypeString = 'Attendance';
  static kTypeId = 'attendance';
  static kApiVersion = '2018-08-01';
  static kShortestEdgeId = 'attendance-event-attendances';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/attendances';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/attendances';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static get canInclude() { return ['person'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=value
  static get canQuery() { return ['role'] }

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static get canOrderBy() { return ['first_name','last_name','role'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoGroupsAttendance.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoGroupsAttendance.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoGroupsAttendance.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kAttended() { return 'attended' }
  static get kRole() { return 'role' }


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

  get isAttended() { return attributes[this.constructor.kAttended] == true; }
  get role() { return attributes[this.constructor.kRole] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoGroupsAttendance._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoGroupsAttendance({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsAttendance] objects (expecting many)
  /// using a path like this: `/groups/v2/events/${eventId}/attendances`
  /// 
  /// Available Query Filters:
  /// - `attended`
  static getFromEvent(eventId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/groups/v2/events/${eventId}/attendances`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoGroupsPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getPerson({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    let url = `${apiEndpoint}/person`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
