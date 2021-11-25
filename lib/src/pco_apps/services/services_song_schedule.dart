/// This file was generated on 2021-11-25T00:07:20.287680


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @plan_sort_date (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
///
class PcoServicesSongSchedule extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SongSchedule';
  static const String kTypeId = 'song_schedule';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'songschedule-song-song_schedules';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/song_schedules';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @plan_sort_date (URLParameter), prefix with a hyphen (-plan_sort_date) to reverse the order
  static List<String> get canOrderBy => ['plan_sort_date'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoServicesSongSchedule() : super(kPcoApplication, kTypeString);
  PcoServicesSongSchedule.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesSongSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules;
  static Future<PcoCollection<PcoServicesSongSchedule>> getManyFromSongAndSongSchedule(String songId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    var url = '/services/v2/songs/$songId/song_schedules';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesSongSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/songs/1/song_schedules;
  static Future<PcoCollection<PcoServicesSongSchedule>> getSingleFromSongAndSongSchedule(String songId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSongSchedule.canInclude;
    var url = '/services/v2/songs/$songId/song_schedules' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesSongSchedule>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesSongSchedule.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
