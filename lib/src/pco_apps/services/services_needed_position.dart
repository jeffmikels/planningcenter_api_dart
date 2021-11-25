/// This file was generated on 2021-11-25T00:07:20.262228


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
/// possible includes with parameter ?include=a,b
/// @team: include associated team 
/// @time: include associated time 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesNeededPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'NeededPosition';
  static const String kTypeId = 'needed_position';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'neededposition-plan-needed_positions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions';

  /// possible includes with parameter ?include=a,b
  /// @team: include associated team 
  /// @time: include associated time 
  static List<String> get canInclude => ['team','time'];

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


  PcoServicesNeededPosition() : super(kPcoApplication, kTypeString);
  PcoServicesNeededPosition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesNeededPosition Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions;
  static Future<PcoCollection<PcoServicesNeededPosition>> getManyFromServiceTypeAndPlanAndNeededPosition(String serviceTypeId,String planId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesNeededPosition Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions;
  static Future<PcoCollection<PcoServicesNeededPosition>> getSingleFromServiceTypeAndPlanAndNeededPosition(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesNeededPosition.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
Future<PcoCollection<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  var url = '$apiEndpoint/team';
  return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
Future<PcoCollection<PcoServicesPlanTime>> getPlanTimesTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
  var url = '$apiEndpoint/time';
  return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion:apiVersion);
}
    


}
