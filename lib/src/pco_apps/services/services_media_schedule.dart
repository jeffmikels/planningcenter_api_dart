/// This file was generated on 2021-11-22T16:37:08.803397


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesMediaSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'MediaSchedule';
  static const String kTypeId = 'media_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'mediaschedule-media-media_schedules';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/media/1/media_schedules';

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




  PcoServicesMediaSchedule() : super(kPcoApplication, kTypeString);
  PcoServicesMediaSchedule.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesMediaSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/media_schedules;
  static Future<List<PcoServicesMediaSchedule>> getManyFromMediaAndMediaScheduleIds(String mediaId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesMediaSchedule> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    var url = '/services/v2/media/$mediaId/media_schedules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesMediaSchedule.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesMediaSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/media/1/media_schedules;
  static Future<PcoServicesMediaSchedule?> getSingleFromMediaAndMediaScheduleIds(String mediaId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesMediaSchedule?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesMediaSchedule.canInclude;
    var url = '/services/v2/media/$mediaId/media_schedules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesMediaSchedule.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
