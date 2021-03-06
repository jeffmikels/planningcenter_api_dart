/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.324208
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services Blockout Object
///
/// - Application:        services
/// - Id:                 blockout
/// - Type:               Blockout
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/blockouts
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/people/1/blockouts
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesBlockout()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesBlockout.fromJson()` constructor.
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
/// An object representing a blockout date, and an optional recurrence pattern
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `description` (ro) -> PCO: `description`
/// - `groupIdentifier` (ro) -> PCO: `group_identifier`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `reason` (rw) -> PCO: `reason`
/// - `repeatFrequency` (rw) -> PCO: `repeat_frequency`
/// - `repeatInterval` (rw) -> PCO: `repeat_interval`
/// - `repeatPeriod` (rw) -> PCO: `repeat_period`
/// - `settings` (ro) -> PCO: `settings`
/// - `timeZone` (ro) -> PCO: `time_zone`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `repeatUntil` (rw) -> PCO: `repeat_until`
/// - `startsAt` (rw) -> PCO: `starts_at`
/// - `endsAt` (rw) -> PCO: `ends_at`
/// - `isShare` (rw) -> PCO: `share`
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
/// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `blockoutdate-blockout-blockout_dates`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates
/// - `blockoutexception-blockout-blockout_exceptions`: https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions
///
/// Inbound Edges:
/// - `blockout-person-blockouts`: https://api.planningcenteronline.com/services/v2/people/1/blockouts
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Blockout",
///   "id": "1",
///   "attributes": {
///     "description": "string",
///     "group_identifier": "string",
///     "organization_name": "string",
///     "reason": "string",
///     "repeat_frequency": "string",
///     "repeat_interval": "string",
///     "repeat_period": "string",
///     "settings": "string",
///     "time_zone": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "repeat_until": "2000-01-01",
///     "starts_at": "2000-01-01T12:00:00Z",
///     "ends_at": "2000-01-01T12:00:00Z",
///     "share": true
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesBlockout extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Blockout';
  static const String kTypeId = 'blockout';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/blockouts';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/blockouts';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `group_identifier`: (URLParameter), query on a specific group_identifier, example: ?where[group_identifier]=string
  static List<String> get canQuery => ['group_identifier'];

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
  static const kDescription = 'description';
  static const kGroupIdentifier = 'group_identifier';
  static const kOrganizationName = 'organization_name';
  static const kReason = 'reason';
  static const kRepeatFrequency = 'repeat_frequency';
  static const kRepeatInterval = 'repeat_interval';
  static const kRepeatPeriod = 'repeat_period';
  static const kSettings = 'settings';
  static const kTimeZone = 'time_zone';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kRepeatUntil = 'repeat_until';
  static const kStartsAt = 'starts_at';
  static const kEndsAt = 'ends_at';
  static const kShare = 'share';

  // getters and setters
  @override
  List<String> get createAllowed => [
        'reason',
        'repeat_frequency',
        'repeat_interval',
        'repeat_period',
        'share',
        'repeat_until',
        'starts_at',
        'ends_at'
      ];

  @override
  List<String> get updateAllowed => [
        'reason',
        'repeat_frequency',
        'repeat_interval',
        'repeat_period',
        'share',
        'repeat_until',
        'starts_at',
        'ends_at'
      ];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get description => _attributes[kDescription] ?? '';
  String get groupIdentifier => _attributes[kGroupIdentifier] ?? '';
  String get organizationName => _attributes[kOrganizationName] ?? '';
  String get reason => _attributes[kReason] ?? '';
  String get repeatFrequency => _attributes[kRepeatFrequency] ?? '';
  String get repeatInterval => _attributes[kRepeatInterval] ?? '';
  String get repeatPeriod => _attributes[kRepeatPeriod] ?? '';
  String get settings => _attributes[kSettings] ?? '';
  String get timeZone => _attributes[kTimeZone] ?? '';
  String get repeatUntil => _attributes[kRepeatUntil] ?? '';
  DateTime get startsAt => DateTime.parse(_attributes[kStartsAt] ?? '');
  DateTime get endsAt => DateTime.parse(_attributes[kEndsAt] ?? '');
  bool get isShare => _attributes[kShare] == true;

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set reason(String? x) =>
      (x == null) ? _attributes.remove(kReason) : _attributes[kReason] = x;

  /// Possible values:
  ///
  /// - no_repeat
  ///
  /// - every_1
  ///
  /// - every_2
  ///
  /// - every_3
  ///
  /// - every_4
  ///
  /// - every_5
  ///
  /// - every_6
  ///
  /// - every_7
  ///
  /// - every_8

  /// pass `null` to remove key from attributes
  set repeatFrequency(String? x) => (x == null)
      ? _attributes.remove(kRepeatFrequency)
      : _attributes[kRepeatFrequency] = x;

  /// Possible values:
  ///
  /// - exact_day_of_month
  ///
  /// - week_of_month_1
  ///
  /// - week_of_month_2
  ///
  /// - week_of_month_3
  ///
  /// - week_of_month_4
  ///
  /// - week_of_month_last

  /// pass `null` to remove key from attributes
  set repeatInterval(String? x) => (x == null)
      ? _attributes.remove(kRepeatInterval)
      : _attributes[kRepeatInterval] = x;

  /// Possible values:
  ///
  /// - daily
  ///
  /// - weekly
  ///
  /// - monthly
  ///
  /// - yearly

  /// pass `null` to remove key from attributes
  set repeatPeriod(String? x) => (x == null)
      ? _attributes.remove(kRepeatPeriod)
      : _attributes[kRepeatPeriod] = x;

  /// pass `null` to remove key from attributes
  set repeatUntil(String? x) => (x == null)
      ? _attributes.remove(kRepeatUntil)
      : _attributes[kRepeatUntil] = x;

  /// pass `null` to remove key from attributes
  set startsAt(DateTime? x) => (x == null)
      ? _attributes.remove(kStartsAt)
      : _attributes[kStartsAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set endsAt(DateTime? x) => (x == null)
      ? _attributes.remove(kEndsAt)
      : _attributes[kEndsAt] = x.toIso8601String();

  /// pass `null` to remove key from attributes
  set isShare(bool? x) =>
      (x == null) ? _attributes.remove(kShare) : _attributes[kShare] = x;

  // Class Constructors
  PcoServicesBlockout.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesBlockout.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesBlockout] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/people/$personId/blockouts`
  ///
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesBlockout(String personId,
      {String? reason,
      String? repeatFrequency,
      String? repeatInterval,
      String? repeatPeriod,
      bool? isShare,
      String? repeatUntil,
      DateTime? startsAt,
      DateTime? endsAt}) {
    var obj = PcoServicesBlockout.empty();
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/people/$personId/blockouts';
    if (reason != null) obj.reason = reason;
    if (repeatFrequency != null) obj.repeatFrequency = repeatFrequency;
    if (repeatInterval != null) obj.repeatInterval = repeatInterval;
    if (repeatPeriod != null) obj.repeatPeriod = repeatPeriod;
    if (isShare != null) obj.isShare = isShare;
    if (repeatUntil != null) obj.repeatUntil = repeatUntil;
    if (startsAt != null) obj.startsAt = startsAt;
    if (endsAt != null) obj.endsAt = endsAt;
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesBlockout] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/blockouts`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `past`
  static Future<PcoCollection<PcoServicesBlockout>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/services/v2/people/$personId/blockouts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesBlockout>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesBlockoutDate] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_dates`
  Future<PcoCollection<PcoServicesBlockoutDate>> getBlockoutDates({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/blockout_dates';
    return PcoCollection.fromApiCall<PcoServicesBlockoutDate>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesBlockoutException] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/blockouts/1/blockout_exceptions`
  Future<PcoCollection<PcoServicesBlockoutException>> getBlockoutExceptions({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/blockout_exceptions';
    return PcoCollection.fromApiCall<PcoServicesBlockoutException>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
