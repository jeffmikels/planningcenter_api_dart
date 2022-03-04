/// This file was generated on 2022-03-04T15:29:14.687390


import '../../pco.dart';

/// This class represents a PCO Calendar RoomSetup Object
/// 
/// - Application:        calendar
/// - Id:                 room_setup
/// - Type:               RoomSetup
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups
/// 
/// Description:
/// A diagram and list of suggested resources useful for predefined room setups.
/// 
/// Example:
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
/// 
/// Possible includes with parameter ?include=a,b
/// - containing_resource: include associated containing_resource 
/// - resource_suggestions: include associated resource_suggestions 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `updated_at`: (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `name`: (URLParameter), prefix with a hyphen (-name) to reverse the order
/// - `updated_at`: (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
/// All Outbound Edges:
/// - `resource-roomsetup-containing_resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// All Inbound Edges:
/// - `roomsetup-eventresourcerequest-room_setup`: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup
/// - `roomsetup-organization-room_setups`: https://api.planningcenteronline.com/calendar/v2/room_setups
/// - `roomsetup-resource-room_setups`: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
/// 
/// All Actions:
/// NONE
///
class PcoCalendarRoomSetup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'RoomSetup';
  static const String kTypeId = 'room_setup';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'roomsetup-organization-room_setups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';

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
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

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

  String get name => attributes[kName] ?? '';
  String get description => attributes[kDescription] ?? '';
  String get diagram => attributes[kDiagram] ?? '';
  String get diagramUrl => attributes[kDiagramUrl] ?? '';
  String get diagramThumbnailUrl => attributes[kDiagramThumbnailUrl] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarRoomSetup() : super(kPcoApplication, kTypeString);
  PcoCalendarRoomSetup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups`
  /// 
  /// Available Query Filters:
  /// - `shared_room_setups`
  static Future<PcoCollection<PcoCalendarRoomSetup>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    var url = '/calendar/v2/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting one)
  /// using a path like this: `/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup`
  static Future<PcoCollection<PcoCalendarRoomSetup>> getFromEventResourceRequest(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup';
    
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarRoomSetup] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/room_setups`
  static Future<PcoCollection<PcoCalendarRoomSetup>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
    var url = '/calendar/v2/resources/$resourceId/room_setups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource`
  Future<PcoCollection<PcoCalendarResource>> getContainingResource({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/containing_resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions`
  Future<PcoCollection<PcoCalendarResourceSuggestion>> getResourceSuggestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    var url = '$apiEndpoint/resource_suggestions';
    return PcoCollection.fromApiCall<PcoCalendarResourceSuggestion>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
