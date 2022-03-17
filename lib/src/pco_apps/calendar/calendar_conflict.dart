/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:22.209910
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Calendar Conflict Object
/// 
/// - Application:        calendar
/// - Id:                 conflict
/// - Type:               Conflict
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/conflicts
/// 
/// Description:
/// A conflict between two events caused by overlapping event resource
/// requests.
/// 
/// If the conflict has been resolved, `resolved_at` will be present.
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `note` (ro) -> PCO: `note`
/// - `resolvedAt` (ro) -> PCO: `resolved_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// 
/// Example:
/// ```json
/// {
///   "type": "Conflict",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "note": "string",
///     "resolved_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "resolved_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "winner": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resolved_by: include associated resolved_by 
/// - resource: include associated resource 
/// - winner: include associated winner 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// - `resolved_at`: (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
///
/// All Outbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `resource-conflict-resource`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
/// 
/// All Inbound Edges:
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `conflict-organization-conflicts`: https://api.planningcenteronline.com/calendar/v2/conflicts
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
/// 
/// All Actions:
/// NONE
///
class PcoCalendarConflict extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Conflict';
  static const String kTypeId = 'conflict';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'conflict-organization-conflicts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/conflicts';

  /// possible includes with parameter ?include=a,b
  /// - `resolved_by`: include associated resolved_by 
  /// - `resource`: include associated resource 
  /// - `winner`: include associated winner 
  static List<String> get canInclude => ['resolved_by','resource','winner'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `resolved_at`: (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
  static List<String> get canOrderBy => ['resolved_at'];

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
  static const kCreatedAt = 'created_at';
  static const kNote = 'note';
  static const kResolvedAt = 'resolved_at';
  static const kUpdatedAt = 'updated_at';


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

  String get note => attributes[kNote] ?? '';
  DateTime get resolvedAt => DateTime.parse(attributes[kResolvedAt] ?? '');
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarConflict._() : super(kPcoApplication, kTypeString);
  PcoCalendarConflict.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts`
  /// 
  /// Available Query Filters:
  /// - `future`
  /// - `resolved`
  /// - `unresolved`
  static Future<PcoCollection<PcoCalendarConflict>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/conflicts`
  static Future<PcoCollection<PcoCalendarConflict>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/events/$eventId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/conflicts`
  static Future<PcoCollection<PcoCalendarConflict>> getFromResource(String resourceId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarConflict.canInclude;
    var url = '/calendar/v2/resources/$resourceId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by`
  Future<PcoCollection<PcoCalendarPerson>> getResolvedBy({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarPerson.canInclude;
    var url = '$apiEndpoint/resolved_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner`
  Future<PcoCollection<PcoCalendarEvent>> getWinner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '$apiEndpoint/winner';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
