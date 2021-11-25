/// This file was generated on 2021-11-25T00:07:20.785078


import '../../pco.dart';

/// This class represents a PCO Giving Campus Object
/// 
/// Application: giving
/// Id:          campus
/// Type:        Campus
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Campus","id":"1","attributes":{"name":"string","address":{}},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/campuses
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoGivingCampus extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Campus';
  static const String kTypeId = 'campus';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'campus-organization-campuses';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/campuses';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kAddress = 'address';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';
  String get address => attributes[kAddress] ?? '';




  PcoGivingCampus() : super(kPcoApplication, kTypeString);
  PcoGivingCampus.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus;
  static Future<PcoCollection<PcoGivingCampus>> getManyFromDonation(String donationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/donations/$donationId/campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<PcoCollection<PcoGivingCampus>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/campuses';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGivingCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<PcoCollection<PcoGivingCampus>> getManyFromPeopleAndPrimaryCampus(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/people/$peopleId/primary_campus';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus;
  static Future<PcoCollection<PcoGivingCampus>> getSingleFromDonation(String donationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/donations/$donationId/campus' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<PcoCollection<PcoGivingCampus>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/campuses' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<PcoCollection<PcoGivingCampus>> getSingleFromPeopleAndPrimaryCampus(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/people/$peopleId/primary_campus' + '/$id';
    return PcoCollection.fromApiCall<PcoGivingCampus>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
Future<PcoCollection<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  var url = '$apiEndpoint/donations';
  return PcoCollection.fromApiCall<PcoGivingDonation>(url, query: query, apiVersion:apiVersion);
}
    


}
