/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T17:43:01.501824
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


part of pco;

/// Possible Ordering:
/// - `createdAt` -> `?order=created_at`
/// - `expiresAt` -> `?order=expires_at`
/// - `name` -> `?order=name`
/// - `updatedAt` -> `?order=updated_at`
enum PcoCalendarResourceOrder { createdAt, expiresAt, name, updatedAt }

/// Possible Inbound Filters:
/// - `resources` -> `?filter=resources` : -- no description
/// - `rooms` -> `?filter=rooms` : -- no description
enum PcoCalendarResourceFilter { resources, rooms }

/// Creates a [PcoCalendarResourceQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
/// 
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeResourceApprovalGroups`: include associated resource_approval_groups 
/// - `includeResourceFolder`: include associated resource_folder 
/// - `includeResourceQuestions`: include associated resource_questions 
/// - `includeRoomSetups`: include associated room_setups 
/// - `includeAll`: include all related objects
/// 
/// Alternatively, you may pass a list of strings to the `include` argument.
/// 
/// e.g. `PcoCalendarResourceQuery(includes: ['a', 'b'])`
/// 
/// ## Possible Query Fields
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// 
/// [PcoCalendarResource] objects can be requested with one or more of the following criteria:
/// - `whereCreatedAt`: query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `whereKind`: query on a specific kind, example: ?where[kind]=string
/// - `whereName`: query on a specific name, example: ?where[name]=string
/// - `wherePathName`: query on a specific path_name, example: ?where[path_name]=string
/// - `whereSerialNumber`: query on a specific serial_number, example: ?where[serial_number]=string
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
/// - `PcoCalendarResourceOrder.createdAt` : will order by `created_at`
/// - `PcoCalendarResourceOrder.expiresAt` : will order by `expires_at`
/// - `PcoCalendarResourceOrder.name` : will order by `name`
/// - `PcoCalendarResourceOrder.updatedAt` : will order by `updated_at`
/// 
/// To reverse the order, set `reverse` to true.
/// 
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// 
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarResourceQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarResourceOrder, String> _orderMap = {
    PcoCalendarResourceOrder.createdAt: 'created_at',
    PcoCalendarResourceOrder.expiresAt: 'expires_at',
    PcoCalendarResourceOrder.name: 'name',
    PcoCalendarResourceOrder.updatedAt: 'updated_at',
  };
  static String orderString(PcoCalendarResourceOrder order, {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarResourceFilter, String> _filterMap = {
    PcoCalendarResourceFilter.resources: 'resources',
    PcoCalendarResourceFilter.rooms: 'rooms',
  };
  static String filterString(PcoCalendarResourceFilter filter) => _filterMap[filter]!;

  PcoCalendarResourceQuery({
    /// include associated resource_approval_groups
    /// when true, adds `?include=resource_approval_groups` to url
    bool includeResourceApprovalGroups = false,
    
    /// include associated resource_folder
    /// when true, adds `?include=resource_folder` to url
    bool includeResourceFolder = false,
    
    /// include associated resource_questions
    /// when true, adds `?include=resource_questions` to url
    bool includeResourceQuestions = false,
    
    /// include associated room_setups
    /// when true, adds `?include=room_setups` to url
    bool includeRoomSetups = false,
    
    /// when true, adds `?include=resource_approval_groups,resource_folder,resource_questions,room_setups` to url parameters
    bool includeAll = false,

    /// Query by `created_at`
    /// query on a specific created_at, url example: ?where[created_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereCreatedAt,
    
    /// Query by `kind`
    /// query on a specific kind, url example: ?where[kind]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereKind,
    
    /// Query by `name`
    /// query on a specific name, url example: ?where[name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereName,
    
    /// Query by `path_name`
    /// query on a specific path_name, url example: ?where[path_name]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? wherePathName,
    
    /// Query by `serial_number`
    /// query on a specific serial_number, url example: ?where[serial_number]=string
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereSerialNumber,
    
    /// Query by `updated_at`
    /// query on a specific updated_at, url example: ?where[updated_at]=2000-01-01T12:00:00Z
    /// include a prefix of `<`, `<=`, `>`, `>=` to query by comparisons
    String? whereUpdatedAt,
    

    PcoCalendarResourceFilter? filterBy,
    PcoCalendarResourceOrder? orderBy,


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
    if (includeAll || includeResourceApprovalGroups) include.add('resource_approval_groups');
    if (includeAll || includeResourceFolder) include.add('resource_folder');
    if (includeAll || includeResourceQuestions) include.add('resource_questions');
    if (includeAll || includeRoomSetups) include.add('room_setups');
    
    if (whereCreatedAt != null) where.add(PlanningCenterApiWhere.parse('created_at', whereCreatedAt));
    if (whereKind != null) where.add(PlanningCenterApiWhere.parse('kind', whereKind));
    if (whereName != null) where.add(PlanningCenterApiWhere.parse('name', whereName));
    if (wherePathName != null) where.add(PlanningCenterApiWhere.parse('path_name', wherePathName));
    if (whereSerialNumber != null) where.add(PlanningCenterApiWhere.parse('serial_number', whereSerialNumber));
    if (whereUpdatedAt != null) where.add(PlanningCenterApiWhere.parse('updated_at', whereUpdatedAt));
        
    
    if (orderBy != null) order = orderString(orderBy, reverse: reverse);}
}

/// This class represents a PCO Calendar Resource Object
/// 
/// - Application:        calendar
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2021-07-20
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resources
/// - Create Endpoint:    NONE
/// 
/// ## Instantiation
/// - Create a new instance using the `PcoCalendarResource()` constructor
/// - Instantiate from existing `JSON` data using the `PcoCalendarResource.fromJson()` constructor.
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
/// A room or resource that can be requested for use as part of
/// an event.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `kind` (ro) -> PCO: `kind`
/// - `name` (rw) -> PCO: `name`
/// - `serialNumber` (ro) -> PCO: `serial_number`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `description` (ro) -> PCO: `description`
/// - `expiresAt` (ro) -> PCO: `expires_at`
/// - `homeLocation` (rw) -> PCO: `home_location`
/// - `image` (ro) -> PCO: `image`
/// - `quantity` (rw) -> PCO: `quantity`
/// - `pathName` (ro) -> PCO: `path_name`
/// 
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
/// - `requiredapproval-resource-required_approvals`: https://api.planningcenteronline.com/calendar/v2/resources/1/required_approvals
/// - `resourceapprovalgroup-resource-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
/// - `resourcebooking-resource-resource_bookings`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
/// - `resourcefolder-resource-resource_folder`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
/// - `resourcequestion-resource-resource_questions`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
/// - `roomsetup-resource-room_setups`: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
/// 
/// Inbound Edges:
/// - `resource-conflict-resource`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
/// - `resource-eventresourcerequest-resource`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource
/// - `resource-organization-resources`: https://api.planningcenteronline.com/calendar/v2/resources
/// - `resource-requiredapproval-resource`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/required_approvals/1/resource
/// - `resource-resourceapprovalgroup-resources`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
/// - `resource-resourcebooking-resource`: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource
/// - `resource-resourcefolder-resources`: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources
/// - `resource-resourcesuggestion-resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
/// - `resource-roomsetup-containing_resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Resource",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "kind": "string",
///     "name": "string",
///     "serial_number": "string",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "description": "string",
///     "expires_at": "2000-01-01T12:00:00Z",
///     "home_location": "string",
///     "image": "string",
///     "quantity": 1,
///     "path_name": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarResource extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Resource';
  static const String kTypeId = 'resource';
  static const String kApiVersion = '2021-07-20';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resources';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resource_approval_groups`: include associated resource_approval_groups 
  /// - `resource_folder`: include associated resource_folder 
  /// - `resource_questions`: include associated resource_questions 
  /// - `room_setups`: include associated room_setups 
  static List<String> get canInclude => ['resource_approval_groups','resource_folder','resource_questions','room_setups'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// - `serial_number`: (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
  /// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','kind','name','path_name','serial_number','updated_at'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `expires_at`: (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
  /// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','expires_at','name','updated_at'];

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
  static const kKind = 'kind';
  static const kName = 'name';
  static const kSerialNumber = 'serial_number';
  static const kUpdatedAt = 'updated_at';
  static const kDescription = 'description';
  static const kExpiresAt = 'expires_at';
  static const kHomeLocation = 'home_location';
  static const kImage = 'image';
  static const kQuantity = 'quantity';
  static const kPathName = 'path_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['home_location', 'name', 'quantity'];

  @override
  List<String> get updateAllowed => ['home_location', 'name', 'quantity'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get kind => _attributes[kKind] ?? '';
  String get name => _attributes[kName] ?? '';
  String get serialNumber => _attributes[kSerialNumber] ?? '';
  String get description => _attributes[kDescription] ?? '';
  DateTime get expiresAt => DateTime.parse(_attributes[kExpiresAt] ?? '');
  String get homeLocation => _attributes[kHomeLocation] ?? '';
  String get image => _attributes[kImage] ?? '';
  int get quantity => _attributes[kQuantity] ?? 0;
  String get pathName => _attributes[kPathName] ?? '';
  
  // setters for object attributes
  
  /// The name of the room or resource
  ///
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;
  
  /// Where the resource is normally kept
  ///
  /// pass `null` to remove key from attributes
  set homeLocation(String? x) => (x == null) ? _attributes.remove(kHomeLocation) : _attributes[kHomeLocation] = x;
  
  /// The quantity of the resource
  ///
  /// pass `null` to remove key from attributes
  set quantity(int? x) => (x == null) ? _attributes.remove(kQuantity) : _attributes[kQuantity] = x;
  
  // typed getters for each relationship
  
  List<PcoCalendarResourceApprovalGroup> get includedResourceApprovalGroups => (relationships['resource_approval_groups'] as List?)?.cast<PcoCalendarResourceApprovalGroup>() ?? [];
  PcoCalendarResourceFolder? get includedResourceFolder => _firstOrNull<PcoCalendarResourceFolder>(relationships['resource_folder']);
  List<PcoCalendarResourceQuestion> get includedResourceQuestions => (relationships['resource_questions'] as List?)?.cast<PcoCalendarResourceQuestion>() ?? [];
  List<PcoCalendarRoomSetup> get includedRoomSetups => (relationships['room_setups'] as List?)?.cast<PcoCalendarRoomSetup>() ?? [];

  // Class Constructors
  PcoCalendarResource.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>>? withIncluded}): super.fromJson(kPcoApplication, kTypeString, data, withIncluded: withIncluded);


  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  /// 
  PcoCalendarResource.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarResource] object. This object cannot be created with the API
  /// 
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: `homeLocation`, `name`, `quantity`
  /// - FIELDS USED WHEN UPDATING: `homeLocation`, `name`, `quantity`
  factory PcoCalendarResource({String? id, DateTime? createdAt, String? kind, String? name, String? serialNumber, DateTime? updatedAt, String? description, DateTime? expiresAt, String? homeLocation, String? image, int? quantity, String? pathName, Map<String, List<PcoResource>>? withRelationships, List<PcoResource>? withIncluded }) {
    var obj = PcoCalendarResource.empty();
    obj._id = id;
    if (createdAt != null) obj._attributes['created_at'] = createdAt.toIso8601String();
    if (kind != null) obj._attributes['kind'] = kind;
    if (name != null) obj._attributes['name'] = name;
    if (serialNumber != null) obj._attributes['serial_number'] = serialNumber;
    if (updatedAt != null) obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (description != null) obj._attributes['description'] = description;
    if (expiresAt != null) obj._attributes['expires_at'] = expiresAt.toIso8601String();
    if (homeLocation != null) obj._attributes['home_location'] = homeLocation;
    if (image != null) obj._attributes['image'] = image;
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (pathName != null) obj._attributes['path_name'] = pathName;

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



  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> get( {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromConflict(String conflictId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/conflicts/$conflictId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromEventResourceRequest(String eventResourceRequestId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/required_approvals/$requiredApprovalId/resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceApprovalGroupAndRequiredApproval(String resourceApprovalGroupId,String requiredApprovalId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/required_approvals/$requiredApprovalId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceApprovalGroup(String resourceApprovalGroupId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_bookings/$resourceBookingId/resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceBooking(String resourceBookingId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders/$resourceFolderId/resources`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceFolder(String resourceFolderId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getFromRoomSetupAndResourceSuggestion(String roomSetupId,String resourceSuggestionId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/containing_resource`
  /// 
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCalendarResource>> getContainingResourceFromRoomSetup(String roomSetupId, {String? id, PcoCalendarResourceQuery? query, bool includeAll = false, bool includeResourceApprovalGroups = false, bool includeResourceFolder = false, bool includeResourceQuestions = false, bool includeRoomSetups = false,}) async {
    query ??= PcoCalendarResourceQuery();
    if (includeAll) query.include.addAll(PcoCalendarResource.canInclude);
    if (includeResourceApprovalGroups) query.include.add('resource_approval_groups');
    if (includeResourceFolder) query.include.add('resource_folder');
    if (includeResourceQuestions) query.include.add('resource_questions');
    if (includeRoomSetups) query.include.add('room_setups');
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts`
  Future<PcoCollection<PcoCalendarConflict>> getConflicts({PcoCalendarConflictQuery? query}) async {
    query ??= PcoCalendarConflictQuery();
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PcoCalendarEventResourceRequestQuery? query}) async {
    query ??= PcoCalendarEventResourceRequestQuery();
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRequiredApproval] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/required_approvals`
  Future<PcoCollection<PcoCalendarRequiredApproval>> getRequiredApprovals({PcoCalendarRequiredApprovalQuery? query}) async {
    query ??= PcoCalendarRequiredApprovalQuery();
    var url = '$apiEndpoint/required_approvals';
    return PcoCollection.fromApiCall<PcoCalendarRequiredApproval>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups`
  Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PcoCalendarResourceApprovalGroupQuery? query}) async {
    query ??= PcoCalendarResourceApprovalGroupQuery();
    var url = '$apiEndpoint/resource_approval_groups';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceBooking] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings`
  /// 
  /// Available Query Filters:
  /// - `approved`
  /// - `approved_pending`
  /// - `approved_pending_rejected`
  /// - `approved_rejected`
  /// - `future`
  /// - `pending`
  /// - `pending_rejected`
  /// - `rejected`
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({PcoCalendarResourceBookingQuery? query}) async {
    query ??= PcoCalendarResourceBookingQuery();
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder`
  Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolder({PcoCalendarResourceFolderQuery? query}) async {
    query ??= PcoCalendarResourceFolderQuery();
    var url = '$apiEndpoint/resource_folder';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions`
  Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions({PcoCalendarResourceQuestionQuery? query}) async {
    query ??= PcoCalendarResourceQuestionQuery();
    var url = '$apiEndpoint/resource_questions';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups({PcoCalendarRoomSetupQuery? query}) async {
    query ??= PcoCalendarRoomSetupQuery();
    var url = '$apiEndpoint/room_setups';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion: apiVersion);
  }




  // little helper function
  T? _firstOrNull<T>(List? l) => l == null ? null : l.isEmpty ? null : l.cast<T>().first;
}
