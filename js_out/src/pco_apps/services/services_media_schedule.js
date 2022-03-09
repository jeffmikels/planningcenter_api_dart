/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.437524
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services MediaSchedule Object
/// 
/// - Application:        services
/// - Id:                 media_schedule
/// - Type:               MediaSchedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "MediaSchedule",
///   "id": "1",
///   "attributes": {
///     "plan_dates": "string",
///     "plan_short_dates": "string",
///     "service_type_name": "string",
///     "plan_sort_date": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan": {
///       "data": {
///         "type": "Plan",
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
/// - `mediaschedule-media-media_schedules`: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// 
/// All Actions:
/// NONE
///
export class PcoServicesMediaSchedule extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'MediaSchedule';
  static kTypeId = 'media_schedule';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'mediaschedule-media-media_schedules';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media/1/media_schedules';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/media/1/media_schedules';

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
  get shortestEdgePath() { return PcoServicesMediaSchedule.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesMediaSchedule.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesMediaSchedule.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kPlanDates() { return 'plan_dates' }
  static get kPlanShortDates() { return 'plan_short_dates' }
  static get kServiceTypeName() { return 'service_type_name' }
  static get kPlanSortDate() { return 'plan_sort_date' }


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

  get planDates() { return attributes[this.constructor.kPlanDates] ?? ''; }
  get planShortDates() { return attributes[this.constructor.kPlanShortDates] ?? ''; }
  get serviceTypeName() { return attributes[this.constructor.kServiceTypeName] ?? ''; }
  get planSortDate() { return Date.parse(attributes[this.constructor.kPlanSortDate] ?? 0); }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesMediaSchedule._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesMediaSchedule({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesMediaSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/media/${mediaId}/media_schedules`
  static getFromMedia(mediaId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/media/${mediaId}/media_schedules`;
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
