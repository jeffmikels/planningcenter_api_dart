/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.558124
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar Feed Object
///
/// - Application:        calendar
/// - Id:                 feed
/// - Type:               Feed
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/feeds
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarFeed()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarFeed.fromJson()` constructor.
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
/// A feed belonging to an organization.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `defaultChurchCenterVisibility` (rw) -> PCO: `default_church_center_visibility`
/// - `feedType` (rw) -> PCO: `feed_type`
/// - `name` (ro) -> PCO: `name`
/// - `importedAt` (ro) -> PCO: `imported_at`
/// - `isCanDelete` (ro) -> PCO: `can_delete`
/// - `eventOwnerId` (wo) -> PCO: `event_owner_id`
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
/// - `feed_type`: (URLParameter), query on a specific feed_type, example: ?where[feed_type]=value
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `feed-event-feed`: https://api.planningcenteronline.com/calendar/v2/events/1/feed
/// - `feed-organization-feeds`: https://api.planningcenteronline.com/calendar/v2/feeds
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Feed",
///   "id": "1",
///   "attributes": {
///     "default_church_center_visibility": "value",
///     "feed_type": "value",
///     "name": "string",
///     "imported_at": "2000-01-01T12:00:00Z",
///     "can_delete": true
///   },
///   "relationships": {
///     "event_owner": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarFeed extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Feed';
  static const String kTypeId = 'feed';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/feeds';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `feed_type`: (URLParameter), query on a specific feed_type, example: ?where[feed_type]=value
  static List<String> get canQuery => ['feed_type'];

  /// possible orderings with parameter ?order=
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

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
  static const kDefaultChurchCenterVisibility =
      'default_church_center_visibility';
  static const kFeedType = 'feed_type';
  static const kName = 'name';
  static const kImportedAt = 'imported_at';
  static const kCanDelete = 'can_delete';
  static const kEventOwnerId = 'event_owner_id';

  // getters and setters
  @override
  List<String> get createAllowed =>
      ['feed_type', 'event_owner_id', 'default_church_center_visibility'];

  @override
  List<String> get updateAllowed =>
      ['event_owner_id', 'default_church_center_visibility'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get defaultChurchCenterVisibility =>
      _attributes[kDefaultChurchCenterVisibility] ?? '';
  String get feedType => _attributes[kFeedType] ?? '';
  String get name => _attributes[kName] ?? '';
  DateTime get importedAt => DateTime.parse(_attributes[kImportedAt] ?? '');
  bool get isCanDelete => _attributes[kCanDelete] == true;

  // setters for object attributes

  /// Possible values: `hidden` or `published`

  /// pass `null` to remove key from attributes
  set defaultChurchCenterVisibility(String? x) => (x == null)
      ? _attributes.remove(kDefaultChurchCenterVisibility)
      : _attributes[kDefaultChurchCenterVisibility] = x;

  /// Possible values: `registrations`, `groups`, or `ical`

  /// pass `null` to remove key from attributes
  set feedType(String? x) =>
      (x == null) ? _attributes.remove(kFeedType) : _attributes[kFeedType] = x;

  // additional setters / getters for create/update attributes

  /// pass `null` to remove key from attributes
  set eventOwnerId(String? x) => (x == null)
      ? _attributes.remove(kEventOwnerId)
      : _attributes[kEventOwnerId] = x;
  String get eventOwnerId => _attributes[kEventOwnerId] ?? '';

  // Class Constructors
  PcoCalendarFeed.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarFeed.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `/calendar/v2/feeds`
  static Future<PcoCollection<PcoCalendarFeed>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/calendar/v2/feeds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting one)
  /// using a path like this: `/calendar/v2/events/$eventId/feed`
  static Future<PcoCollection<PcoCalendarFeed>> getFromEvent(
    String eventId, {
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/calendar/v2/events/$eventId/feed';

    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
