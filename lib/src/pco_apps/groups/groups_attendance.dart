/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.846802
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

/// This class represents a PCO Groups Attendance Object
/// 
/// - Application:        groups
/// - Id:                 attendance
/// - Type:               Attendance
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isAttended` (ro) -> PCO: `attended`
/// - `role` (ro) -> PCO: `role`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// - `person`: include associated person 
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// - `role`: (URLParameter), query on a specific role, example: ?where[role]=value
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
/// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
/// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// - `person-attendance-person`: https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person
/// 
/// Inbound Edges:
/// - `attendance-event-attendances`: https://api.planningcenteronline.com/groups/v2/events/1/attendances
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Attendance",
///   "id": "1",
///   "attributes": {
///     "attended": true,
///     "role": "value"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "event": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoGroupsAttendance extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Attendance';
  static const String kTypeId = 'attendance';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/groups/v2/events/1/attendances';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `role`: (URLParameter), query on a specific role, example: ?where[role]=value
  static List<String> get canQuery => ['role'];

  /// possible orderings with parameter ?order=
  /// - `first_name`: (URLParameter), prefix with a hyphen (-first_name) to reverse the order
  /// - `last_name`: (URLParameter), prefix with a hyphen (-last_name) to reverse the order
  /// - `role`: (URLParameter), prefix with a hyphen (-role) to reverse the order
  static List<String> get canOrderBy => ['first_name','last_name','role'];

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
  static const kAttended = 'attended';
  static const kRole = 'role';


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
  bool get isAttended => attributes[kAttended] == true;
  String get role => attributes[kRole] ?? '';    


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  List<T> includedPerson<T extends PcoResource>() => relationships['person']?.cast<T>() ?? [];




  // Class Constructors
  PcoGroupsAttendance.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoGroupsAttendance.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGroupsAttendance] objects (expecting many)
  /// using a path like this: `/groups/v2/events/$eventId/attendances`
  /// 
  /// Available Query Filters:
  /// - `attended`
  static Future<PcoCollection<PcoGroupsAttendance>> getFromEvent(String eventId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
    var url = '/groups/v2/events/$eventId/attendances';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGroupsAttendance>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGroupsPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/groups/v2/events/1/attendances/1/person`
  Future<PcoCollection<PcoGroupsPerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsPerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoGroupsPerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
