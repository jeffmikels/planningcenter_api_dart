/// This file was generated on 2022-03-04T15:29:14.683631


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceSuggestion Object
/// 
/// - Application:        calendar
/// - Id:                 resource_suggestion
/// - Type:               ResourceSuggestion
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// Description:
/// A resource and quantity suggested by a room setup.
/// 
/// Example:
/// ```json
/// {
///   "type": "ResourceSuggestion",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "quantity": 1,
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "room_setup": {
///       "data": {
///         "type": "RoomSetup",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - resource: include associated resource 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `resource-resourcesuggestion-resource`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
/// 
/// All Inbound Edges:
/// - `resourcesuggestion-roomsetup-resource_suggestions`: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// All Actions:
/// NONE
///
class PcoCalendarResourceSuggestion extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceSuggestion';
  static const String kTypeId = 'resource_suggestion';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcesuggestion-roomsetup-resource_suggestions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';

  /// possible includes with parameter ?include=a,b
  /// - `resource`: include associated resource 
  static List<String> get canInclude => ['resource'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

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
  static const kQuantity = 'quantity';
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

  int get quantity => attributes[kQuantity] ?? 0;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoCalendarResourceSuggestion() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceSuggestion.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCalendarResourceSuggestion] objects (expecting many)
  /// using a path like this: `/calendar/v2/room_setups/$roomSetupId/resource_suggestions`
  static Future<PcoCollection<PcoCalendarResourceSuggestion>> getFromRoomSetup(String roomSetupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResourceSuggestion>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
