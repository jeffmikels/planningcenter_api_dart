/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.517182
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsLocationEventPeriodOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsLocationEventPeriodFilter { none }

/// Creates a [PcoCheckInsLocationEventPeriodQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEventPeriod`: include associated event_period
/// - `includeLocation`: include associated location
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsLocationEventPeriodQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsLocationEventPeriodQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsLocationEventPeriodOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsLocationEventPeriodOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsLocationEventPeriodFilter, String> _filterMap =
      {};
  static String filterString(PcoCheckInsLocationEventPeriodFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsLocationEventPeriodQuery({
    /// include associated event_period
    /// when true, adds `?include=event_period` to url
    bool includeEventPeriod = false,

    /// include associated location
    /// when true, adds `?include=location` to url
    bool includeLocation = false,

    /// when true, adds `?include=event_period,location` to url parameters
    bool includeAll = false,

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
    if (includeAll || includeEventPeriod) include.add('event_period');
    if (includeAll || includeLocation) include.add('location');
  }
}

/// This class represents a PCO CheckIns LocationEventPeriod Object
///
/// - Application:        check-ins
/// - Id:                 location_event_period
/// - Type:               LocationEventPeriod
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsLocationEventPeriod.fromJson()` constructor.
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
/// Counts check-ins for a location during a certain event period.
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
/// - `checkin-locationeventperiod-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins
/// - `eventperiod-locationeventperiod-event_period`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period
/// - `location-locationeventperiod-location`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location
///
/// Inbound Edges:
/// - `locationeventperiod-eventperiod-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods
/// - `locationeventperiod-location-location_event_periods`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/location_event_periods
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "LocationEventPeriod",
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
class PcoCheckInsLocationEventPeriod extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'LocationEventPeriod';
  static const String kTypeId = 'location_event_period';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event_period`: include associated event_period
  /// - `location`: include associated location
  static List<String> get canInclude => ['event_period', 'location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

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

  PcoCheckInsEventPeriod? get includedEventPeriod =>
      _firstOrNull<PcoCheckInsEventPeriod>(relationships['event_period']);
  PcoCheckInsLocation? get includedLocation =>
      _firstOrNull<PcoCheckInsLocation>(relationships['location']);

  // Class Constructors
  PcoCheckInsLocationEventPeriod.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsLocationEventPeriod.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsLocationEventPeriod] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsLocationEventPeriod(
      {String? id,
      int? regularCount,
      int? guestCount,
      int? volunteerCount,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsLocationEventPeriod.empty();
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

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods`
  static Future<PcoCollection<PcoCheckInsLocationEventPeriod>>
      getFromCheckInAndEventPeriod(
    String checkInId,
    String eventPeriodId, {
    String? id,
    PcoCheckInsLocationEventPeriodQuery? query,
    bool includeAll = false,
    bool includeEventPeriod = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoCheckInsLocationEventPeriodQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventPeriod.canInclude);
    if (includeEventPeriod) query.include.add('event_period');
    if (includeLocation) query.include.add('location');
    var url =
        '/check-ins/v2/check_ins/$checkInId/event_period/$eventPeriodId/location_event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationEventPeriod] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods`
  static Future<PcoCollection<PcoCheckInsLocationEventPeriod>>
      getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsLocationEventPeriodQuery? query,
    bool includeAll = false,
    bool includeEventPeriod = false,
    bool includeLocation = false,
  }) async {
    query ??= PcoCheckInsLocationEventPeriodQuery();
    if (includeAll)
      query.include.addAll(PcoCheckInsLocationEventPeriod.canInclude);
    if (includeEventPeriod) query.include.add('event_period');
    if (includeLocation) query.include.add('location');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/location_event_periods';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLocationEventPeriod>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/check_ins`
  ///
  /// Available Query Filters:
  /// - `attendee`
  /// - `checked_out`
  /// - `first_time`
  /// - `guest`
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

  /// Will get a collection of [PcoCheckInsEventPeriod] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/event_period`
  Future<PcoCollection<PcoCheckInsEventPeriod>> getEventPeriod(
      {PcoCheckInsEventPeriodQuery? query}) async {
    query ??= PcoCheckInsEventPeriodQuery();
    var url = '$apiEndpoint/event_period';
    return PcoCollection.fromApiCall<PcoCheckInsEventPeriod>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins/1/event_period/1/location_event_periods/1/location`
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
