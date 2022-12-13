/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.054585
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsAttendanceTypeOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsAttendanceTypeFilter { none }

/// Creates a [PcoCheckInsAttendanceTypeQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsAttendanceTypeQuery(includes: ['a', 'b'])`
///
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCheckInsAttendanceType] objects can be requested with one or more of the following criteria:
/// - `whereId`: query on a specific id, example: ?where[id]=primary_key
/// - `whereName`: query on a specific name, example: ?where[name]=string
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
class PcoCheckInsAttendanceTypeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsAttendanceTypeOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsAttendanceTypeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsAttendanceTypeFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsAttendanceTypeFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsAttendanceTypeQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// Query by `id`
    /// query on a specific id, url example: ?where[id]=primary_key
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereId,

    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,

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

    if (whereId != null) where.add(PlanningCenterApiWhere.parse('id', whereId));
    if (whereName != null)
      where.add(PlanningCenterApiWhere.parse('name', whereName));
  }
}

/// This class represents a PCO CheckIns AttendanceType Object
///
/// - Application:        check-ins
/// - Id:                 attendance_type
/// - Type:               AttendanceType
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/attendance_types
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsAttendanceType.fromJson()` constructor.
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
/// A kind of attendee which is tracked by _headcount_, not by check-in.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `color` (ro) -> PCO: `color`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `limit` (ro) -> PCO: `limit`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-attendancetype-event`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event
/// - `headcount-attendancetype-headcounts`: https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts
///
/// Inbound Edges:
/// - `attendancetype-event-attendance_types`: https://api.planningcenteronline.com/check-ins/v2/events/1/attendance_types
/// - `attendancetype-headcount-attendance_type`: https://api.planningcenteronline.com/check-ins/v2/headcounts/1/attendance_type
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AttendanceType",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "color": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "limit": 1
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
class PcoCheckInsAttendanceType extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'AttendanceType';
  static const String kTypeId = 'attendance_type';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/attendance_types';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `id`: (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  static List<String> get canQuery => ['id', 'name'];

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
  static const kName = 'name';
  static const kColor = 'color';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kLimit = 'limit';

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
  String get name => _attributes[kName] ?? '';
  String get color => _attributes[kColor] ?? '';
  int get limit => _attributes[kLimit] ?? 0;

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);

  // Class Constructors
  PcoCheckInsAttendanceType.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsAttendanceType.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsAttendanceType] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsAttendanceType(
      {String? id,
      String? name,
      String? color,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? limit,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsAttendanceType.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (color != null) obj._attributes['color'] = color;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (limit != null) obj._attributes['limit'] = limit;

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

  /// Will get a collection of [PcoCheckInsAttendanceType] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/attendance_types`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsAttendanceType>> getFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsAttendanceTypeQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PcoCheckInsAttendanceTypeQuery();

    if (includeEvent) query.include.add('event');
    var url = '/check-ins/v2/events/$eventId/attendance_types';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsAttendanceType] objects (expecting one)
  /// using a path like this: `/check-ins/v2/headcounts/$headcountId/attendance_type`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsAttendanceType>> getFromHeadcount(
    String headcountId, {
    PcoCheckInsAttendanceTypeQuery? query,
    bool includeEvent = false,
  }) async {
    query ??= PcoCheckInsAttendanceTypeQuery();

    if (includeEvent) query.include.add('event');
    var url = '/check-ins/v2/headcounts/$headcountId/attendance_type';

    return PcoCollection.fromApiCall<PcoCheckInsAttendanceType>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/attendance_types/1/headcounts`
  Future<PcoCollection<PcoCheckInsHeadcount>> getHeadcounts(
      {PcoCheckInsHeadcountQuery? query}) async {
    query ??= PcoCheckInsHeadcountQuery();
    var url = '$apiEndpoint/headcounts';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
