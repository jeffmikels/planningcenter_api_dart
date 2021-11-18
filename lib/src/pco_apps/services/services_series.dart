/// This file was generated on 2021-11-17T23:59:27.135756


import '../../pco.dart';

/// This class represents a PCO Services Series Object
/// 
/// Application: services
/// Id:          series
/// Type:        Series
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A Series can be specified for each plan to tie plans with similar messages together, even across Service Types.\n\n*Note*: A series is not created until artwork is added from the plan.  You can use `series_title` included in `Plan` attributes to get titles for series without artwork.\n
/// 
/// Example:
/// 
/// {"type":"Series","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","artwork_file_name":"string","artwork_content_type":"string","artwork_file_size":1,"title":"string","artwork_for_dashboard":"string","artwork_for_mobile":"string","artwork_for_plan":"string","artwork_original":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/series
/// 
class PcoServicesSeries extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Series';
  static const String typeId = 'series';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'series-organization-series';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/series';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kArtworkFileName = 'artwork_file_name';
  static const kArtworkContentType = 'artwork_content_type';
  static const kArtworkFileSize = 'artwork_file_size';
  static const kTitle = 'title';
  static const kArtworkForDashboard = 'artwork_for_dashboard';
  static const kArtworkForMobile = 'artwork_for_mobile';
  static const kArtworkForPlan = 'artwork_for_plan';
  static const kArtworkOriginal = 'artwork_original';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get artworkFileName => attributes[kArtworkFileName] ?? '';
  String get artworkContentType => attributes[kArtworkContentType] ?? '';
  int get artworkFileSize => attributes[kArtworkFileSize] ?? 0;
  String get title => attributes[kTitle] ?? '';
  String get artworkForDashboard => attributes[kArtworkForDashboard] ?? '';
  String get artworkForMobile => attributes[kArtworkForMobile] ?? '';
  String get artworkForPlan => attributes[kArtworkForPlan] ?? '';
  String get artworkOriginal => attributes[kArtworkOriginal] ?? '';




  PcoServicesSeries() : super(pcoApplication, typeString);
  PcoServicesSeries.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSeries Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series;
  static Future<List<PcoServicesSeries>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSeries> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/series';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSeries.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesSeries Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series;
  static Future<List<PcoServicesSeries>> getManyFromServiceTypeAndPlanAndSeriesIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSeries> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSeries.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSeries Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series;
  static Future<PcoServicesSeries?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSeries?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/series' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSeries.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesSeries Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series;
  static Future<PcoServicesSeries?> getSingleFromServiceTypeAndPlanAndSeriesIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSeries?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSeries.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/series/1/plans
Future<List<PcoServicesPlan>> getPlans({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/plans';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData));
    }
  }
  return retval;
}
    

}
