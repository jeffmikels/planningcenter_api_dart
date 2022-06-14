/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:15.079675
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Calendar ResourceFolder Object
///
/// - Application:        calendar
/// - Id:                 resource_folder
/// - Type:               ResourceFolder
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarResourceFolder()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarResourceFolder.fromJson()` constructor.
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
/// An organizational folder containing rooms or resources.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (rw) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `kind` (ro) -> PCO: `kind`
/// - `pathName` (ro) -> PCO: `path_name`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `resources`: include associated resources
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
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
/// - `resource-resourcefolder-resources`: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
///
/// Inbound Edges:
/// - `resourcefolder-organization-resource_folders`: https://api.planningcenteronline.com/calendar/v2/resource_folders
/// - `resourcefolder-resource-resource_folder`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceFolder",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "path_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarResourceFolder extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceFolder';
  static const String kTypeId = 'resource_folder';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/resource_folders';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resources`: include associated resources
  static List<String> get canInclude => ['resources'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery =>
      ['created_at', 'name', 'path_name', 'updated_at'];

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
  static const kKind = 'kind';
  static const kPathName = 'path_name';

  // getters and setters
  @override
  List<String> get createAllowed => ['name'];

  @override
  List<String> get updateAllowed => ['name'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get kind => _attributes[kKind] ?? '';
  String get pathName => _attributes[kPathName] ?? '';

  // setters for object attributes

  /// The folder name

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  // typed getters for each relationship

  List<PcoCalendarResource> get includedResources =>
      (relationships['resources'] as List?)?.cast<PcoCalendarResource>() ?? [];

  // Class Constructors
  PcoCalendarResourceFolder.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoCalendarResourceFolder.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders`
  ///
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static Future<PcoCollection<PcoCalendarResourceFolder>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includeResources = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resource_folders';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_folder`
  static Future<PcoCollection<PcoCalendarResourceFolder>> getFromResource(
    String resourceId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeResources = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeResources) query.include.add('resources');
    var url = '/calendar/v2/resources/$resourceId/resource_folder';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources`
  Future<PcoCollection<PcoCalendarResource>> getResources({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeResourceApprovalGroups = false,
    bool includeResourceFolder = false,
    bool includeResourceQuestions = false,
    bool includeRoomSetups = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoCalendarResourceFolder.canInclude);
    if (includeResourceApprovalGroups)
      query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }
}
