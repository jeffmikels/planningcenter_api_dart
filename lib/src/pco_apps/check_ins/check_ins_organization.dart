/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.582302
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsOrganizationFilter { none }

/// Creates a [PcoCheckInsOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsOrganizationQuery({
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
  }) : super();
}

/// This class represents a PCO CheckIns Organization Object
///
/// - Application:        check-ins
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsOrganization.fromJson()` constructor.
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
/// An organization which has people and events.
/// This contains its date format & time zone preferences.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `dateFormatPattern` (ro) -> PCO: `date_format_pattern`
/// - `timeZoneOlson` (ro) -> PCO: `time_zone_olson`
/// - `name` (ro) -> PCO: `name`
/// - `dailyCheckIns` (ro) -> PCO: `daily_check_ins`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `avatarUrl` (ro) -> PCO: `avatar_url`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-organization-check_ins`: https://api.planningcenteronline.com/check-ins/v2/check_ins
/// - `eventtime-organization-event_times`: https://api.planningcenteronline.com/check-ins/v2/event_times
/// - `event-organization-events`: https://api.planningcenteronline.com/check-ins/v2/events
/// - `headcount-organization-headcounts`: https://api.planningcenteronline.com/check-ins/v2/headcounts
/// - `label-organization-labels`: https://api.planningcenteronline.com/check-ins/v2/labels
/// - `option-organization-options`: https://api.planningcenteronline.com/check-ins/v2/options
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `person-organization-people`: https://api.planningcenteronline.com/check-ins/v2/people
/// - `station-organization-stations`: https://api.planningcenteronline.com/check-ins/v2/stations
/// - `theme-organization-themes`: https://api.planningcenteronline.com/check-ins/v2/themes
///
/// Inbound Edges:
/// - `organization-person-organization`: https://api.planningcenteronline.com/check-ins/v2/people/1/organization
///
/// Actions:
/// - `build_attendance_chart`: https://api.planningcenteronline.com/check-ins/v2
/// - `build_check_in_times_for_prepared_check_in`: https://api.planningcenteronline.com/check-ins/v2
/// - `build_recommended_check_in_times`: https://api.planningcenteronline.com/check-ins/v2
/// - `bulk_check_in`: https://api.planningcenteronline.com/check-ins/v2
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {
///     "date_format_pattern": "string",
///     "time_zone_olson": "string",
///     "name": "string",
///     "daily_check_ins": 1,
///     "time_zone": "string",
///     "avatar_url": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsOrganization extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

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
  static const kDateFormatPattern = 'date_format_pattern';
  static const kTimeZoneOlson = 'time_zone_olson';
  static const kName = 'name';
  static const kDailyCheckIns = 'daily_check_ins';
  static const kTimeZone = 'time_zone';
  static const kAvatarUrl = 'avatar_url';
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
  String get dateFormatPattern => _attributes[kDateFormatPattern] ?? '';
  String get timeZoneOlson => _attributes[kTimeZoneOlson] ?? '';
  String get name => _attributes[kName] ?? '';
  int get dailyCheckIns => _attributes[kDailyCheckIns] ?? 0;
  String get timeZone => _attributes[kTimeZone] ?? '';
  String get avatarUrl => _attributes[kAvatarUrl] ?? '';

  // Class Constructors
  PcoCheckInsOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsOrganization(
      {String? id,
      String? dateFormatPattern,
      String? timeZoneOlson,
      String? name,
      int? dailyCheckIns,
      String? timeZone,
      String? avatarUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsOrganization.empty();
    obj._id = id;
    if (dateFormatPattern != null)
      obj._attributes['date_format_pattern'] = dateFormatPattern;
    if (timeZoneOlson != null)
      obj._attributes['time_zone_olson'] = timeZoneOlson;
    if (name != null) obj._attributes['name'] = name;
    if (dailyCheckIns != null)
      obj._attributes['daily_check_ins'] = dailyCheckIns;
    if (timeZone != null) obj._attributes['time_zone'] = timeZone;
    if (avatarUrl != null) obj._attributes['avatar_url'] = avatarUrl;
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

  /// Will get a collection of [PcoCheckInsOrganization] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$personId/organization`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsOrganization>> getFromPerson(
    String personId, {
    String? id,
    PcoCheckInsOrganizationQuery? query,
  }) async {
    query ??= PcoCheckInsOrganizationQuery();

    var url = '/check-ins/v2/people/$personId/organization';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOrganization>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/check_ins`
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
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/event_times`
  Future<PcoCollection<PcoCheckInsEventTime>> getEventTimes(
      {PcoCheckInsEventTimeQuery? query}) async {
    query ??= PcoCheckInsEventTimeQuery();
    var url = '$apiEndpoint/event_times';
    return PcoCollection.fromApiCall<PcoCheckInsEventTime>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events`
  ///
  /// Available Query Filters:
  /// - `archived`
  /// - `for_headcounts`
  /// - `not_archived`
  Future<PcoCollection<PcoCheckInsEvent>> getEvents(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsHeadcount] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/headcounts`
  Future<PcoCollection<PcoCheckInsHeadcount>> getHeadcounts(
      {PcoCheckInsHeadcountQuery? query}) async {
    query ??= PcoCheckInsHeadcountQuery();
    var url = '$apiEndpoint/headcounts';
    return PcoCollection.fromApiCall<PcoCheckInsHeadcount>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels`
  Future<PcoCollection<PcoCheckInsLabel>> getLabels(
      {PcoCheckInsLabelQuery? query}) async {
    query ??= PcoCheckInsLabelQuery();
    var url = '$apiEndpoint/labels';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/options`
  Future<PcoCollection<PcoCheckInsOption>> getOptions(
      {PcoCheckInsOptionQuery? query}) async {
    query ??= PcoCheckInsOptionQuery();
    var url = '$apiEndpoint/options';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes`
  Future<PcoCollection<PcoCheckInsPass>> getPasses(
      {PcoCheckInsPassQuery? query}) async {
    query ??= PcoCheckInsPassQuery();
    var url = '$apiEndpoint/passes';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/people`
  Future<PcoCollection<PcoCheckInsPerson>> getPeople(
      {PcoCheckInsPersonQuery? query}) async {
    query ??= PcoCheckInsPersonQuery();
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsStation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/stations`
  Future<PcoCollection<PcoCheckInsStation>> getStations(
      {PcoCheckInsStationQuery? query}) async {
    query ??= PcoCheckInsStationQuery();
    var url = '$apiEndpoint/stations';
    return PcoCollection.fromApiCall<PcoCheckInsStation>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/themes`
  Future<PcoCollection<PcoCheckInsTheme>> getThemes(
      {PcoCheckInsThemeQuery? query}) async {
    query ??= PcoCheckInsThemeQuery();
    var url = '$apiEndpoint/themes';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `build_attendance_chart`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> buildAttendanceChart(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/v2';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `build_check_in_times_for_prepared_check_in`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> buildCheckInTimesForPreparedCheckIn(
      Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/v2';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `build_recommended_check_in_times`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> buildRecommendedCheckInTimes(
      Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/v2';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  /// ACTION: `bulk_check_in`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> bulkCheckIn(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/v2';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
