/// This file was generated on 2021-11-22T16:37:09.177987


import '../../pco.dart';

/// This class represents a PCO People ServiceTime Object
/// 
/// Application: people
/// Id:          service_time
/// Type:        ServiceTime
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A ServiceTime Resource
/// 
/// Example:
/// 
/// {"type":"ServiceTime","id":"1","attributes":{"start_time":1,"day":"value","description":"string"},"relationships":{"organization":{"data":{"type":"Organization","id":"1"}},"campus":{"data":{"type":"Campus","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/campuses/1/service_times
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @time (URLParameter), prefix with a hyphen (-time) to reverse the order
///
class PcoPeopleServiceTime extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'ServiceTime';
  static const String kTypeId = 'service_time';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'servicetime-campus-service_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/campuses/1/service_times';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @time (URLParameter), prefix with a hyphen (-time) to reverse the order
  static List<String> get canOrderBy => ['time'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kStartTime = 'start_time';
  static const kDay = 'day';
  static const kDescription = 'description';


  // getters and setters
  @override
  List<String> get createAllowed => ['start_time','day','description'];
  @override
  List<String> get updateAllowed => ['start_time','day','description'];

  int get startTime => attributes[kStartTime] ?? 0;

  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  String get day => attributes[kDay] ?? '';
  String get description => attributes[kDescription] ?? '';


  set startTime(int n) => attributes[kStartTime] = n;

  /// Possible values: `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, or `saturday`
  set day(String s) => attributes[kDay] = s;
  set description(String s) => attributes[kDescription] = s;


  PcoPeopleServiceTime() : super(kPcoApplication, kTypeString);
  PcoPeopleServiceTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeopleServiceTime Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/service_times;
  static Future<List<PcoPeopleServiceTime>> getManyFromCampusAndServiceTimeIds(String campusId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeopleServiceTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    var url = '/people/v2/campuses/$campusId/service_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeopleServiceTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeopleServiceTime Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/campuses/1/service_times;
  static Future<PcoPeopleServiceTime?> getSingleFromCampusAndServiceTimeIds(String campusId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeopleServiceTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeopleServiceTime.canInclude;
    var url = '/people/v2/campuses/$campusId/service_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeopleServiceTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
