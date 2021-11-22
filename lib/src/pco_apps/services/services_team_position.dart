/// This file was generated on 2021-11-22T16:57:41.247074


import '../../pco.dart';

/// This class represents a PCO Services TeamPosition Object
/// 
/// Application: services
/// Id:          team_position
/// Type:        TeamPosition
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A position within a team.
/// 
/// Example:
/// 
/// {"type":"TeamPosition","id":"1","attributes":{"name":"string","tags":[],"negative_tag_groups":[],"tag_groups":[]},"relationships":{"team":{"data":{"type":"Team","id":"1"}},"attachment_types":{"data":[{"type":"AttachmentType","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions
/// 
/// possible includes with parameter ?include=a,b
/// @team: include associated team 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoServicesTeamPosition extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'TeamPosition';
  static const String kTypeId = 'team_position';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'teamposition-team-team_positions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/team_positions';

  /// possible includes with parameter ?include=a,b
  /// @team: include associated team 
  static List<String> get canInclude => ['team'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kName = 'name';
  static const kTags = 'tags';
  static const kNegativeTagGroups = 'negative_tag_groups';
  static const kTagGroups = 'tag_groups';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get name => attributes[kName] ?? '';

  /// If the Team is assigned via tags, these are specific Tags that are specified.
  List get tags => attributes[kTags] ?? [];

  /// If the Team is assigned via tags, these are Tags where the option "None" is specified.
  List get negativeTagGroups => attributes[kNegativeTagGroups] ?? [];

  /// If the Team is assigned via tags, these are Tags where the option "Any" is specified.
  List get tagGroups => attributes[kTagGroups] ?? [];




  PcoServicesTeamPosition() : super(kPcoApplication, kTypeString);
  PcoServicesTeamPosition.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesTeamPosition Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position;
  static Future<List<PcoServicesTeamPosition>> getManyFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentAndTeamPositionIds(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTeamPosition> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamPosition.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeamPosition Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions;
  static Future<List<PcoServicesTeamPosition>> getManyFromServiceTypeAndTeamPositionIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTeamPosition> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamPosition.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoServicesTeamPosition Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_positions;
  static Future<List<PcoServicesTeamPosition>> getManyFromTeamAndTeamPositionIds(String teamId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesTeamPosition> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/teams/$teamId/team_positions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesTeamPosition.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesTeamPosition Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments/1/team_position;
  static Future<PcoServicesTeamPosition?> getSingleFromServiceTypeAndTeamPositionAndPersonTeamPositionAssignmentAndTeamPositionIds(String serviceTypeId,String teamPositionId,String personTeamPositionAssignmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTeamPosition?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions/$teamPositionId/person_team_position_assignments/$personTeamPositionAssignmentId/team_position' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamPosition.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesTeamPosition Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions;
  static Future<PcoServicesTeamPosition?> getSingleFromServiceTypeAndTeamPositionIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTeamPosition?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/team_positions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamPosition.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoServicesTeamPosition Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/team_positions;
  static Future<PcoServicesTeamPosition?> getSingleFromTeamAndTeamPositionIds(String teamId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesTeamPosition?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesTeamPosition.canInclude;
    var url = '/services/v2/teams/$teamId/team_positions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesTeamPosition.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoServicesPersonTeamPositionAssignment objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/person_team_position_assignments
Future<List<PcoServicesPersonTeamPositionAssignment>> getPersonTeamPositionAssignments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesPersonTeamPositionAssignment.canInclude;
  List<PcoServicesPersonTeamPositionAssignment> retval = [];
  var url = '$apiEndpoint/person_team_position_assignments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPersonTeamPositionAssignment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/team_positions/1/team
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoServicesTeam.canInclude;
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/team';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
