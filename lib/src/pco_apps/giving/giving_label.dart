/// This file was generated on 2022-03-04T20:00:53.931840


import '../../pco.dart';

/// This class represents a PCO Giving Label Object
/// 
/// - Application:        giving
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/labels
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "slug": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `label-donation-labels`: https://api.planningcenteronline.com/giving/v2/donations/1/labels
/// - `label-organization-labels`: https://api.planningcenteronline.com/giving/v2/labels
/// 
/// All Actions:
/// NONE
///
class PcoGivingLabel extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'label-organization-labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `slug`: (URLParameter), query on a specific slug, example: ?where[slug]=string
  static List<String> get canQuery => ['slug'];

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
  static const kSlug = 'slug';


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

  String get slug => attributes[kSlug] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingLabel() : super(kPcoApplication, kTypeString);
  PcoGivingLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/labels`
  static Future<PcoCollection<PcoGivingLabel>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingLabel] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/labels`
  static Future<PcoCollection<PcoGivingLabel>> getFromDonation(String donationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/donations/$donationId/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingLabel>(url, query: query, apiVersion:kApiVersion);
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
