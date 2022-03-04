/// This file was generated on 2022-03-04T15:29:14.761393


import '../../pco.dart';

/// This class represents a PCO Giving Campus Object
/// 
/// - Application:        giving
/// - Id:                 campus
/// - Type:               Campus
/// - ApiVersion:         2019-10-18
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/giving/v2/campuses
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Campus",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "address": {}
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
/// - `donation-campus-donations`: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
/// 
/// All Inbound Edges:
/// - `campus-donation-campus`: https://api.planningcenteronline.com/giving/v2/donations/1/campus
/// - `campus-organization-campuses`: https://api.planningcenteronline.com/giving/v2/campuses
/// - `campus-person-primary_campus`: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus
/// 
/// All Actions:
/// NONE
///
class PcoGivingCampus extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'campus-organization-campuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/campuses';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/giving/v2/campuses';

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

  // field mapping constants
  static const kId = 'id';
  static const kName = 'name';
  static const kAddress = 'address';


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

  String get name => attributes[kName] ?? '';
  String get address => attributes[kAddress] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoGivingCampus() : super(kPcoApplication, kTypeString);
  PcoGivingCampus.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/campuses`
  static Future<PcoCollection<PcoGivingCampus>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/campuses';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/donations/$donationId/campus`
  static Future<PcoCollection<PcoGivingCampus>> getFromDonation(String donationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/donations/$donationId/campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoGivingCampus] objects (expecting many)
  /// using a path like this: `/giving/v2/people/$peopleId/primary_campus`
  static Future<PcoCollection<PcoGivingCampus>> getPrimaryCampusFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/people/$peopleId/primary_campus';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoGivingDonation] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/giving/v2/campuses/1/donations`
  Future<PcoCollection<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingDonation.canInclude;
    var url = '$apiEndpoint/donations';
    return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
