/// This file was generated on 2021-11-18T13:57:09.726161


import '../../pco.dart';

/// This class represents a PCO Services MediaSchedule Object
/// 
/// Application: services
/// Id:          media_schedule
/// Type:        MediaSchedule
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"MediaSchedule","id":"1","attributes":{"plan_dates":"string","plan_short_dates":"string","service_type_name":"string","plan_sort_date":"2000-01-01T12:00:00Z"},"relationships":{"plan":{"data":{"type":"Plan","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/media/1/media_schedules
/// 
class PcoServicesMediaSchedule extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'MediaSchedule';
  static const String typeId = 'media_schedule';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'mediaschedule-media-media_schedules';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media/1/media_schedules';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kPlanDates = 'plan_dates';
  static const kPlanShortDates = 'plan_short_dates';
  static const kServiceTypeName = 'service_type_name';
  static const kPlanSortDate = 'plan_sort_date';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get planDates => attributes[kPlanDates] ?? '';
  String get planShortDates => attributes[kPlanShortDates] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  DateTime get planSortDate => DateTime.parse(attributes[kPlanSortDate] ?? '');




  PcoServicesMediaSchedule() : super(pcoApplication, typeString);
  PcoServicesMediaSchedule.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesMediaSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/media_schedules;
  static Future<List<PcoServicesMediaSchedule>> getManyFromMediaAndMediaScheduleIds(String mediaId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesMediaSchedule> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/media_schedules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesMediaSchedule.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesMediaSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/media_schedules;
  static Future<PcoServicesMediaSchedule?> getSingleFromMediaAndMediaScheduleIds(String mediaId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesMediaSchedule?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/media/$mediaId/media_schedules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesMediaSchedule.fromJson(res.data);
    }
    return retval;
  }




}
