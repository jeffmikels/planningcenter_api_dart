/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-08T16:42:06.168153
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import { PcoResource, PlanningCenterApiQuery, PcoCollection } from '../../pco.js'

/// This class represents a PCO Calendar EventTime Object
/// 
/// - Application:        calendar
/// - Id:                 event_time
/// - Type:               EventTime
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// 
/// Description:
/// Start and end times for each event instance.
/// 
/// In the Calendar UI, these are represented under the "Schedule" section and
/// may include "Setup" and "Teardown" times for the instance.
/// 
/// Example:
/// ```json
/// {
///   "type": "EventTime",
///   "id": "1",
///   "attributes": {
///     "ends_at": "2000-01-01T12:00:00Z",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "name": "2000-01-01T12:00:00Z",
///     "visible_on_kiosks": true,
///     "visible_on_widget_and_ical": true
///   },
///   "relationships": {
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
/// - event: include associated event 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `visible_on_kiosks`: (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
/// - `visible_on_widget_and_ical`: (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
/// 
/// Possible orderings with parameter ?order=
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// All Outbound Edges:
/// - `event-eventtime-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
/// 
/// All Inbound Edges:
/// - `eventtime-eventinstance-event_times`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// 
/// All Actions:
/// NONE
///
export class PcoCalendarEventTime extends PcoResource {
  static kPcoApplication = 'calendar';
  static kTypeString = 'EventTime';
  static kTypeId = 'event_time';
  static kApiVersion = '2020-04-08';
  static kShortestEdgeId = 'eventtime-eventinstance-event_times';
  static kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times';
  static kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event 
  static get canInclude() { return ['event'] }

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `visible_on_kiosks`: (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
  /// - `visible_on_widget_and_ical`: (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
  static get canQuery() { return ['ends_at','name','starts_at','visible_on_kiosks','visible_on_widget_and_ical'] }

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static get canOrderBy() { return ['ends_at','starts_at'] }

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  // overrides parent method
  get shortestEdgePath() { return PcoCalendarEventTime.kShortestEdgePathTemplate; }

  // overrides parent method
  get defaultPathTemplate() { return PcoCalendarEventTime.kDefaultPathTemplate; }

  // overrides parent method
  get apiVersion() { return PcoCalendarEventTime.kApiVersion; }

  _apiPathOverride;

  // overrides parent method
  get apiPath() { return this.links['self'] ?? _apiPathOverride ?? super.apiPath; }

  // field mapping constants
  static get kId() { return 'id' }
  static get kEndsAt() { return 'ends_at' }
  static get kStartsAt() { return 'starts_at' }
  static get kName() { return 'name' }
  static get kVisibleOnKiosks() { return 'visible_on_kiosks' }
  static get kVisibleOnWidgetAndIcal() { return 'visible_on_widget_and_ical' }


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

  get endsAt() { return Date.parse(attributes[this.constructor.kEndsAt] ?? 0); }
  get startsAt() { return Date.parse(attributes[this.constructor.kStartsAt] ?? 0); }
  get name() { return Date.parse(attributes[this.constructor.kName] ?? 0); }
  get isVisibleOnKiosks() { return attributes[this.constructor.kVisibleOnKiosks] == true; }
  get isVisibleOnWidgetAndIcal() { return attributes[this.constructor.kVisibleOnWidgetAndIcal] == true; }
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  // PcoCalendarEventTime._() : super(kPcoApplication, kTypeString);
  static createFromJson({ data, withIncludes = [] }) {
    let obj = new PcoCalendarEventTime({});

    // inherited methods
    obj.fromJson(data);
    obj.handleIncludes(withIncludes);
    return obj;
  };



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/${eventInstanceId}/event_times`
  static getFromEventInstance(eventInstanceId, {id,  query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
    let apiVersion = this.kApiVersion; // reading static member from static member uses 'this'
    let url = `/calendar/v2/event_instances/${eventInstanceId}/event_times`;
    if (id != null) url += `/${id}`;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// -- JAVASCRIPT --
  /// Will get a [PcoCollection] of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event`
  /// [query] should be an object mathching the [PlannningCenterApiQuery] class
  getEvent({query, allIncludes = false}) {
    query = query ?? new PlanningCenterApiQuery({});
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    let url = `${apiEndpoint}/event`;
    let apiVersion = this.apiVersion;
    return PcoCollection.fromApiCall(url, {query, apiVersion});
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
