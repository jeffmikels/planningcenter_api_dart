/// This file was generated on 2021-11-18T13:57:09.741883


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
class PcoServicesPlanPersonTime extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'PlanPersonTime';
  static const String typeId = 'plan_person_time';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'planpersontime-planperson-plan_person_times';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kStatus = 'status';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get status => attributes[kStatus] ?? '';




  PcoServicesPlanPersonTime() : super(pcoApplication, typeString);
  PcoServicesPlanPersonTime.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesPlanPersonTime Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times;
  static Future<List<PcoServicesPlanPersonTime>> getManyFromPeopleAndPlanPeopleAndPlanPersonTimeIds(String peopleId,String planPeopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanPersonTime> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_person_times';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanPersonTime.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanPersonTime Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times;
  static Future<PcoServicesPlanPersonTime?> getSingleFromPeopleAndPlanPeopleAndPlanPersonTimeIds(String peopleId,String planPeopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanPersonTime?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people/$planPeopleId/plan_person_times' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanPersonTime.fromJson(res.data);
    }
    return retval;
  }




}
