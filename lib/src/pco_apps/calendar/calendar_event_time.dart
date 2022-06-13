/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:58:55.744771
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Calendar EventTime Object
///
/// - Application:        calendar
/// - Id:                 event_time
/// - Type:               EventTime
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// - Create Endpoint:    NONE
///
/// ## Description
/// Start and end times for each event instance.
///
/// In the Calendar UI, these are represented under the "Schedule" section and
/// may include "Setup" and "Teardown" times for the instance.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `endsAt` (ro) -> PCO: `ends_at`
/// - `startsAt` (ro) -> PCO: `starts_at`
/// - `name` (ro) -> PCO: `name`
/// - `isVisibleOnKiosks` (ro) -> PCO: `visible_on_kiosks`
/// - `isVisibleOnWidgetAndIcal` (ro) -> PCO: `visible_on_widget_and_ical`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `event`: include associated event
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
/// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `visible_on_kiosks`: (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
/// - `visible_on_widget_and_ical`: (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-eventtime-event`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event
///
/// Inbound Edges:
/// - `eventtime-eventinstance-event_times`: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoCalendarEventTime extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'EventTime';
  static const String kTypeId = 'event_time';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `ends_at`: (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
  /// - `starts_at`: (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  /// - `visible_on_kiosks`: (URLParameter), query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
  /// - `visible_on_widget_and_ical`: (URLParameter), query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
  static List<String> get canQuery => [
        'ends_at',
        'name',
        'starts_at',
        'visible_on_kiosks',
        'visible_on_widget_and_ical'
      ];

  /// possible orderings with parameter ?order=
  /// - `ends_at`: (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// - `starts_at`: (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at', 'starts_at'];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get createPathTemplate => kCreatePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kEndsAt = 'ends_at';
  static const kStartsAt = 'starts_at';
  static const kName = 'name';
  static const kVisibleOnKiosks = 'visible_on_kiosks';
  static const kVisibleOnWidgetAndIcal = 'visible_on_widget_and_ical';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  DateTime get name => DateTime.parse(attributes[kName] ?? '');
  bool get isVisibleOnKiosks => attributes[kVisibleOnKiosks] == true;
  bool get isVisibleOnWidgetAndIcal =>
      attributes[kVisibleOnWidgetAndIcal] == true;

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  List<T> includedEvent<T extends PcoResource>() =>
      relationships['event']?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarEventTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarEventTime.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times`
  static Future<PcoCollection<PcoCalendarEventTime>> getFromEventInstance(
      String eventInstanceId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventTime.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
