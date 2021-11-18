/// This file was generated on 2021-11-18T15:28:02.202153


import '../../pco.dart';

/// This class represents a PCO Giving Label Object
/// 
/// Application: giving
/// Id:          label
/// Type:        Label
/// ApiVersion:  2019-10-18
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Label","id":"1","attributes":{"slug":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/giving/v2/labels
/// 
class PcoGivingLabel extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'label-organization-labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kSlug = 'slug';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get slug => attributes[kSlug] ?? '';




  PcoGivingLabel() : super(kPcoApplication, kTypeString);
  PcoGivingLabel.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoGivingLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/labels;
  static Future<List<PcoGivingLabel>> getManyFromDonationAndLabelIds(String donationId, {PlanningCenterApiQuery? query}) async {
    List<PcoGivingLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingLabel.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGivingLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/labels;
  static Future<List<PcoGivingLabel>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGivingLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingLabel.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingLabel Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/labels;
  static Future<PcoGivingLabel?> getSingleFromDonationAndLabelIds(String donationId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/donations/$donationId/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingLabel.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGivingLabel Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/labels;
  static Future<PcoGivingLabel?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGivingLabel?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/giving/v2/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingLabel.fromJson(res.data);
    }
    return retval;
  }




}
