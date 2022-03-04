/// This file was generated on 2022-03-04T15:29:14.445596


import '../../pco.dart';

/// This class represents a PCO People ListShare Object
/// 
/// - Application:        people
/// - Id:                 list_share
/// - Type:               ListShare
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/shares
/// 
/// Description:
/// A list share indicates who has access to edit a list.
/// 
/// Example:
/// ```json
/// {
///   "type": "ListShare",
///   "id": "1",
///   "attributes": {
///     "permission": "value",
///     "group": "value",
///     "created_at": "2000-01-01T12:00:00Z",
///     "name": "string"
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - person: include associated person 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `group`: (URLParameter), query on a specific group, example: ?where[group]=value
/// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
/// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// - `group`: (URLParameter), prefix with a hyphen (-group) to reverse the order
///
/// All Outbound Edges:
/// - `person-listshare-person`: https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person
/// 
/// All Inbound Edges:
/// - `listshare-list-shares`: https://api.planningcenteronline.com/people/v2/lists/1/shares
/// 
/// All Actions:
/// NONE
///
class PcoPeopleListShare extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListShare';
  static const String kTypeId = 'list_share';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'listshare-list-shares';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/shares';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person 
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `group`: (URLParameter), query on a specific group, example: ?where[group]=value
  /// - `name`: (URLParameter), query on a specific name, example: ?where[name]=string
  /// - `permission`: (URLParameter), query on a specific permission, example: ?where[permission]=value
  static List<String> get canQuery => ['created_at','group','name','permission'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// - `group`: (URLParameter), prefix with a hyphen (-group) to reverse the order
  static List<String> get canOrderBy => ['created_at','group'];

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
  static const kPermission = 'permission';
  static const kGroup = 'group';
  static const kCreatedAt = 'created_at';
  static const kName = 'name';


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

  String get permission => attributes[kPermission] ?? '';
  String get group => attributes[kGroup] ?? '';
  String get name => attributes[kName] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleListShare() : super(kPcoApplication, kTypeString);
  PcoPeopleListShare.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleListShare] objects (expecting one)
  /// using a path like this: `/people/v2/lists/$listId/shares`
  static Future<PcoCollection<PcoPeopleListShare>> getSharesFromList(String listId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListShare.canInclude;
    var url = '/people/v2/lists/$listId/shares';
    
    return PcoCollection.fromApiCall<PcoPeopleListShare>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoPeoplePerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/people/v2/lists/1/shares/1/person`
  Future<PcoCollection<PcoPeoplePerson>> getPerson({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePerson.canInclude;
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoPeoplePerson>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
