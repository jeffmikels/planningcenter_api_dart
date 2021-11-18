/// This file was generated on 2021-11-18T13:57:09.721942


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
class PcoServicesLayout extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Layout';
  static const String typeId = 'layout';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'layout-servicetype-layouts';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/layouts';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];





  PcoServicesLayout() : super(pcoApplication, typeString);
  PcoServicesLayout.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesLayout Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/layouts;
  static Future<List<PcoServicesLayout>> getManyFromServiceTypeAndLayoutIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesLayout> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/layouts';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLayout.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLayout Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/layouts;
  static Future<PcoServicesLayout?> getSingleFromServiceTypeAndLayoutIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesLayout?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/layouts' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLayout.fromJson(res.data);
    }
    return retval;
  }




}
