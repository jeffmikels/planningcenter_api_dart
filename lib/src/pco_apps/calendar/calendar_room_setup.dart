/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:01.504683
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarRoomSetupOrder { createdAt, name, updatedAt }

/// Possible Inbound Filters:
/// - `sharedRoomSetups` -> `?filter=shared_room_setups` : -- no description
enum PcoCalendarRoomSetupFilter { sharedRoomSetups }

/// Creates a [PcoCalendarRoomSetupQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeContainingResource`: include associated containing_resource 
/// - `includeResourceSuggestions`: include associated resource_suggestions 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarRoomSetupQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCalendarRoomSetup] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `whereUpdatedAt`: query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
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
/// - `PcoCalendarRoomSetupOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarRoomSetupOrder.name` : will order by `name`
/// - `PcoCalendarRoomSetupOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarRoomSetupQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarRoomSetupOrder, String> _orderMap = {
    PcoCalendarRoomSetupOrder.createdAt: 'created_at',
    PcoCalendarRoomSetupOrder.name: 'name',
    PcoCalendarRoomSetupOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarRoomSetupOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarRoomSetupFilter, String> _filterMap = {
    PcoCalendarRoomSetupFilter.sharedRoomSetups: 'shared_room_setups',
  };
  static String filterString(PcoCalendarRoomSetupFilter filter) => _filterMap[filter]!;

  PcoCalendarRoomSetupQuery({
    /// include associated containing_resource
    /// when true, adds `?include=containing_resource` to url
    bool includeContainingResource = false,
    
    /// include associated resource_suggestions
    /// when true, adds `?include=resource_suggestions` to url
    bool includeResourceSuggestions = false,
    
    /// when true, adds `?include=containing_resource,resource_suggestions` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCalendarRoomSetupFilter? filterBy,
    PcoCalendarRoomSetupOrder? orderBy,


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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeContainingResource) include.add('containing_resource');
    if (includeAll || includeResourceSuggestions) include.add('resource_suggestions');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Calendar RoomSetup Object
/// 
/// - Application:        calendar
/// - Id:                 room_setup
/// - Type:               RoomSetup
/// - ApiVersion:         2021-07-20
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
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `containing_resource`: include associated containing_resource 
  /// - `resource_suggestions`: include associated resource_suggestions 
  static List<String> get canInclude => ['containing_resource','resource_suggestions'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','name','updated_at'];

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
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedContainingResource<T extends PcoResource>() => (relationships['containing_resource'] as List?)?.cast<T>() ?? [];
  
  List<PcoCalendarResourceSuggestion> get includedResourceSuggestions => (relationships['resource_suggestions'] as List?)?.cast<PcoCalendarResourceSuggestion>() ?? [];

  // Class Constructors
  PcoCalendarRoomSetup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarRoomSetup.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarRoomSetup] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCalendarRoomSetup({String? id, DateTime? createdAt, String? name, DateTime? updatedAt, String? description, String? diagram, String? diagramUrl, String? diagramThumbnailUrl, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarRoomSetup.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (name != null) obj._attributes['name'] = name;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (diagram != null) obj._attributes['diagram'] = diagram;
    if (diagramUrl != null) obj._attributes['diagram_url'] = diagramUrl;
    if (diagramThumbnailUrl != null) obj._attributes['diagram_thumbnail_url'] = diagramThumbnailUrl;

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



  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups`
  /// 
  /// Available Query Filters:
  /// - `shared_room_setups`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarRoomSetup>> get( {String? id, PcoCalendarRoomSetupQuery? query, bool includeAll = false, bool includeContainingResource = false, bool includeResourceSuggestions = false,}) async {
    query ??= PcoCalendarRoomSetupQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '/calendar/v2/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarRoomSetup>> getFromEventResourceRequest(String eventResourceRequestId, {PcoCalendarRoomSetupQuery? query, bool includeAll = false, bool includeContainingResource = false, bool includeResourceSuggestions = false,}) async {
    query ??= PcoCalendarRoomSetupQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup';
    
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/room_setups`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarRoomSetup>> getFromResource(String resourceId, {String? id, PcoCalendarRoomSetupQuery? query, bool includeAll = false, bool includeContainingResource = false, bool includeResourceSuggestions = false,}) async {
    query ??= PcoCalendarRoomSetupQuery();
    if (includeAll) query.include.addAll(PcoCalendarRoomSetup.canInclude);
    if (includeContainingResource) query.include.add('containing_resource');
    if (includeResourceSuggestions) query.include.add('resource_suggestions');
    var url = '/calendar/v2/resources/$resourceId/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource`
  Future<PcoCollection<PcoCalendarResource>> getContainingResource({PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/containing_resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions`
  Future<PcoCollection<PcoCalendarResourceSuggestion>> getResourceSuggestions({PcoCalendarResourceSuggestionQuery? query}) async {
    query ??= PcoCalendarResourceSuggestionQuery();
    var url = '$apiEndpoint/resource_suggestions';
    return PcoCollection.fromApiCall<PcoCalendarResourceSuggestion>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
