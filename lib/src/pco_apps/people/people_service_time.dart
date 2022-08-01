/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.922527
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `time` -> `?order=time`
enum PcoPeopleServiceTimeOrder { time }

/// Filtering is not allowed when requesting this object.
enum PcoPeopleServiceTimeFilter { none }

/// Creates a [PcoPeopleServiceTimeQuery] object
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoPeopleServiceTimeOrder.time` : will order by `time`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoPeopleServiceTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoPeopleServiceTimeOrder, String> _orderMap = {
    PcoPeopleServiceTimeOrder.time: 'time',
  };
  static String orderString(PcoPeopleServiceTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoPeopleServiceTimeFilter, String> _filterMap = {};
  static String filterString(PcoPeopleServiceTimeFilter filter) =>
      _filterMap[filter]!;

  PcoPeopleServiceTimeQuery({
    PcoPeopleServiceTimeOrder? orderBy,

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
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO People ServiceTime Object
///
/// - Application:        people
/// - Id:                 service_time
/// - Type:               ServiceTime
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// - Create Endpoint:    https://api.planningcenteronline.com/people/v2/campuses/1/service_times
///
/// ## Instantiation
/// - Create a new instance using the `PcoPeopleServiceTime()` constructor
/// - Instantiate from existing `JSON` data using the `PcoPeopleServiceTime.fromJson()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
/// ### Extra Instructions
/// #### CREATING
/// Must be an Organization Administrator
///
///
/// #### UPDATING
/// Must be an Organization Administrator
///
///
/// #### DELETING
/// Must be an Organization Administrator
///
/// ## Description
/// A ServiceTime Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `startTime` (rw) -> PCO: `start_time`
/// - `day` (rw) -> PCO: `day`
/// - `description` (rw) -> PCO: `description`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `servicetime-campus-service_times`: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ServiceTime",
///   "id": "1",
///   "attributes": {
///     "start_time": 1,
///     "day": "value",
///     "description": "string"
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "campus": {
///       "data": {
///         "type": "Campus",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoPeopleServiceTime extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ServiceTime';
  static const String kTypeId = 'service_time';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
  static List<String> get canOrderBy => ['time'];

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
  static const kStartTime = 'start_time';
  static const kDay = 'day';
  static const kDescription = 'description';

  // getters and setters
  @override
  List<String> get createAllowed => ['start_time', 'day', 'description'];

  @override
  List<String> get updateAllowed => ['start_time', 'day', 'description'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  int get startTime => _attributes[kStartTime] ?? 0;
  String get day => _attributes[kDay] ?? '';
  String get description => _attributes[kDescription] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set startTime(int? x) => (x == null)
      ? _attributes.remove(kStartTime)
      : _attributes[kStartTime] = x;

  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`

  /// pass `null` to remove key from attributes
  set day(String? x) =>
      (x == null) ? _attributes.remove(kDay) : _attributes[kDay] = x;

  /// pass `null` to remove key from attributes
  set description(String? x) => (x == null)
      ? _attributes.remove(kDescription)
      : _attributes[kDescription] = x;

  // Class Constructors
  PcoPeopleServiceTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoPeopleServiceTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleServiceTime] object using this endpoint: `https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `startTime`, `day`, `description`
  /// - FIELDS USED WHEN UPDATING: `startTime`, `day`, `description`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoPeopleServiceTime(
      {required String campusId,
      String? id,
      int? startTime,
      String? day,
      String? description,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoPeopleServiceTime.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times';
    if (startTime != null) obj._attributes['start_time'] = startTime;
    if (day != null) obj._attributes['day'] = day;
    if (description != null) obj._attributes['description'] = description;

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

  /// Will get a collection of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/$campusId/service_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoPeopleServiceTime>> getFromCampus(
    String campusId, {
    String? id,
    PcoPeopleServiceTimeQuery? query,
  }) async {
    query ??= PcoPeopleServiceTimeQuery();

    var url = '/people/v2/campuses/$campusId/service_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleServiceTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
