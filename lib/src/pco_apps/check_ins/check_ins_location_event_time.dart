/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:42:22.787296
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsLocationEventTimeOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsLocationEventTimeFilter { none }

/// Creates a [PcoCheckInsLocationEventTimeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEventTime`: include associated event_time
/// - `includeLocation`: include associated location
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsLocationEventTimeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsLocationEventTime] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
///
/// For each, you may specify a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
///
/// Alternatively, you may pass a [List] of [PlanningCenterApiWhere] objects to the `where` field
/// e.g. `PlanningCenterApiQuery(where: [PlanningCenterApiWhere('created_at', '2021-01-01', 'gte')])`
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsLocationEventTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsLocationEventTimeOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsLocationEventTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsLocationEventTimeFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsLocationEventTimeFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsLocationEventTimeQuery({
    /// include associated event_time
    /// when true, adds `?include=event_time` to url
    bool includeEventTime = false,

    /// include associated location
    /// when true, adds `?include=location` to url
    bool includeLocation = false,

    /// when true, adds `?include=event_time,location` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,

    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,

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
    if (includeAll || includeEventTime) include.add('event_time');
    if (includeAll || includeLocation) include.add('location');

    if (whereCreatedAt != null)
      where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereUpdatedAt != null)
      where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
  }
}

/// This class represents a PCO CheckIns LocationEventTime Object
///
/// - Application:        check-ins
/// - Id:                 location_event_time
/// - Type:               LocationEventTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsLocationEventTime.fromJson()` constructor.
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
/// Counts check-ins for a location for a given event time.
/// This is useful for checking occupancy.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `regularCount` (ro) -> PCO: `regular_count`
/// - `guestCount` (ro) -> PCO: `guest_count`
/// - `volunteerCount` (ro) -> PCO: `volunteer_count`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-locationeventtime-check_ins`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins
/// - `eventtime-locationeventtime-event_time`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time
/// - `location-locationeventtime-location`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location
///
/// Inbound Edges:
/// - `locationeventtime-eventtime-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times
/// - `locationeventtime-location-location_event_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LocationEventTime",
///   "id": "1",
///   "attributes": {
///     "regular_count": 1,
///     "guest_count": 1,
///     "volunteer_count": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsLocationEventTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventTime';
  static const String kTypeId = 'location_event_time';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event_time`: include associated event_time
  /// - `location`: include associated location
  static List<String> get canInclude => ['event_time', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'updated_at'];

  /// possible orderings with parameter ?order=
  ///
  static List<String> get canOrderBy => [];

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
  static const kRegularCount = 'regular_count';
  static const kGuestCount = 'guest_count';
  static const kVolunteerCount = 'volunteer_count';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

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
  int get regularCount => _attributes[kRegularCount] ?? 0;
  int get guestCount => _attributes[kGuestCount] ?? 0;
  int get volunteerCount => _attributes[kVolunteerCount] ?? 0;

  // typed getters for each relationship

  PcoCheckInsEventTime? get includedEventTime =>
      _firstOrNull<PcoCheckInsEventTime>(relationships['event_time']);
  PcoCheckInsLocation? get includedLocation =>
      _firstOrNull<PcoCheckInsLocation>(relationships['location']);

  // Class Constructors
  PcoCheckInsLocationEventTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsLocationEventTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsLocationEventTime] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsLocationEventTime(
      {String? id,
      int? regularCount,
      int? guestCount,
      int? volunteerCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsLocationEventTime.empty();
    obj._id = id;
    if (regularCount != null) obj._attributes['regular_count'] = regularCount;
    if (guestCount != null) obj._attributes['guest_count'] = guestCount;
    if (volunteerCount != null)
      obj._attributes['volunteer_count'] = volunteerCount;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/event_times/$eventTimeId/location_event_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLocationEventTime>> getFromEventTime(
    String eventTimeId, {
    String? id,
    PcoCheckInsLocationEventTimeQuery? query,
    bool includeAll = false,
    bool includeEventTime = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoCheckInsLocationEventTimeQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEventTime) query.include.add('event_time');
    if (includeLocation) query.include.add('location');
    var url = '/check-ins/v2/event_times/$eventTimeId/location_event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLocationEventTime>>
      getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsLocationEventTimeQuery? query,
    bool includeAll = false,
    bool includeEventTime = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoCheckInsLocationEventTimeQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventTime.canInclude);
    if (includeEventTime) query.include.add('event_time');
    if (includeLocation) query.include.add('location');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/check_ins`
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
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/event_time`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTime(
      {PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/event_time';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times/1/location_event_times/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation(
      {PcoCheckInsLocationQuery? query}) async {
    query ??= PcoCheckInsLocationQuery();
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
