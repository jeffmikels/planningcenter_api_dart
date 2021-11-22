/// This file was generated on 2021-11-22T16:37:08.794637


import '../../pco.dart';

/// This class represents a PCO Services Layout Object
/// 
/// Application: services
/// Id:          layout
/// Type:        Layout
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Layout is used for formatting text for each item in Projector.
/// 
/// Example:
/// 
/// {"type":"Layout","id":"1","attributes":{},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/layouts
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesLayout extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Layout';
  static const String kTypeId = 'layout';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'layout-servicetype-layouts';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/layouts';

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


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoServicesLayout() : super(kPcoApplication, kTypeString);
  PcoServicesLayout.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesLayout Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/layouts;
  static Future<List<PcoServicesLayout>> getManyFromServiceTypeAndLayoutIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesLayout> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLayout.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/layouts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLayout.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLayout Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/layouts;
  static Future<PcoServicesLayout?> getSingleFromServiceTypeAndLayoutIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesLayout?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLayout.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/layouts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLayout.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
