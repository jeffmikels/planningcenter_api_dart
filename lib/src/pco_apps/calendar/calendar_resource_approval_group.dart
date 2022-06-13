/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.809014
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceApprovalGroup Object
/// 
/// - Application:        calendar
/// - Id:                 resource_approval_group
/// - Type:               ResourceApprovalGroup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// A group of people that can be attached to a room or resource
/// in order to require their approval for booking.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `name` (rw) -> PCO: `name`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `resourceCount` (ro) -> PCO: `resource_count`
/// - `roomCount` (ro) -> PCO: `room_count`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `people`: include associated people 
/// - `resources`: include associated resources 
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
/// - `eventresourcerequest-resourceapprovalgroup-event_resource_requests`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests
/// - `person-resourceapprovalgroup-people`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people
/// - `resource-resourceapprovalgroup-resources`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources
/// 
/// Inbound Edges:
/// - `resourceapprovalgroup-organization-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
/// - `resourceapprovalgroup-resource-resource_approval_groups`: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "ResourceApprovalGroup",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCalendarResourceApprovalGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceApprovalGroup';
  static const String kTypeId = 'resource_approval_group';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resource_approval_groups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `people`: include associated people 
  /// - `resources`: include associated resources 
  static List<String> get canInclude => ['people','resources'];

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
  static const kResourceCount = 'resource_count';
  static const kRoomCount = 'room_count';


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
  String get name => attributes[kName] ?? '';
  int get resourceCount => attributes[kResourceCount] ?? 0;
  int get roomCount => attributes[kRoomCount] ?? 0;  
  
  // setters for object attributes
  
  /// Name of the approval group
  
  /// pass `null` to remove key from attributes
  set name(String? x) => (x == null) ? attributes.remove(kName) : attributes[kName] = x;  


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  List<T> includedPeople<T extends PcoResource>() => relationships['people']?.cast<T>() ?? [];
  List<T> includedResources<T extends PcoResource>() => relationships['resources']?.cast<T>() ?? [];




  // Class Constructors
  PcoCalendarResourceApprovalGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoCalendarResourceApprovalGroup.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resource_approval_groups`
  static Future<PcoCollection<PcoCalendarResourceApprovalGroup>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resource_approval_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarResourceApprovalGroup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/resource_approval_groups`
  static Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
    var url = '/calendar/v2/resources/$resourceId/resource_approval_groups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarEventResourceRequest] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/event_resource_requests`
  Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
    var url = '$apiEndpoint/event_resource_requests';
    return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/people`
  Future<PcoCollection<PcoCalendarPerson>> getPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url = '$apiEndpoint/people';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources`
  /// 
  /// Available Query Filters:
  /// - `resources`
  /// - `rooms`
  Future<PcoCollection<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
