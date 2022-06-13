/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.808538
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO Calendar Resource Object
/// 
/// - Application:        calendar
/// - Id:                 resource
/// - Type:               Resource
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resources
/// - Create Endpoint:    NONE
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
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `resource_approval_groups`: include associated resource_approval_groups 
/// - `resource_folder`: include associated resource_folder 
/// - `resource_questions`: include associated resource_questions 
/// - `room_setups`: include associated room_setups 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `kind`: (URLParameter), query on a specific kind, example: ?where[kind]=string
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `path_name`: (URLParameter), query on a specific path_name, example: ?where[path_name]=string
/// - `serial_number`: (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `expires_at`: (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
/// - `eventresourcerequest-resource-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
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
  static const String kApiVersion = '2020-04-08';
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
  String get kind => attributes[kKind] ?? '';
  String get name => attributes[kName] ?? '';
  String get serialNumber => attributes[kSerialNumber] ?? '';
  String get description => attributes[kDescription] ?? '';
  DateTime get expiresAt => DateTime.parse(attributes[kExpiresAt] ?? '');
  String get homeLocation => attributes[kHomeLocation] ?? '';
  String get image => attributes[kImage] ?? '';
  int get quantity => attributes[kQuantity] ?? 0;
  String get pathName => attributes[kPathName] ?? '';  
  
  // setters for object attributes
  
  /// The name of the room or resource
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;
  
  /// Where the resource is normally kept
  
  /// pass `null` to remove key from attributes
  set homeLocation(String? x) => (x == null) ? attributes.remove(kHomeLocation) : attributes[kHomeLocation] = x;
  
  /// The quantity of the resource
  
  /// pass `null` to remove key from attributes
  set quantity(int? x) => (x == null) ? attributes.remove(kQuantity) : attributes[kQuantity] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  List<T> includedResourceApprovalGroups<T extends PcoResource>() => relationships['resource_approval_groups']?.cast<T>() ?? [];
  List<T> includedResourceFolder<T extends PcoResource>() => relationships['resource_folder']?.cast<T>() ?? [];
  List<T> includedResourceQuestions<T extends PcoResource>() => relationships['resource_questions']?.cast<T>() ?? [];
  List<T> includedRoomSetups<T extends PcoResource>() => relationships['room_setups']?.cast<T>() ?? [];




  // Class Constructors
  PcoCalendarResource.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoCalendarResource.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static Future<PcoCollection<PcoCalendarResource>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts/$conflictId/resource`
  static Future<PcoCollection<PcoCalendarResource>> getFromConflict(String conflictId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/resource`
  static Future<PcoCollection<PcoCalendarResource>> getFromEventResourceRequest(String eventResourceRequestId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceApprovalGroup(String resourceApprovalGroupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_bookings/$resourceBookingId/resource`
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceBooking(String resourceBookingId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_folders/$resourceFolderId/resources`
  static Future<PcoCollection<PcoCalendarResource>> getFromResourceFolder(String resourceFolderId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource`
  static Future<PcoCollection<PcoCalendarResource>> getFromRoomSetupAndResourceSuggestion(String roomSetupId,String resourceSuggestionId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/containing_resource`
  static Future<PcoCollection<PcoCalendarResource>> getContainingResourceFromRoomSetup(String roomSetupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts`
  Future<PcoCollection<PcoCalendarConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '$apiEndpoint/conflicts';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups`
  Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
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
  Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
    var url = '$apiEndpoint/resource_bookings';
    return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceFolder] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder`
  Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolder({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
    var url = '$apiEndpoint/resource_folder';
    return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceQuestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions`
  Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
    var url = '$apiEndpoint/resource_questions';
    return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups`
  Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    var url = '$apiEndpoint/room_setups';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
