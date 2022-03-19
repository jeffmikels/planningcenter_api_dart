/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:05.450718
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Calendar TagGroup Object
///
/// - Application:        calendar
/// - Id:                 tag_group
/// - Type:               TagGroup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - Create Endpoint:    NONE
///
/// ## Description
/// A grouping of tags for organizational purposes.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (ro) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `isRequired` (ro) -> PCO: `required`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `events`: include associated events
/// - `tags`: include associated tags
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `event-taggroup-events`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
/// - `tag-taggroup-tags`: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
///
/// Inbound Edges:
/// - `taggroup-organization-tag_groups`: https://api.planningcenteronline.com/calendar/v2/tag_groups
/// - `taggroup-tag-tag_group`: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "TagGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "required": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarTagGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/tag_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `events`: include associated events
  /// - `tags`: include associated tags
  static List<String> get canInclude => ['events', 'tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'name', 'updated_at'];

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
  static const kCreatedAt = 'created_at';
  static const kName = 'name';
  static const kUpdatedAt = 'updated_at';
  static const kRequired = 'required';

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
  String get name => attributes[kName] ?? '';
  bool get isRequired => attributes[kRequired] == true;

  // Class Constructors
  PcoCalendarTagGroup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarTagGroup.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tag_groups`
  ///
  /// Available Query Filters:
  /// - `required`
  static Future<PcoCollection<PcoCalendarTagGroup>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tag_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarTagGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/tags/$tagId/tag_group`
  static Future<PcoCollection<PcoCalendarTagGroup>> getFromTag(String tagId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tags/$tagId/tag_group';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events`
  Future<PcoCollection<PcoCalendarEvent>> getEvents(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarTag] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags`
  Future<PcoCollection<PcoCalendarTag>> getTags(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '$apiEndpoint/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
