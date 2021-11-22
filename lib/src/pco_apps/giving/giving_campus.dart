/// This file was generated on 2021-11-22T16:57:41.818718


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
  static Future<List<PcoGivingCampus>> getManyFromDonationAndCampusIds(String donationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/donations/$donationId/campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<List<PcoGivingCampus>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/campuses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingCampus Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<List<PcoGivingCampus>> getManyFromPeopleAndPrimaryCampusIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingCampus> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/people/$peopleId/primary_campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampus.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus;
  static Future<PcoGivingCampus?> getSingleFromDonationAndCampusIds(String donationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/donations/$donationId/campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<PcoGivingCampus?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/campuses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingCampus Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<PcoGivingCampus?> getSingleFromPeopleAndPrimaryCampusIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingCampus?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingCampus.canInclude;
    var url = '/giving/v2/people/$peopleId/primary_campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampus.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGivingDonation.canInclude;
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
