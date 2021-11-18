/// This file was generated on 2021-11-18T13:57:10.194163


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
class PcoGivingCampu extends PcoResource {
  static const String pcoApplication = 'giving';
  static const String typeString = 'Campus';
  static const String typeId = 'campus';
  static const String apiVersion = '2019-10-18';
  static const String shortestEdgeId = 'campus-organization-campuses';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/campuses';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoGivingCampu() : super(pcoApplication, typeString);
  PcoGivingCampu.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGivingCampu Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus;
  static Future<List<PcoGivingCampu>> getManyFromDonationAndCampuIds(String donationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingCampu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampu.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingCampu Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<List<PcoGivingCampu>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingCampu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/campuses';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampu.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingCampu Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<List<PcoGivingCampu>> getManyFromPeopleAndPrimaryCampuIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingCampu> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/primary_campus';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingCampu.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingCampu Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/campus;
  static Future<PcoGivingCampu?> getSingleFromDonationAndCampuIds(String donationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingCampu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampu.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingCampu Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses;
  static Future<PcoGivingCampu?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingCampu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/campuses' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampu.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingCampu Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/people/1/primary_campus;
  static Future<PcoGivingCampu?> getSingleFromPeopleAndPrimaryCampuIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingCampu?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/people/$peopleId/primary_campus' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingCampu.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGivingDonation objects
/// using a path like this: https://api.planningcenteronline.com/giving/v2/campuses/1/donations
Future<List<PcoGivingDonation>> getDonations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGivingDonation> retval = [];
  var url = '$apiEndpoint/donations';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGivingDonation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
