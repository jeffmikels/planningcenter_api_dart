/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T16:19:10.312634
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Groups Location Object
/// 
/// - Application:        groups
/// - Id:                 location
/// - Type:               Location
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/location
/// 
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `displayPreference` (ro) -> PCO: `display_preference`
/// - `fullFormattedAddress` (ro) -> PCO: `full_formatted_address`
/// - `latitude` (ro) -> PCO: `latitude`
/// - `longitude` (ro) -> PCO: `longitude`
/// - `name` (ro) -> PCO: `name`
/// - `radius` (ro) -> PCO: `radius`
/// - `strategy` (ro) -> PCO: `strategy`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `location-event-location`: https://api.planningcenteronline.com/groups/v2/events/1/location
/// - `location-group-location`: https://api.planningcenteronline.com/groups/v2/groups/1/location
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Location",
///   "id": "1",
///   "attributes": {
///     "display_preference": "value",
///     "full_formatted_address": "string",
///     "latitude": 1.42,
///     "longitude": 1.42,
///     "name": "string",
///     "radius": "string",
///     "strategy": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoGroupsLocation extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Location';
  static const String kTypeId = 'location';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'location-group-location';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/groups/1/location';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/location';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

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

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kDisplayPreference = 'display_preference';
  static const kFullFormattedAddress = 'full_formatted_address';
  static const kLatitude = 'latitude';
  static const kLongitude = 'longitude';
  static const kName = 'name';
  static const kRadius = 'radius';
  static const kStrategy = 'strategy';


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

  String get displayPreference => attributes[kDisplayPreference] ?? '';
  String get fullFormattedAddress => attributes[kFullFormattedAddress] ?? '';
  double get latitude => attributes[kLatitude] ?? 0;
  double get longitude => attributes[kLongitude] ?? 0;
  String get name => attributes[kName] ?? '';
  String get radius => attributes[kRadius] ?? '';
  String get strategy => attributes[kStrategy] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGroupsLocation._() : super(kPcoApplication, kTypeString);
  PcoGroupsLocation.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/location`
  static Future<PcoCollection<PcoGroupsLocation>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/events/$eventId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGroupsLocation] objects (expecting many)
  /// using a path like this: `/groups/v2/groups/$groupId/location`
  static Future<PcoCollection<PcoGroupsLocation>> getFromGroup(String groupId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsLocation.canInclude;
    var url = '/groups/v2/groups/$groupId/location';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
