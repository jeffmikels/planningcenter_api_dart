/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.505616
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// ## Description
/// A ServiceTime Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `startTime` (rw) -> PCO: `start_time`
/// - `day` (rw) -> PCO: `day`
/// - `description` (rw) -> PCO: `description`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `time`: (URLParameter), prefix with a hyphen (-time) to reverse the order
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
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoPeopleServiceTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoPeopleServiceTime] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleServiceTime(String campusId,
      {int? startTime, String? day, String? description}) {
    var obj = PcoPeopleServiceTime.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/people/v2/campuses/$campusId/service_times';
    if (startTime != null) obj.startTime = startTime;
    if (day != null) obj.day = day;
    if (description != null) obj.description = description;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoPeopleServiceTime] objects (expecting many)
  /// using a path like this: `/people/v2/campuses/$campusId/service_times`
  static Future<PcoCollection<PcoPeopleServiceTime>> getFromCampus(
    String campusId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

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
