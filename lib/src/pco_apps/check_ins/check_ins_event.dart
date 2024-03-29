/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.006822
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
enum PcoCheckInsEventOrder { createdAt, name }

/// Possible Inbound Filters:
/// - `archived` -> `?filter=archived` : -- no description
/// - `forHeadcounts` -> `?filter=for_headcounts` : -- no description
/// - `notArchived` -> `?filter=not_archived` : -- no description
enum PcoCheckInsEventFilter { archived, forHeadcounts, notArchived }

/// Creates a [PcoCheckInsEventQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeAttendanceTypes`: include associated attendance_types
/// - `includeEventPeriods`: include associated event_periods
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsEventQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsEvent] objects can be requested with one or more of the following criteria:
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
/// - `PcoCheckInsEventOrder.createdAt` : will order by `created_at`
/// - `PcoCheckInsEventOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsEventOrder, String> _orderMap = {
    PcoCheckInsEventOrder.createdAt: 'created_at',
    PcoCheckInsEventOrder.name: 'name',
  };
  static String orderString(PcoCheckInsEventOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsEventFilter, String> _filterMap = {
    PcoCheckInsEventFilter.archived: 'archived',
    PcoCheckInsEventFilter.forHeadcounts: 'for_headcounts',
    PcoCheckInsEventFilter.notArchived: 'not_archived',
  };
  static String filterString(PcoCheckInsEventFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsEventQuery({
    /// include associated attendance_types
    /// when true, adds `?include=attendance_types` to url
    bool includeAttendanceTypes = false,

    /// include associated event_periods
    /// when true, adds `?include=event_periods` to url
    bool includeEventPeriods = false,

    /// when true, adds `?include=attendance_types,event_periods` to url parameters
    bool includeAllRelated = false,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    PcoCheckInsEventFilter? filterBy,
    PcoCheckInsEventOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAllRelated || includeAttendanceTypes)
      include.add('attendance_types');
    if (includeAllRelated || includeEventPeriods) include.add('event_periods');

    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO CheckIns Event Object
///
/// - Application:        check-ins
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsEvent.fromJson()` constructor.
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
/// A recurring event which people may attend.
///
/// Each recurrence is an _event period_ (which often corresponds to a week).
///
/// Event periods have _event times_ where people may actually check in.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `frequency` (ro) -> PCO: `frequency`
/// - `isEnableServicesIntegration` (ro) -> PCO: `enable_services_integration`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `archivedAt` (ro) -> PCO: `archived_at`
/// - `integrationKey` (ro) -> PCO: `integration_key`
/// - `isLocationTimesEnabled` (ro) -> PCO: `location_times_enabled`
/// - `isPreSelectEnabled` (ro) -> PCO: `pre_select_enabled`
/// - `appSource` (ro) -> PCO: `app_source`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `attendancetype-event-attendance_types`: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
/// - `checkin-event-check_ins`: https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins
/// - `eventtime-event-current_event_times`: https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventperiod-event-event_periods`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods
/// - `location-event-locations`: https://api.planningcenteronline.com/check-ins/v2/events/1/locations
/// - `personevent-event-person_events`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events
///
/// Inbound Edges:
/// - `event-attendancetype-event`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
/// - `event-checkin-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `event-eventperiod-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/event
/// - `event-eventtime-event`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/event
/// - `event-location-event`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/event
/// - `event-organization-events`: https://api.planningcenteronline.com/check-ins/v2/events
/// - `event-personevent-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/person_events/1/event
/// - `event-station-event`: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "frequency": "string",
///     "enable_services_integration": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "archived_at": "2000-01-01T12:00:00Z",
///     "integration_key": "string",
///     "location_times_enabled": true,
///     "pre_select_enabled": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsEvent extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `attendance_types`: include associated attendance_types
  /// - `event_periods`: include associated event_periods
  static List<String> get canInclude => ['attendance_types', 'event_periods'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id', 'name'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'name'];

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
  static const kName = 'name';
  static const kFrequency = 'frequency';
  static const kEnableServicesIntegration = 'enable_services_integration';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kArchivedAt = 'archived_at';
  static const kIntegrationKey = 'integration_key';
  static const kLocationTimesEnabled = 'location_times_enabled';
  static const kPreSelectEnabled = 'pre_select_enabled';
  static const kAppSource = 'app_source';

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
  String get name => _getAttribute<String>(kName, '');
  String get frequency => _getAttribute<String>(kFrequency, '');
  bool get isEnableServicesIntegration =>
      _getAttribute<bool>(kEnableServicesIntegration, false);
  DateTime get archivedAt => _getAttribute<DateTime>(kArchivedAt, DateTime(0));
  String get integrationKey => _getAttribute<String>(kIntegrationKey, '');
  bool get isLocationTimesEnabled =>
      _getAttribute<bool>(kLocationTimesEnabled, false);
  bool get isPreSelectEnabled => _getAttribute<bool>(kPreSelectEnabled, false);
  String get appSource => _getAttribute<String>(kAppSource, '');

  // typed getters for each relationship

  List<PcoCheckInsAttendanceType> get includedAttendanceTypes =>
      (relationships['attendance_types'] as List?)
          ?.cast<PcoCheckInsAttendanceType>() ??
      [];
  List<PcoCheckInsEventPeriod> get includedEventPeriods =>
      (relationships['event_periods'] as List?)
          ?.cast<PcoCheckInsEventPeriod>() ??
      [];

  // Class Constructors
  PcoCheckInsEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsEvent] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsEvent(
      {String? id,
      String? name,
      String? frequency,
      bool? isEnableServicesIntegration,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? archivedAt,
      String? integrationKey,
      bool? isLocationTimesEnabled,
      bool? isPreSelectEnabled,
      String? appSource,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsEvent.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (frequency != null) obj._attributes['frequency'] = frequency;
    if (isEnableServicesIntegration != null)
      obj._attributes['enable_services_integration'] =
          isEnableServicesIntegration;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (archivedAt != null)
      obj._attributes['archived_at'] = archivedAt.toIso8601String();
    if (integrationKey != null)
      obj._attributes['integration_key'] = integrationKey;
    if (isLocationTimesEnabled != null)
      obj._attributes['location_times_enabled'] = isLocationTimesEnabled;
    if (isPreSelectEnabled != null)
      obj._attributes['pre_select_enabled'] = isPreSelectEnabled;
    if (appSource != null) obj._attributes['app_source'] = appSource;

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

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> get({
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/events/[id]`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingle(
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/events/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAll({
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/$attendanceTypeId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromAttendanceType(
    String attendanceTypeId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/attendance_types/$attendanceTypeId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromAttendanceType(
    String attendanceTypeId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/attendance_types/$attendanceTypeId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromAttendanceType(
    String attendanceTypeId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/attendance_types/$attendanceTypeId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/check_ins/$checkInId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromCheckIn(
    String checkInId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/check_ins/$checkInId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/check_ins/$checkInId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromEventAndEventLabel(
    String eventId,
    String eventLabelId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromEventAndEventLabel(
    String eventId,
    String eventLabelId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromEventAndEventLabel(
    String eventId,
    String eventLabelId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>>
      getAllFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromEventTime(
    String eventTimeId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/event_times/$eventTimeId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromEventTime(
    String eventTimeId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/event_times/$eventTimeId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromEventTime(
    String eventTimeId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/event_times/$eventTimeId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromCheckInAndLocation(
    String checkInId,
    String locationId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/check_ins/$checkInId/locations/$locationId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromEventAndPersonEvent(
    String eventId,
    String personEventId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromEventAndPersonEvent(
    String eventId,
    String personEventId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/person_events/$personEventId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromEventAndPersonEvent(
    String eventId,
    String personEventId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url =
        '/check-ins/v2/events/$eventId/person_events/$personEventId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/event`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEvent>> getFromStation(
    String stationId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/stations/$stationId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEvent] object
  /// using a path like this: `/check-ins/v2/stations/$stationId/event/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEvent?> getSingleFromStation(
    String stationId,
    String id, {
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/stations/$stationId/event/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/event`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEvent>> getAllFromStation(
    String stationId, {
    String? id,
    PcoCheckInsEventQuery? query,
    bool includeAllRelated = false,
    bool includeAttendanceTypes = false,
    bool includeEventPeriods = false,
  }) async {
    query ??= PcoCheckInsEventQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsEvent.canInclude);
    if (includeAttendanceTypes) query.include.add('attendance_types');
    if (includeEventPeriods) query.include.add('event_periods');
    var url = '/check-ins/v2/stations/$stationId/event';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsAttendanceType] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types`
  Future<PcoCollection<PcoCheckInsAttendanceType>> getAttendanceTypes(
      {PcoCheckInsAttendanceTypeQuery? query}) async {
    query ??= PcoCheckInsAttendanceTypeQuery();
    var url = '$apiEndpoint/attendance_types';
    return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
  /// - `not_checked_out`
  /// - `not_one_time_guest`
  /// - `one_time_guest`
  /// - `regular`
  /// - `volunteer`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventTime] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/current_event_times`
  Future<PcoCollection<PcoCheckInsEventTime>> getCurrentEventTimes(
      {PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/current_event_times';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels`
  Future<PcoCollection<PcoCheckInsEventLabel>> getEventLabels(
      {PcoCheckInsEventLabelQuery? query}) async {
    query ??= PcoCheckInsEventLabelQuery();
    var url = '$apiEndpoint/event_labels';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_periods`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriods(
      {PcoCheckInsEventPeriodQuery? query}) async {
    query ??= PcoCheckInsEventPeriodQuery();
    var url = '$apiEndpoint/event_periods';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/locations`
  ///
  /// Available Query Filters:
  /// - `locations`
  /// - `root`
  Future<PcoCollection<PcoCheckInsLocation>> getLocations(
      {PcoCheckInsLocationQuery? query}) async {
    query ??= PcoCheckInsLocationQuery();
    var url = '$apiEndpoint/locations';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPersonEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/person_events`
  Future<PcoCollection<PcoCheckInsPersonEvent>> getPersonEvents(
      {PcoCheckInsPersonEventQuery? query}) async {
    query ??= PcoCheckInsPersonEventQuery();
    var url = '$apiEndpoint/person_events';
    return PcoCollection.fromApiCall<PcoCheckInsPersonEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
