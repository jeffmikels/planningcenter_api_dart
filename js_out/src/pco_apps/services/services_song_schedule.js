/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:05.495593
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Services SongSchedule Object
/// 
/// - Application:        services
/// - Id:                 song_schedule
/// - Type:               SongSchedule
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// 
/// Description:
/// A upcoming schedule for a song
/// 
/// Example:
/// ```json
/// {
///   "type": "SongSchedule",
///   "id": "1",
///   "attributes": {
///     "arrangement_name": "string",
///     "key_name": "string",
///     "plan_dates": "string",
///     "service_type_name": "string",
///     "plan_sort_date": "string"
///   },
///   "relationships": {
///     "arrangement": {
///       "data": {
///         "type": "Arrangement",
///         "id": "1"
///       }
///     },
///     "key": {
///       "data": {
///         "type": "Key",
///         "id": "1"
///       }
///     },
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
///     },
///     "item": {
///       "data": {
///         "type": "Item",
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
/// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `songschedule-song-song_schedules`: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// 
/// All Actions:
/// NONE
///
export class PcoServicesSongSchedule extends PcoResource {
  static kPcoApplication = 'services';
  static kTypeString = 'SongSchedule';
  static kTypeId = 'song_schedule';
  static kApiVersion = '2018-11-01';
  static kShortestEdgeId = 'songschedule-song-song_schedules';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';

  /// possible includes with parameter ?include=a,b
  /// 
  static get canInclude() { return [] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static get canQuery() { return [] }

  /// possible orderings with parameter ?order=
  /// - `plan_sort_date`: (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
  static get canOrderBy() { return ['plan_sort_date'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoServicesSongSchedule.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoServicesSongSchedule.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoServicesSongSchedule.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kArrangementName() { return 'arrangement_name' }
  static get kKeyName() { return 'key_name' }
  static get kPlanDates() { return 'plan_dates' }
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

  get arrangementName() { return attributes[this.constructor.kArrangementName] ?? ''; }
  get keyName() { return attributes[this.constructor.kKeyName] ?? ''; }
  get planDates() { return attributes[this.constructor.kPlanDates] ?? ''; }
  get serviceTypeName() { return attributes[this.constructor.kServiceTypeName] ?? ''; }
  get planSortDate() { return attributes[this.constructor.kPlanSortDate] ?? ''; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoServicesSongSchedule._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoServicesSongSchedule({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoServicesSongSchedule] objects (expecting many)
  /// using a path like this: `/services/v2/songs/${songId}/song_schedules`
  /// 
  /// Available Query Filters:
  /// - `three_most_recent`
  static getFromSong(songId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/services/v2/songs/${songId}/song_schedules`;
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
