/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.331089
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services BlockoutScheduleConflict Object
/// 
/// - Application:        services
/// - Id:                 blockout_schedule_conflict
/// - Type:               BlockoutScheduleConflict
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "BlockoutScheduleConflict",
///   "id": "1",
///   "attributes": {
///     "dates": "string",
///     "organization_name": "string",
///     "person_avatar": "string",
///     "person_name": "string",
///     "position_display_times": "string",
///     "service_type_name": "string",
///     "short_dates": "string",
///     "status": "string",
///     "team_name": "string",
///     "team_position_name": "string",
///     "sort_date": "2000-01-01T12:00:00Z",
///     "can_accept_partial": true
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
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
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
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
/// NONE
/// 
/// All Actions:
/// NONE
///
export class PcoServicesBlockoutScheduleConflict extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'BlockoutScheduleConflict';
  static kTypeId = 'blockout_schedule_conflict';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = '';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2';

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
  get shortestEdgePath() { return PcoServicesBlockoutScheduleConflict.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesBlockoutScheduleConflict.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesBlockoutScheduleConflict.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kDates() { return 'dates' }
  static get kOrganizationName() { return 'organization_name' }
  static get kPersonAvatar() { return 'person_avatar' }
  static get kPersonName() { return 'person_name' }
  static get kPositionDisplayTimes() { return 'position_display_times' }
  static get kServiceTypeName() { return 'service_type_name' }
  static get kShortDates() { return 'short_dates' }
  static get kStatus() { return 'status' }
  static get kTeamName() { return 'team_name' }
  static get kTeamPositionName() { return 'team_position_name' }
  static get kSortDate() { return 'sort_date' }
  static get kCanAcceptPartial() { return 'can_accept_partial' }


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

  get dates() { return attributes[this.constructor.kDates] ?? ''; }
  get organizationName() { return attributes[this.constructor.kOrganizationName] ?? ''; }
  get personAvatar() { return attributes[this.constructor.kPersonAvatar] ?? ''; }
  get personName() { return attributes[this.constructor.kPersonName] ?? ''; }
  get positionDisplayTimes() { return attributes[this.constructor.kPositionDisplayTimes] ?? ''; }
  get serviceTypeName() { return attributes[this.constructor.kServiceTypeName] ?? ''; }
  get shortDates() { return attributes[this.constructor.kShortDates] ?? ''; }
  get status() { return attributes[this.constructor.kStatus] ?? ''; }
  get teamName() { return attributes[this.constructor.kTeamName] ?? ''; }
  get teamPositionName() { return attributes[this.constructor.kTeamPositionName] ?? ''; }
  get sortDate() { return Date.parse(attributes[this.constructor.kSortDate] ?? 0); }
  get isCanAcceptPartial() { return attributes[this.constructor.kCanAcceptPartial] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesBlockoutScheduleConflict._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesBlockoutScheduleConflict({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
