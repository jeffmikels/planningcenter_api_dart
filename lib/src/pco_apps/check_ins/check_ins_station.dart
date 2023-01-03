/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.049818
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsStationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsStationFilter { none }

/// Creates a [PcoCheckInsStationQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeLocation`: include associated location
/// - `includePrintStation`: include associated print_station
/// - `includeTheme`: include associated theme
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsStationQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsStationQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsStationOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsStationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsStationFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsStationFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsStationQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated location
    /// when true, adds `?include=location` to url
    bool includeLocation = false,

    /// include associated print_station
    /// when true, adds `?include=print_station` to url
    bool includePrintStation = false,

    /// include associated theme
    /// when true, adds `?include=theme` to url
    bool includeTheme = false,

    /// when true, adds `?include=event,location,print_station,theme` to url parameters
    bool includeAllRelated = false,

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
    if (includeAllRelated || includeEvent) include.add('event');
    if (includeAllRelated || includeLocation) include.add('location');
    if (includeAllRelated || includePrintStation) include.add('print_station');
    if (includeAllRelated || includeTheme) include.add('theme');
  }
}

/// This class represents a PCO CheckIns Station Object
///
/// - Application:        check-ins
/// - Id:                 station
/// - Type:               Station
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/stations
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsStation.fromJson()` constructor.
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
/// A device where people can be checked in.
/// A device may also be connected to a printer
/// and print labels for itself or other stations.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isOnline` (ro) -> PCO: `online`
/// - `mode` (ro) -> PCO: `mode`
/// - `name` (ro) -> PCO: `name`
/// - `timeoutSeconds` (ro) -> PCO: `timeout_seconds`
/// - `inputType` (ro) -> PCO: `input_type`
/// - `inputTypeOptions` (ro) -> PCO: `input_type_options`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `nextShowsAt` (ro) -> PCO: `next_shows_at`
/// - `checkInCount` (ro) -> PCO: `check_in_count`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkingroup-station-check_in_groups`: https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups
/// - `checkin-station-checked_in_at_check_ins`: https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins
/// - `event-station-event`: https://api.planningcenteronline.com/check-ins/v2/stations/1/event
/// - `location-station-location`: https://api.planningcenteronline.com/check-ins/v2/stations/1/location
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
/// - `theme-station-theme`: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
///
/// Inbound Edges:
/// - `station-checkin-checked_in_at`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/checked_in_at
/// - `station-checkingroup-print_station`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_group/1/print_station
/// - `station-organization-stations`: https://api.planningcenteronline.com/check-ins/v2/stations
/// - `station-station-print_station`: https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Station",
///   "id": "1",
///   "attributes": {
///     "online": true,
///     "mode": 1,
///     "name": "string",
///     "timeout_seconds": 1,
///     "input_type": "value",
///     "input_type_options": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsStation extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Station';
  static const String kTypeId = 'station';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/stations';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `location`: include associated location
  /// - `print_station`: include associated print_station
  /// - `theme`: include associated theme
  static List<String> get canInclude =>
      ['event', 'location', 'print_station', 'theme'];

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
  static const kOnline = 'online';
  static const kMode = 'mode';
  static const kName = 'name';
  static const kTimeoutSeconds = 'timeout_seconds';
  static const kInputType = 'input_type';
  static const kInputTypeOptions = 'input_type_options';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kNextShowsAt = 'next_shows_at';
  static const kCheckInCount = 'check_in_count';

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
  bool get isOnline => _getAttribute<bool>(kOnline, false);
  int get mode => _getAttribute<int>(kMode, 0);
  String get name => _getAttribute<String>(kName, '');
  int get timeoutSeconds => _getAttribute<int>(kTimeoutSeconds, 0);
  String get inputType => _getAttribute<String>(kInputType, '');
  String get inputTypeOptions => _getAttribute<String>(kInputTypeOptions, '');
  DateTime get nextShowsAt =>
      _getAttribute<DateTime>(kNextShowsAt, DateTime(0));
  int get checkInCount => _getAttribute<int>(kCheckInCount, 0);

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  PcoCheckInsLocation? get includedLocation =>
      _firstOrNull<PcoCheckInsLocation>(relationships['location']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedPrintStation<T extends PcoResource>() =>
      (relationships['print_station'] as List?)?.cast<T>() ?? [];

  PcoCheckInsTheme? get includedTheme =>
      _firstOrNull<PcoCheckInsTheme>(relationships['theme']);

  // Class Constructors
  PcoCheckInsStation.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsStation.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsStation] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsStation(
      {String? id,
      bool? isOnline,
      int? mode,
      String? name,
      int? timeoutSeconds,
      String? inputType,
      String? inputTypeOptions,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? nextShowsAt,
      int? checkInCount,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsStation.empty();
    obj._id = id;
    if (isOnline != null) obj._attributes['online'] = isOnline;
    if (mode != null) obj._attributes['mode'] = mode;
    if (name != null) obj._attributes['name'] = name;
    if (timeoutSeconds != null)
      obj._attributes['timeout_seconds'] = timeoutSeconds;
    if (inputType != null) obj._attributes['input_type'] = inputType;
    if (inputTypeOptions != null)
      obj._attributes['input_type_options'] = inputTypeOptions;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (nextShowsAt != null)
      obj._attributes['next_shows_at'] = nextShowsAt.toIso8601String();
    if (checkInCount != null) obj._attributes['check_in_count'] = checkInCount;

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

  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsStation>> get({
    String? id,
    PcoCheckInsStationQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsStation] object
  /// using a path like this: `/check-ins/v2/stations/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsStation?> getSingle(
    String id, {
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsStation>> getAll({
    String? id,
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_at`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsStation>> getCheckedInAtFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsStation] object
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_at/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsStation?> getSingleCheckedInAtFromCheckIn(
    String checkInId,
    String id, {
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/checked_in_at`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsStation>> getAllCheckedInAtFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/check_ins/$checkInId/checked_in_at';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsStation>>
      getPrintStationFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsStation] object
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsStation?>
      getSinglePrintStationFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId,
    String id, {
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsStation>>
      getAllPrintStationFromCheckInAndCheckInGroup(
    String checkInId,
    String checkInGroupId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url =
        '/check-ins/v2/check_ins/$checkInId/check_in_group/$checkInGroupId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/print_station`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsStation>> getPrintStationFromStation(
    String stationId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations/$stationId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsStation] object
  /// using a path like this: `/check-ins/v2/stations/$stationId/print_station/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsStation?> getSinglePrintStationFromStation(
    String stationId,
    String id, {
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations/$stationId/print_station/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/print_station`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsStation>>
      getAllPrintStationFromStation(
    String stationId, {
    String? id,
    PcoCheckInsStationQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLocation = false,
    bool includePrintStation = false,
    bool includeTheme = false,
  }) async {
    query ??= PcoCheckInsStationQuery();
    query.getAll = true;
    if (includeAllRelated) query.include.addAll(PcoCheckInsStation.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLocation) query.include.add('location');
    if (includePrintStation) query.include.add('print_station');
    if (includeTheme) query.include.add('theme');
    var url = '/check-ins/v2/stations/$stationId/print_station';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckInGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/check_in_groups`
  ///
  /// Available Query Filters:
  /// - `canceled`
  /// - `printed`
  /// - `ready`
  /// - `skipped`
  Future<PcoCollection<PcoCheckInsCheckInGroup>> getCheckInGroups(
      {PcoCheckInsCheckInGroupQuery? query}) async {
    query ??= PcoCheckInsCheckInGroupQuery();
    var url = '$apiEndpoint/check_in_groups';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInGroup>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/checked_in_at_check_ins`
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
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckedInAtCheckIns(
      {PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/checked_in_at_check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/location`
  Future<PcoCollection<PcoCheckInsLocation>> getLocation(
      {PcoCheckInsLocationQuery? query}) async {
    query ??= PcoCheckInsLocationQuery();
    var url = '$apiEndpoint/location';
    return PcoCollection.fromApiCall<PcoCheckInsLocation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/print_station`
  Future<PcoCollection<PcoCheckInsStation>> getPrintStation(
      {PcoCheckInsStationQuery? query}) async {
    query ??= PcoCheckInsStationQuery();
    var url = '$apiEndpoint/print_station';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations/1/theme`
  Future<PcoCollection<PcoCheckInsTheme>> getTheme(
      {PcoCheckInsThemeQuery? query}) async {
    query ??= PcoCheckInsThemeQuery();
    var url = '$apiEndpoint/theme';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
