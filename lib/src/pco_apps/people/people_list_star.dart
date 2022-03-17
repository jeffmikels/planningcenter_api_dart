/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-17T13:08:22.009690
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO People ListStar Object
/// 
/// - Application:        people
/// - Id:                 list_star
/// - Type:               ListStar
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/lists/1/star
/// 
/// Description:
/// A starred list for a person indicates it is special in some way
/// 
/// Attributes:
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// 
/// Example:
/// ```json
/// {
///   "type": "ListStar",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `liststar-list-star`: https://api.planningcenteronline.com/people/v2/lists/1/star
/// 
/// All Actions:
/// NONE
///
class PcoPeopleListStar extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ListStar';
  static const String kTypeId = 'list_star';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'liststar-list-star';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/lists/1/star';

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
  static const kCreatedAt = 'created_at';


  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleListStar._() : super(kPcoApplication, kTypeString);
  PcoPeopleListStar.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoPeopleListStar] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/people/v2/lists/$listId/star`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoPeopleListStar(String listId) {
    return PcoPeopleListStar._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/people/v2/lists/$listId/star';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleListStar] objects (expecting many)
  /// using a path like this: `/people/v2/lists/$listId/star`
  static Future<PcoCollection<PcoPeopleListStar>> getStarFromList(String listId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleListStar.canInclude;
    var url = '/people/v2/lists/$listId/star';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleListStar>(url, query: query, apiVersion:kApiVersion);
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
