/// This file was generated on 2021-11-17T23:59:27.116603


import '../../pco.dart';

/// This class represents a PCO Services NeededPosition Object
/// 
/// Application: services
/// Id:          needed_position
/// Type:        NeededPosition
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// An amount of unfilled positions needed within a team in a plan.
/// 
/// Example:
/// 
/// {"type":"NeededPosition","id":"1","attributes":{"quantity":1,"team_position_name":"string","scheduled_to":"string"},"relationships":{"team":{"data":{"type":"Team","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"time":{"data":{"type":"PlanTime","id":"1"}},"time_preference_option":{"data":{"type":"TimePreferenceOption","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions
/// 
class PcoServicesNeededPosition extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'NeededPosition';
  static const String typeId = 'needed_position';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'neededposition-plan-needed_positions';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kQuantity = 'quantity';
  static const kTeamPositionName = 'team_position_name';
  static const kScheduledTo = 'scheduled_to';


  // getters and setters
  @override
  List<String> get createAllowed => ['quantity','time_id','time_preference_option_id'];
  @override
  List<String> get updateAllowed => ['quantity'];

  int get quantity => attributes[kQuantity] ?? 0;
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  String get scheduledTo => attributes[kScheduledTo] ?? '';


  set quantity(int n) => attributes[kQuantity] = n;


  PcoServicesNeededPosition() : super(pcoApplication, typeString);
  PcoServicesNeededPosition.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesNeededPosition Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions;
  static Future<List<PcoServicesNeededPosition>> getManyFromServiceTypeAndPlanAndNeededPositionIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesNeededPosition> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesNeededPosition.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesNeededPosition Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions;
  static Future<PcoServicesNeededPosition?> getSingleFromServiceTypeAndPlanAndNeededPositionIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesNeededPosition?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesNeededPosition.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/team';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
Future<List<PcoServicesPlanTime>> getPlanTimesTime({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanTime> retval = [];
  var url = '$apiEndpoint/time';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanTime.fromJson(itemData));
    }
  }
  return retval;
}
    

}
