/// This file was generated on 2021-11-18T15:28:01.726180


import '../../pco.dart';

/// This class represents a PCO Services PlanPerson Object
/// 
/// Application: services
/// Id:          plan_person
/// Type:        PlanPerson
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A person scheduled within a specific plan.
/// 
/// Example:
/// 
/// {"type":"PlanPerson","id":"1","attributes":{"status":"string","created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","notes":"string","decline_reason":"string","name":"string","notification_changed_by_name":"string","notification_sender_name":"string","team_position_name":"string","photo_thumbnail":"string","status_updated_at":"2000-01-01T12:00:00Z","notification_changed_at":"2000-01-01T12:00:00Z","notification_prepared_at":"2000-01-01T12:00:00Z","notification_read_at":"2000-01-01T12:00:00Z","notification_sent_at":"2000-01-01T12:00:00Z","prepare_notification":true,"can_accept_partial":true},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"plan":{"data":{"type":"Plan","id":"1"}},"scheduled_by":{"data":{"type":"Person","id":"1"}},"service_type":{"data":{"type":"ServiceType","id":"1"}},"team":{"data":{"type":"Team","id":"1"}},"responds_to":{"data":{"type":"Person","id":"1"}},"times":{"data":[{"type":"PlanTime","id":"1"}]},"service_times":{"data":[{"type":"PlanTime","id":"1"}]},"time_preference_options":{"data":[{"type":"TimePreferenceOption","id":"1"}]}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/people/1/plan_people
/// 
class PcoServicesPlanPerson extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanPerson';
  static const String kTypeId = 'plan_person';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'planperson-team-plan_people';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/teams/1/plan_people';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;


  // field mapping constants
  static const kStatus = 'status';
  static const kNotes = 'notes';
  static const kDeclineReason = 'decline_reason';
  static const kName = 'name';
  static const kNotificationChangedByName = 'notification_changed_by_name';
  static const kNotificationSenderName = 'notification_sender_name';
  static const kTeamPositionName = 'team_position_name';
  static const kPhotoThumbnail = 'photo_thumbnail';
  static const kStatusUpdatedAt = 'status_updated_at';
  static const kNotificationChangedAt = 'notification_changed_at';
  static const kNotificationPreparedAt = 'notification_prepared_at';
  static const kNotificationReadAt = 'notification_read_at';
  static const kNotificationSentAt = 'notification_sent_at';
  static const kPrepareNotification = 'prepare_notification';
  static const kCanAcceptPartial = 'can_accept_partial';


  // getters and setters
  @override
  List<String> get createAllowed => ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at'];
  @override
  List<String> get updateAllowed => ['person_id','status','decline_reason','notes','team_position_name','responds_to_id','prepare_notification','notification_prepared_at'];


  /// Accepts one of 'C', 'U', 'D', or 'Confirmed', 'Unconfirmed', or 'Declined'
  String get status => attributes[kStatus] ?? '';
  String get notes => attributes[kNotes] ?? '';
  String get declineReason => attributes[kDeclineReason] ?? '';
  String get name => attributes[kName] ?? '';
  String get notificationChangedByName => attributes[kNotificationChangedByName] ?? '';
  String get notificationSenderName => attributes[kNotificationSenderName] ?? '';
  String get teamPositionName => attributes[kTeamPositionName] ?? '';
  String get photoThumbnail => attributes[kPhotoThumbnail] ?? '';
  DateTime get statusUpdatedAt => DateTime.parse(attributes[kStatusUpdatedAt] ?? '');
  DateTime get notificationChangedAt => DateTime.parse(attributes[kNotificationChangedAt] ?? '');
  DateTime get notificationPreparedAt => DateTime.parse(attributes[kNotificationPreparedAt] ?? '');
  DateTime get notificationReadAt => DateTime.parse(attributes[kNotificationReadAt] ?? '');
  DateTime get notificationSentAt => DateTime.parse(attributes[kNotificationSentAt] ?? '');
  bool get isPrepareNotification => attributes[kPrepareNotification] == true;

  /// If the person is scheduled to a split team where they could potentially accept 1 time and decline another.
  bool get isCanAcceptPartial => attributes[kCanAcceptPartial] == true;



  /// Accepts one of 'C', 'U', 'D', or 'Confirmed', 'Unconfirmed', or 'Declined'
  set status(String s) => attributes[kStatus] = s;
  set notes(String s) => attributes[kNotes] = s;
  set declineReason(String s) => attributes[kDeclineReason] = s;
  set teamPositionName(String s) => attributes[kTeamPositionName] = s;
  set notificationPreparedAt(DateTime d) => attributes[kNotificationPreparedAt] = d.toIso8601String();
  set isPrepareNotification(bool b) => attributes[kPrepareNotification] = b;


  PcoServicesPlanPerson() : super(kPcoApplication, kTypeString);
  PcoServicesPlanPerson.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesPlanPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people;
  static Future<List<PcoServicesPlanPerson>> getManyFromPeopleAndPlanPeopleIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members;
  static Future<List<PcoServicesPlanPerson>> getManyFromServiceTypeAndPlanAndTeamMemberIds(String serviceTypeId,String planId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/team_members';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanPerson.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoServicesPlanPerson Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/plan_people;
  static Future<List<PcoServicesPlanPerson>> getManyFromTeamAndPlanPeopleIds(String teamId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPlanPerson> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/plan_people';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPlanPerson.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPlanPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people;
  static Future<PcoServicesPlanPerson?> getSingleFromPeopleAndPlanPeopleIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/people/$peopleId/plan_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/team_members;
  static Future<PcoServicesPlanPerson?> getSingleFromServiceTypeAndPlanAndTeamMemberIds(String serviceTypeId,String planId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/team_members' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanPerson.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoServicesPlanPerson Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/teams/1/plan_people;
  static Future<PcoServicesPlanPerson?> getSingleFromTeamAndPlanPeopleIds(String teamId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPlanPerson?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/teams/$teamId/plan_people' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPlanPerson.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/declined_plan_times
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
    
/// will get many PcoServicesPerson objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/person
Future<List<PcoServicesPerson>> getPersons({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPerson> retval = [];
  var url = '$apiEndpoint/person';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPerson.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlan objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan
Future<List<PcoServicesPlan>> getPlans({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlan> retval = [];
  var url = '$apiEndpoint/plan';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlan.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanPersonTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
Future<List<PcoServicesPlanPersonTime>> getPlanPersonTimes({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoServicesPlanPersonTime> retval = [];
  var url = '$apiEndpoint/plan_person_times';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoServicesPlanPersonTime.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoServicesPlanTime objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_times
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
    
/// will get many PcoServicesTeam objects
/// using a path like this: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/team
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
