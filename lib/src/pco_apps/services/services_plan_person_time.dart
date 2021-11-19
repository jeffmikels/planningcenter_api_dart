/// This file was generated on 2021-11-19T12:10:42.106328


import '../../pco.dart';

/// This class represents a PCO Services PlanPersonTime Object
/// 
/// Application: services
/// Id:          plan_person_time
/// Type:        PlanPersonTime
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"PlanPersonTime","id":"1","attributes":{"status":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z"},"relationships":{"plan_time":{"data":{"type":"PlanTime","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"plan_person":{"data":{"type":"PlanPerson","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesPlanPersonTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanPersonTime';
  static const String kTypeId = 'plan_person_time';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'planpersontime-planperson-plan_person_times';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times';

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
  static const kStatus = 'status';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get status => attributes[kStatus] ?? '';




  PcoServicesPlanPersonTime() : super(kPcoApplication, kTypeString);
  PcoServicesPlanPersonTime.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPlanPersonTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times;
  static Future<List<PcoServicesPlanPersonTime>> getManyFromPeopleAndPlanPeopleAndPlanPersonTimeIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPlanPersonTime> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPersonTime.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_person_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanPersonTime.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanPersonTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times;
  static Future<PcoServicesPlanPersonTime?> getSingleFromPeopleAndPlanPeopleAndPlanPersonTimeIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPlanPersonTime?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanPersonTime.canInclude;
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_person_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanPersonTime.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
