/// This file was generated on 2021-11-18T13:57:09.710495


import '../../pco.dart';

/// This class represents a PCO Services CcliReporting Object
/// 
/// Application: services
/// Id:          ccli_reporting
/// Type:        CcliReporting
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"CcliReporting","id":"1","attributes":{"digital":1,"print":1,"recording":1,"translation":1},"relationships":{"item":{"data":{"type":"Item","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting
/// 
class PcoServicesCcliReporting extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'CcliReporting';
  static const String typeId = 'ccli_reporting';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/ccli_reporting';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kDigital = 'digital';
  static const kPrint = 'print';
  static const kRecording = 'recording';
  static const kTranslation = 'translation';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  int get digital => attributes[kDigital] ?? 0;
  int get print => attributes[kPrint] ?? 0;
  int get recording => attributes[kRecording] ?? 0;
  int get translation => attributes[kTranslation] ?? 0;




  PcoServicesCcliReporting() : super(pcoApplication, typeString);
  PcoServicesCcliReporting.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesCcliReporting Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting;
  static Future<List<PcoServicesCcliReporting>> getManyFromServiceTypeAndPlanAndItemAndCcliReportingIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesCcliReporting> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesCcliReporting.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesCcliReporting Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/ccli_reporting;
  static Future<PcoServicesCcliReporting?> getSingleFromServiceTypeAndPlanAndItemAndCcliReportingIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesCcliReporting?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/ccli_reporting' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesCcliReporting.fromJson(res.data);
    }
    return retval;
  }




}
