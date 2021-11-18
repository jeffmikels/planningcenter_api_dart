/// This file was generated on 2021-11-17T23:59:27.142328


import '../../pco.dart';

/// This class represents a PCO Services SongSchedule Object
/// 
/// Application: services
/// Id:          song_schedule
/// Type:        SongSchedule
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A upcoming schedule for a song
/// 
/// Example:
/// 
/// {"type":"SongSchedule","id":"1","attributes":{"arrangement_name":"string","key_name":"string","plan_dates":"string","service_type_name":"string","plan_sort_date":"string"},"relationships":{"arrangement":{"data":{"type":"Arrangement","id":"1"}},"key":{"data":{"type":"Key","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}},"item":{"data":{"type":"Item","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules
/// 
class PcoServicesSongSchedule extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'SongSchedule';
  static const String typeId = 'song_schedule';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'songschedule-song-song_schedules';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kArrangementName = 'arrangement_name';
  static const kKeyName = 'key_name';
  static const kPlanDates = 'plan_dates';
  static const kServiceTypeName = 'service_type_name';
  static const kPlanSortDate = 'plan_sort_date';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get arrangementName => attributes[kArrangementName] ?? '';
  String get keyName => attributes[kKeyName] ?? '';
  String get planDates => attributes[kPlanDates] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  String get planSortDate => attributes[kPlanSortDate] ?? '';




  PcoServicesSongSchedule() : super(pcoApplication, typeString);
  PcoServicesSongSchedule.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSongSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules;
  static Future<List<PcoServicesSongSchedule>> getManyFromSongAndSongScheduleIds(String songId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSongSchedule> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/song_schedules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSongSchedule.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSongSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules;
  static Future<PcoServicesSongSchedule?> getSingleFromSongAndSongScheduleIds(String songId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSongSchedule?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/songs/$songId/song_schedules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSongSchedule.fromJson(res.data);
    }
    return retval;
  }




}
