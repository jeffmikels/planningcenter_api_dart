/// This file was generated on 2021-11-18T13:57:09.746606


import '../../pco.dart';

/// This class represents a PCO Services Schedule Object
/// 
/// Application: services
/// Id:          schedule
/// Type:        Schedule
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// An instance of a PlanPerson with included data for displaying in a user's schedule
/// 
/// Example:
/// 
/// {"type":"Schedule","id":"1","attributes":{"sort_date":"2000-01-01T12:00:00Z","dates":"string","decline_reason":"string","organization_name":"string","organization_time_zone":"string","organization_twenty_four_hour_time":"string","person_name":"string","position_display_times":"string","responds_to_name":"string","service_type_name":"string","short_dates":"string","status":"string","team_name":"string","team_position_name":"string","can_accept_partial":true,"can_accept_partial_one_time":true,"plan_visible":true,"plan_visible_to_me":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}},"organization":{"data":{"type":"Organization","id":"1"}},"plan_person":{"data":{"type":"PlanPerson","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"team":{"data":{"type":"Team","id":"1"}},"responds_to_person":{"data":{"type":"Person","id":"1"}},"times":{"data":[{"type":"PlanTime","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/schedules
/// 
class PcoServicesSchedule extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Schedule';
  static const String typeId = 'schedule';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'schedule-person-schedules';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/people/1/schedules';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kSortDate = 'sort_date';
  static const kDates = 'dates';
  static const kDeclineReason = 'decline_reason';
  static const kOrganizationName = 'organization_name';
  static const kOrganizationTimeZone = 'organization_time_zone';
  static const kOrganizationTwentyFourHourTime = 'organization_twenty_four_hour_time';
  static const kPersonName = 'person_name';
  static const kPositionDisplayTimes = 'position_display_times';
  static const kRespondsToName = 'responds_to_name';
  static const kServiceTypeName = 'service_type_name';
  static const kShortDates = 'short_dates';
  static const kStatus = 'status';
  static const kTeamName = 'team_name';
  static const kTeamPositionName = 'team_position_name';
  static const kCanAcceptPartial = 'can_accept_partial';
  static const kCanAcceptPartialOneTime = 'can_accept_partial_one_time';
  static const kPlanVisible = 'plan_visible';
  static const kPlanVisibleToMe = 'plan_visible_to_me';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  DateTime get sortDate => DateTime.parse(attributes[kSortDate] ?? '');
  String get dates => attributes[kDates] ?? '';
  String get declineReason => attributes[kDeclineReason] ?? '';
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get organizationTimeZone => attributes[kOrganizationTimeZone] ?? '';
  String get organizationTwentyFourHourTime => attributes[kOrganizationTwentyFourHourTime] ?? '';
  String get personName => attributes[kPersonName] ?? '';
  String get positionDisplayTimes => attributes[kPositionDisplayTimes] ?? '';
  String get respondsToName => attributes[kRespondsToName] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  String get shortDates => attributes[kShortDates] ?? '';
  String get status => attributes[kStatus] ?? '';
  String get teamName => attributes[kTeamName] ?? '';
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  bool get isCanAcceptPartial => attributes[kCanAcceptPartial] == true;
  bool get isCanAcceptPartialOneTime => attributes[kCanAcceptPartialOneTime] == true;

  /// True if the scheduled Plan is visible to the scheduled Person
  bool get isPlanVisible => attributes[kPlanVisible] == true;

  /// True if the scheduled Plan is visible to the current Person
  bool get isPlanVisibleToMe => attributes[kPlanVisibleToMe] == true;




  PcoServicesSchedule() : super(pcoApplication, typeString);
  PcoServicesSchedule.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules;
  static Future<List<PcoServicesSchedule>> getManyFromPeopleAndScheduleIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSchedule> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSchedule.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesSchedule Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules;
  static Future<List<PcoServicesSchedule>> getManyFromServiceTypeAndPlanAndMyScheduleIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesSchedule> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/my_schedules';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesSchedule.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules;
  static Future<PcoServicesSchedule?> getSingleFromPeopleAndScheduleIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSchedule?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/schedules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSchedule.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesSchedule Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/my_schedules;
  static Future<PcoServicesSchedule?> getSingleFromServiceTypeAndPlanAndMyScheduleIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesSchedule?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/my_schedules' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesSchedule.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/declined_plan_times
Future<List<PcoServicesPlanTime>> getPlanTimesDeclinedPlanTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanTime> retval = [];
  var url = '$apiEndpoint/declined_plan_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/plan_times
Future<List<PcoServicesPlanTime>> getPlanTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanTime> retval = [];
  var url = '$apiEndpoint/plan_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/respond_to
Future<List<PcoServicesPerson>> getPersonsRespondTo({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/respond_to';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/schedules/1/team
Future<List<PcoServicesTeam>> getTeams({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesTeam> retval = [];
  var url = '$apiEndpoint/team';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesTeam.fromJson(itemData));
    }
  }
  return retval;
}
    

}
