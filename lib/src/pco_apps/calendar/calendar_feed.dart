/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.722780
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `name` -> `?order=name`
enum PcoCalendarFeedOrder { name }

/// Filtering is not allowed when requesting this object.
enum PcoCalendarFeedFilter { none }

/// Creates a [PcoCalendarFeedQuery] object
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
///
/// [PcoCalendarFeed] objects can be requested with one or more of the following criteria:
/// - `whereFeedType`: query on a specific feed_type, example: ?where[feed_type]=value
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
/// - `PcoCalendarFeedOrder.name` : will order by `name`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarFeedQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarFeedOrder, String> _orderMap = {
    PcoCalendarFeedOrder.name: 'name',
  };
  static String orderString(PcoCalendarFeedOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarFeedFilter, String> _filterMap = {};
  static String filterString(PcoCalendarFeedFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarFeedQuery({
    /// Query by `feed_type`
    /// query on a specific feed_type, url example: ?where[feed_type]=value
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereFeedType,
    PcoCalendarFeedOrder? orderBy,

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
    if (whereFeedType != null)
      where.add(PlanningCenterApiWhere.parse('feed_type', whereFeedType));

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar Feed Object
///
/// - Application:        calendar
/// - Id:                 feed
/// - Type:               Feed
/// - ApiVersion:         2021-07-20
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
  static const String kApiVersion = '2021-07-20';
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
  ///
  /// pass `null` to remove key from attributes
  set defaultChurchCenterVisibility(String? x) => (x == null)
      ? _attributes.remove(kDefaultChurchCenterVisibility)
      : _attributes[kDefaultChurchCenterVisibility] = x;

  /// Possible values: `registrations`, `groups`, `ical`, or `form`
  ///
  /// pass `null` to remove key from attributes
  set feedType(String? x) =>
      (x == null) ? _attributes.remove(kFeedType) : _attributes[kFeedType] = x;

  // additional setters / getters for create/update attributes
  ///
  /// pass `null` to remove key from attributes
  set eventOwnerId(String? x) => (x == null)
      ? _attributes.remove(kEventOwnerId)
      : _attributes[kEventOwnerId] = x;
  String get eventOwnerId => _attributes[kEventOwnerId] ?? '';

  // Class Constructors
  PcoCalendarFeed.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoCalendarFeed.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarFeed] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `feedType`, `eventOwnerId`, `defaultChurchCenterVisibility`
  /// - FIELDS USED WHEN UPDATING: `eventOwnerId`, `defaultChurchCenterVisibility`
  factory PcoCalendarFeed(
      {String? id,
      String? defaultChurchCenterVisibility,
      String? feedType,
      String? name,
      DateTime? importedAt,
      bool? isCanDelete,
      String? eventOwnerId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarFeed.empty();
    obj._id = id;
    if (defaultChurchCenterVisibility != null)
      obj._attributes['default_church_center_visibility'] =
          defaultChurchCenterVisibility;
    if (feedType != null) obj._attributes['feed_type'] = feedType;
    if (name != null) obj._attributes['name'] = name;
    if (importedAt != null)
      obj._attributes['imported_at'] = importedAt.toIso8601String();
    if (isCanDelete != null) obj._attributes['can_delete'] = isCanDelete;
    if (eventOwnerId != null) obj._attributes['event_owner_id'] = eventOwnerId;

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

  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `/calendar/v2/feeds`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarFeed>> get({
    String? id,
    PcoCalendarFeedQuery? query,
  }) async {
    query ??= PcoCalendarFeedQuery();

    var url = '/calendar/v2/feeds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarFeed] objects (expecting one)
  /// using a path like this: `/calendar/v2/events/$eventId/feed`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarFeed>> getFromEvent(
    String eventId, {
    PcoCalendarFeedQuery? query,
  }) async {
    query ??= PcoCalendarFeedQuery();

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
