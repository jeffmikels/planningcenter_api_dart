/// This file was generated on 2022-03-04T20:00:53.745579


import '../../pco.dart';

/// This class represents a PCO People PersonMerger Object
/// 
/// - Application:        people
/// - Id:                 person_merger
/// - Type:               PersonMerger
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/person_mergers
/// 
/// Description:
/// A Person Merger is the history of profiles that were merged into other profiles.
/// 
/// Example:
/// ```json
/// {
///   "type": "PersonMerger",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "person_to_keep_id": "primary_key",
///     "person_to_remove_id": "primary_key"
///   },
///   "relationships": {
///     "person_to_keep": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "person_to_remove": {
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
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
/// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
/// 
/// Possible orderings with parameter ?order=
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `personmerger-organization-person_mergers`: https://api.planningcenteronline.com/people/v2/person_mergers
/// 
/// All Actions:
/// NONE
///
class PcoPeoplePersonMerger extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PersonMerger';
  static const String kTypeId = 'person_merger';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'personmerger-organization-person_mergers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/person_mergers';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `created_at`: (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// - `person_to_keep_id`: (URLParameter), query on a specific person_to_keep_id, example: ?where[person_to_keep_id]=primary_key
  /// - `person_to_remove_id`: (URLParameter), query on a specific person_to_remove_id, example: ?where[person_to_remove_id]=primary_key
  static List<String> get canQuery => ['created_at','person_to_keep_id','person_to_remove_id'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kPersonToKeepId = 'person_to_keep_id';
  static const kPersonToRemoveId = 'person_to_remove_id';


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

  String get personToKeepId => attributes[kPersonToKeepId] ?? '';
  String get personToRemoveId => attributes[kPersonToRemoveId] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeoplePersonMerger() : super(kPcoApplication, kTypeString);
  PcoPeoplePersonMerger.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePersonMerger] objects (expecting many)
  /// using a path like this: `/people/v2/person_mergers`
  static Future<PcoCollection<PcoPeoplePersonMerger>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePersonMerger.canInclude;
    var url = '/people/v2/person_mergers';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePersonMerger>(url, query: query, apiVersion:kApiVersion);
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
