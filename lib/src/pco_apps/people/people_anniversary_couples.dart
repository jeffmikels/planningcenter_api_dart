/// This file was generated on 2022-03-04T20:00:53.690938


import '../../pco.dart';

/// This class represents a PCO People AnniversaryCouples Object
/// 
/// - Application:        people
/// - Id:                 anniversary_couples
/// - Type:               AnniversaryCouples
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
/// Description:
/// Returns upcoming anniversary couples for the organization.
/// 
/// Example:
/// ```json
/// {
///   "type": "AnniversaryCouples",
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
/// - `anniversarycouples-organization-anniversary_couples`: https://api.planningcenteronline.com/people/v2/anniversary_couples
/// 
/// All Actions:
/// NONE
///
class PcoPeopleAnniversaryCouple extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'AnniversaryCouples';
  static const String kTypeId = 'anniversary_couples';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'anniversarycouples-organization-anniversary_couples';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/anniversary_couples';

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
  PcoPeopleAnniversaryCouple() : super(kPcoApplication, kTypeString);
  PcoPeopleAnniversaryCouple.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeopleAnniversaryCouple] objects (expecting many)
  /// using a path like this: `/people/v2/anniversary_couples`
  static Future<PcoCollection<PcoPeopleAnniversaryCouple>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleAnniversaryCouple.canInclude;
    var url = '/people/v2/anniversary_couples';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeopleAnniversaryCouple>(url, query: query, apiVersion:kApiVersion);
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
