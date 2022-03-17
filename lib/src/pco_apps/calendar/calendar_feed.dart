/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:10.091684
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Calendar Feed Object
/// 
/// - Application:        calendar
/// - Id:                 feed
/// - Type:               Feed
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/feeds
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
  static const String kShortestEdgeId = 'feed-organization-feeds';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/feeds';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/feeds';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDefaultChurchCenterVisibility = 'default_church_center_visibility';
  static const kFeedType = 'feed_type';
  static const kName = 'name';
  static const kImportedAt = 'imported_at';
  static const kCanDelete = 'can_delete';
  static const kEventOwnerId = 'event_owner_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['feed_type','event_owner_id','default_church_center_visibility'];

  @override
  List<String> get updateAllowed => ['event_owner_id','default_church_center_visibility'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get defaultChurchCenterVisibility => attributes[kDefaultChurchCenterVisibility] ?? '';
  String get feedType => attributes[kFeedType] ?? '';
  String get name => attributes[kName] ?? '';
  DateTime get importedAt => DateTime.parse(attributes[kImportedAt] ?? '');
  bool get isCanDelete => attributes[kCanDelete] == true;
  

  // setters for object attributes

  
  /// Possible values: `hidden` or `published`
  set defaultChurchCenterVisibility(String s) => attributes[kDefaultChurchCenterVisibility] = s;
  
  /// Possible values: `registrations`, `groups`, or `ical`
  set feedType(String s) => attributes[kFeedType] = s;
  

  // additional setters and getters for assignable values

  String get eventOwnerId => attributes[kEventOwnerId] ?? '';
  set eventOwnerId(String s) => attributes[kEventOwnerId] = s;
  



  // Class Constructors
  PcoCalendarFeed._() : super(kPcoApplication, kTypeString);
  PcoCalendarFeed.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoCalendarFeed] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/calendar/v2/feeds`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoCalendarFeed() {
    return PcoCalendarFeed._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/calendar/v2/feeds';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarFeed] objects (expecting many)
  /// using a path like this: `/calendar/v2/feeds`
  static Future<PcoCollection<PcoCalendarFeed>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarFeed.canInclude;
    var url = '/calendar/v2/feeds';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarFeed] objects (expecting one)
  /// using a path like this: `/calendar/v2/events/$eventId/feed`
  static Future<PcoCollection<PcoCalendarFeed>> getFromEvent(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarFeed.canInclude;
    var url = '/calendar/v2/events/$eventId/feed';
    
    return PcoCollection.fromApiCall<PcoCalendarFeed>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
