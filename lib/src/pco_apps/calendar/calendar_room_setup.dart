/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T15:04:46.569938
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar RoomSetup Object
///
/// - Application:        calendar
/// - Id:                 room_setup
/// - Type:               RoomSetup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarRoomSetup.fromJson()` constructor.
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
/// A diagram and list of suggested resources useful for predefined room setups.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (ro) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `description` (ro) -> PCO: `description`
/// - `diagram` (ro) -> PCO: `diagram`
/// - `diagramUrl` (ro) -> PCO: `diagram_url`
/// - `diagramThumbnailUrl` (ro) -> PCO: `diagram_thumbnail_url`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `containing_resource`: include associated containing_resource
/// - `resource_suggestions`: include associated resource_suggestions
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
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `resource-roomsetup-containing_resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
///
/// Inbound Edges:
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `roomsetup-organization-room_setups`: https://api.planningcenteronline.com/calendar/v2/room_setups
/// - `roomsetup-resource-room_setups`: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "RoomSetup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "diagram": "string",
///     "diagram_url": "string",
///     "diagram_thumbnail_url": "string"
///   },
///   "relationships": {
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     },
///     "resource_suggestions": {
///       "data": [
///         {
///           "type": "ResourceSuggestion",
///           "id": "1"
///         }
///       ]
///     },
///     "containing_resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarRoomSetup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'RoomSetup';
  static const String kTypeId = 'room_setup';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/room_setups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `containing_resource`: include associated containing_resource
  /// - `resource_suggestions`: include associated resource_suggestions
  static List<String> get canInclude =>
      ['containing_resource', 'resource_suggestions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at', 'name', 'updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at', 'name', 'updated_at'];

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
  static const kDescription = 'description';
  static const kDiagram = 'diagram';
  static const kDiagramUrl = 'diagram_url';
  static const kDiagramThumbnailUrl = 'diagram_thumbnail_url';

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
  String get description => _attributes[kDescription] ?? '';
  String get diagram => _attributes[kDiagram] ?? '';
  String get diagramUrl => _attributes[kDiagramUrl] ?? '';
  String get diagramThumbnailUrl => _attributes[kDiagramThumbnailUrl] ?? '';

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it here.
  List<T> includedContainingResource<T extends PcoResource>() =>
      (relationships['containing_resource'] as List?)?.cast<T>() ?? [];
  List<PcoCalendarResourceSuggestion> get includedResourceSuggestions =>
      (relationships['resource_suggestions'] as List?)
          ?.cast<PcoCalendarResourceSuggestion>() ??
      [];

  // Class Constructors
  PcoCalendarRoomSetup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups`
  ///
  /// Available Query Filters:
  /// - `shared_room_setups`
  static Future<PcoCollection<PcoCalendarRoomSetup>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContainingResource = false,
    bool includeResourceSuggestions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '/calendar/v2/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup`
  static Future<PcoCollection<PcoCalendarRoomSetup>>
      getFromEventResourceRequest(
    String eventResourceRequestId, {
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContainingResource = false,
    bool includeResourceSuggestions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url =
        '/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup';

    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/room_setups`
  static Future<PcoCollection<PcoCalendarRoomSetup>> getFromResource(
    String resourceId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeContainingResource = false,
    bool includeResourceSuggestions = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '/calendar/v2/resources/$resourceId/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource`
  Future<PcoCollection<PcoCalendarResource>> getContainingResource({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResourceApprovalGroups = false,
    bool includeResourceFolder = false,
    bool includeResourceQuestions = false,
    bool includeRoomSetups = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeResourceApprovalGroups)
      query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '$apiEndpoint/containing_resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions`
  Future<PcoCollection<PcoCalendarResourceSuggestion>> getResourceSuggestions({
    PlanningCenterApiQuery? query,
    bool includeResource = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeResource) query.include.add('resource');
    var url = '$apiEndpoint/resource_suggestions';
    return PcoCollection.fromApiCall<PcoCalendarResourceSuggestion>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
