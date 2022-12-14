/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T23:12:38.047993
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `endsAt` -> `?order=ends_at`
/// - `startsAt` -> `?order=starts_at`
enum PcoCalendarEventTimeOrder { endsAt, startsAt }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarEventTimeFilter { none }

/// Creates a [PcoCalendarEventTimeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarEventTimeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarEventTime] objects can be requested with one or more of the following criteria:
/// - `whereEndsAt`: query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=2000-01-01T12:00:00Z
/// - `whereStartsAt`: query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// - `whereVisibleOnKiosks`: query on a specific visible_on_kiosks, example: ?where[visible_on_kiosks]=true
/// - `whereVisibleOnWidgetAndIcal`: query on a specific visible_on_widget_and_ical, example: ?where[visible_on_widget_and_ical]=true
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCalendarEventTimeOrder.endsAt` : will order by `ends_at`
/// - `PcoCalendarEventTimeOrder.startsAt` : will order by `starts_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarEventTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarEventTimeOrder, String> _orderMap = {
    PcoCalendarEventTimeOrder.endsAt: 'ends_at',
    PcoCalendarEventTimeOrder.startsAt: 'starts_at',
  };
  static String orderString(PcoCalendarEventTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarEventTimeFilter, String> _filterMap = {};
  static String filterString(PcoCalendarEventTimeFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarEventTimeQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// Query by `ends_at`
    /// query on a specific ends_at, url example: ?where[ends_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereEndsAt,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

    /// Query by `starts_at`
    /// query on a specific starts_at, url example: ?where[starts_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereStartsAt,

    /// Query by `visible_on_kiosks`
    /// query on a specific visible_on_kiosks, url example: ?where[visible_on_kiosks]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereVisibleOnKiosks,

    /// Query by `visible_on_widget_and_ical`
    /// query on a specific visible_on_widget_and_ical, url example: ?where[visible_on_widget_and_ical]=true
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereVisibleOnWidgetAndIcal,
    PcoCalendarEventTimeOrder? orderBy,

    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super() {
    if (includeEvent) include.add('event');

    if (whereEndsAt != null)
      where.add(PlanningCenterApiWhere.parse('ends_at', whereEndsAt));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereStartsAt != null)
      where.add(PlanningCenterApiWhere.parse('starts_at', whereStartsAt));
    if (whereVisibleOnKiosks != null)
      where.add(PlanningCenterApiWhere.parse(
          'visible_on_kiosks', whereVisibleOnKiosks));
    if (whereVisibleOnWidgetAndIcal != null)
      where.add(PlanningCenterApiWhere.parse(
          'visible_on_widget_and_ical', whereVisibleOnWidgetAndIcal));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar EventTime Object
///
/// - Application:        calendar
/// - Id:                 event_time
/// - Type:               EventTime
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarEventTime.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
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
  static const String kApiVersion = '2021-07-20';
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
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  DateTime get name => DateTime.parse(_attributes[kName] ?? '');
  bool get isVisibleOnKiosks => _attributes[kVisibleOnKiosks] == true;
  bool get isVisibleOnWidgetAndIcal =>
      _attributes[kVisibleOnWidgetAndIcal] == true;

  // typed getters for each relationship

  PcoCalendarEvent? get includedEvent =>
      _firstOrNull<PcoCalendarEvent>(relationships['event']);

  // Class Constructors
  PcoCalendarEventTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarEventTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarEventTime] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarEventTime(
      {String? id,
      DateTime? endsAt,
      DateTime? startsAt,
      DateTime? name,
      bool? isVisibleOnKiosks,
      bool? isVisibleOnWidgetAndIcal,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarEventTime.empty();
    obj._id = id;
    if (endsAt != null) obj._attributes['ends_at'] = endsAt.toIso8601String();
    if (startsAt != null)
      obj._attributes['starts_at'] = startsAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name.toIso8601String();
    if (isVisibleOnKiosks != null)
      obj._attributes['visible_on_kiosks'] = isVisibleOnKiosks;
    if (isVisibleOnWidgetAndIcal != null)
      obj._attributes['visible_on_widget_and_ical'] = isVisibleOnWidgetAndIcal;

    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }

    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }

    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a [PcoCollection] of [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarEventTime>> getFromEventInstance(
    String eventInstanceId, {
    String? id,
    PcoCalendarEventTimeQuery? query,
    bool getAll = false,
    bool includeEvent = false,
  }) async {
    query ??= PcoCalendarEventTimeQuery();
    if (getAll) query.getAll = true;

    if (includeEvent) query.include.add('event');
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCalendarEventTime] object
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCalendarEventTime?> getSingleFromEventInstance(
    String eventInstanceId,
    String id, {
    PcoCalendarEventTimeQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PcoCalendarEventTimeQuery();

    if (includeEvent) query.include.add('event');
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times/$id';
    var retval = await PcoCollection.fromApiCall<PcoCalendarEventTime>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCalendarEventTime] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_instances/$eventInstanceId/event_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCalendarEventTime>> getAllFromEventInstance(
    String eventInstanceId, {
    String? id,
    PcoCalendarEventTimeQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PcoCalendarEventTimeQuery();
    query.getAll = true;

    if (includeEvent) query.include.add('event');
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event`
  Future<PcoCollection<PcoCalendarEvent>> getEvent(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
