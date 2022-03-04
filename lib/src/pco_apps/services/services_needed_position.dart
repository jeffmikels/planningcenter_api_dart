/// This file was generated on 2022-03-04T15:29:14.055838


import '../../pco.dart';

/// This class represents a PCO Services NeededPosition Object
/// 
/// - Application:        services
/// - Id:                 needed_position
/// - Type:               NeededPosition
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions
/// 
/// Description:
/// An amount of unfilled positions needed within a team in a plan.
/// 
/// Example:
/// ```json
/// {
///   "type": "NeededPosition",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "team_position_name": "string",
///     "scheduled_to": "string"
///   },
///   "relationships": {
///     "team": {
///       "data": {
///         "type": "Team",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "time_preference_option": {
///       "data": {
///         "type": "TimePreferenceOption",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// - team: include associated team 
/// - time: include associated time 
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `team-neededposition-team`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team
/// - `plantime-neededposition-time`: https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time
/// 
/// All Inbound Edges:
/// - `neededposition-plan-needed_positions`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions
/// 
/// All Actions:
/// NONE
///
class PcoServicesNeededPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'NeededPosition';
  static const String kTypeId = 'needed_position';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'neededposition-plan-needed_positions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/needed_positions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions';

  /// possible includes with parameter ?include=a,b
  /// - `team`: include associated team 
  /// - `time`: include associated time 
  static List<String> get canInclude => ['team','time'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kId = 'id';
  static const kQuantity = 'quantity';
  static const kTeamPositionName = 'team_position_name';
  static const kScheduledTo = 'scheduled_to';
  static const kTimeId = 'time_id';
  static const kTimePreferenceOptionId = 'time_preference_option_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['quantity','time_id','time_preference_option_id'];

  @override
  List<String> get updateAllowed => ['quantity'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  int get quantity => attributes[kQuantity] ?? 0;
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  String get scheduledTo => attributes[kScheduledTo] ?? '';
  

  // setters for object attributes

  set quantity(int n) => attributes[kQuantity] = n;
  

  // additional setters and getters for assignable values

  String get timeId => attributes[kTimeId] ?? '';
  set timeId(String s) => attributes[kTimeId] = s;
  String get timePreferenceOptionId => attributes[kTimePreferenceOptionId] ?? '';
  set timePreferenceOptionId(String s) => attributes[kTimePreferenceOptionId] = s;
  



  // Class Constructors
  PcoServicesNeededPosition() : super(kPcoApplication, kTypeString);
  PcoServicesNeededPosition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesNeededPosition] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions`
  static Future<PcoCollection<PcoServicesNeededPosition>> getFromServiceTypeAndPlan(String serviceTypeId,String planId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesNeededPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/needed_positions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesNeededPosition>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesTeam] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/team`
  Future<PcoCollection<PcoServicesTeam>> getTeam({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeam.canInclude;
    var url = '$apiEndpoint/team';
    return PcoCollection.fromApiCall<PcoServicesTeam>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoServicesPlanTime] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/next_up_plans/1/needed_positions/1/time`
  Future<PcoCollection<PcoServicesPlanTime>> getTime({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlanTime.canInclude;
    var url = '$apiEndpoint/time';
    return PcoCollection.fromApiCall<PcoServicesPlanTime>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
