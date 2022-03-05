/// This file was generated on 2022-03-04T20:00:53.730705


import '../../pco.dart';

/// This class represents a PCO People OrganizationStatistics Object
/// 
/// - Application:        people
/// - Id:                 organization_statistics
/// - Type:               OrganizationStatistics
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/organization_statistics
/// 
/// Description:
/// Returns statistics for the organization.
/// 
/// Example:
/// ```json
/// {
///   "type": "OrganizationStatistics",
///   "id": "1",
///   "attributes": {},
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
/// - `organizationstatistics-organization-stats`: https://api.planningcenteronline.com/people/v2/stats
/// 
/// All Actions:
/// NONE
///
class PcoPeopleOrganizationStatistic extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'OrganizationStatistics';
  static const String kTypeId = 'organization_statistics';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'organizationstatistics-organization-stats';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/stats';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/organization_statistics';

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

  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeopleOrganizationStatistic() : super(kPcoApplication, kTypeString);
  PcoPeopleOrganizationStatistic.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleOrganizationStatistic] objects (expecting many)
  /// using a path like this: `/people/v2/stats`
  static Future<PcoCollection<PcoPeopleOrganizationStatistic>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleOrganizationStatistic.canInclude;
    var url = '/people/v2/stats';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleOrganizationStatistic>(url, query: query, apiVersion:kApiVersion);
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
