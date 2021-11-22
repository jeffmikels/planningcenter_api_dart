/// This file was generated on 2021-11-22T16:37:09.355081


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
/// possible orderings with parameter ?order=

///
class PcoGivingLabel extends PcoResource {
  static const String kPcoApplication = 'giving';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-10-18';
  static const String kShortestEdgeId = 'label-organization-labels';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/giving/v2/labels';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @slug (URLParameter), query on a specific slug, example: ?where[slug]=string
  static List<String> get canQuery => ['slug'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

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
  PcoGivingLabel.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGivingLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/labels;
  static Future<List<PcoGivingLabel>> getManyFromDonationAndLabelIds(String donationId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/donations/$donationId/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoGivingLabel Objects
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/labels;
  static Future<List<PcoGivingLabel>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoGivingLabel> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/labels';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGivingLabel.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoGivingLabel Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/donations/1/labels;
  static Future<PcoGivingLabel?> getSingleFromDonationAndLabelIds(String donationId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/donations/$donationId/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoGivingLabel Object
  /// using a path like this: https://api.planningcenteronline.com/giving/v2/labels;
  static Future<PcoGivingLabel?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoGivingLabel?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGivingLabel.canInclude;
    var url = '/giving/v2/labels' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGivingLabel.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
