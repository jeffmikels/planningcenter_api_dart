/// This file was generated on 2021-11-19T12:10:42.123869


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @title (URLParameter), query on a specific title, example: ?where[title]=string
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
class PcoServicesSeries extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Series';
  static const String kTypeId = 'series';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'series-organization-series';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/series';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @title (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['title'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoServicesSeries() : super(kPcoApplication, kTypeString);
  PcoServicesSeries.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSeries Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series;
  static Future<List<PcoServicesSeries>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSeries> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/series';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSeries.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesSeries Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series;
  static Future<List<PcoServicesSeries>> getManyFromServiceTypeAndPlanAndSeriesIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesSeries> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSeries.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSeries Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/series;
  static Future<PcoServicesSeries?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSeries?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/series' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSeries.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesSeries Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series;
  static Future<PcoServicesSeries?> getSingleFromServiceTypeAndPlanAndSeriesIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesSeries?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSeries.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/series/1/plans
Future<List<PcoServicesPlan>> getPlans({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlan.canInclude;
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/plans';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    

}
