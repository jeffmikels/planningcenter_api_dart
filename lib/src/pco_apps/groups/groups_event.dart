/// This file was generated on 2021-11-17T23:59:30.057743


import '../../pco.dart';

/// This class represents a PCO Groups Event Object
/// 
/// Application: groups
/// Id:          event
/// Type:        Event
/// ApiVersion:  2018-08-01
/// 
/// Description:
/// 
/// 
/// Example:
/// 
/// {"type":"Event","id":"1","attributes":{"attendance_requests_enabled":true,"automated_reminder_enabled":true,"canceled":true,"canceled_at":"2000-01-01T12:00:00Z","description":"string","ends_at":"2000-01-01T12:00:00Z","location_type_preference":"string","multi_day":true,"name":"string","reminders_sent":true,"reminders_sent_at":"2000-01-01T12:00:00Z","repeating":true,"starts_at":"2000-01-01T12:00:00Z","virtual_location_url":"string"},"relationships":{"attendance_submitter":{"data":{"type":"Person","id":"1"}},"group":{"data":{"type":"Group","id":"1"}},"location":{"data":{"type":"Location","id":"1"}},"repeating_event":{"data":{"type":"RepeatingEvent","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/groups/v2/events
/// 
class PcoGroupsEvent extends PcoResource {
  static const String pcoApplication = 'groups';
  static const String typeString = 'Event';
  static const String typeId = 'event';
  static const String apiVersion = '2018-08-01';
  static const String shortestEdgeId = 'event-organization-events';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kAttendanceRequestsEnabled = 'attendance_requests_enabled';
  static const kAutomatedReminderEnabled = 'automated_reminder_enabled';
  static const kCanceled = 'canceled';
  static const kCanceledAt = 'canceled_at';
  static const kDescription = 'description';
  static const kEndsAt = 'ends_at';
  static const kLocationTypePreference = 'location_type_preference';
  static const kMultiDay = 'multi_day';
  static const kName = 'name';
  static const kRemindersSent = 'reminders_sent';
  static const kRemindersSentAt = 'reminders_sent_at';
  static const kRepeating = 'repeating';
  static const kStartsAt = 'starts_at';
  static const kVirtualLocationUrl = 'virtual_location_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  bool get isAttendanceRequestsEnabled => attributes[kAttendanceRequestsEnabled] == true;
  bool get isAutomatedReminderEnabled => attributes[kAutomatedReminderEnabled] == true;
  bool get isCanceled => attributes[kCanceled] == true;
  DateTime get canceledAt => DateTime.parse(attributes[kCanceledAt] ?? '');
  String get description => attributes[kDescription] ?? '';
  DateTime get endsAt => DateTime.parse(attributes[kEndsAt] ?? '');
  String get locationTypePreference => attributes[kLocationTypePreference] ?? '';
  bool get isMultiDay => attributes[kMultiDay] == true;
  String get name => attributes[kName] ?? '';
  bool get isRemindersSent => attributes[kRemindersSent] == true;
  DateTime get remindersSentAt => DateTime.parse(attributes[kRemindersSentAt] ?? '');
  bool get isRepeating => attributes[kRepeating] == true;
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');
  String get virtualLocationUrl => attributes[kVirtualLocationUrl] ?? '';




  PcoGroupsEvent() : super(pcoApplication, typeString);
  PcoGroupsEvent.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events;
  static Future<List<PcoGroupsEvent>> getManyFromGroupAndEventIds(String groupId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsEvent.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/events;
  static Future<List<PcoGroupsEvent>> getManyFromGroupTypeAndEventIds(String groupTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsEvent.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events;
  static Future<List<PcoGroupsEvent>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsEvent.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events;
  static Future<List<PcoGroupsEvent>> getManyFromPeopleAndEventIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoGroupsEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoGroupsEvent.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events;
  static Future<PcoGroupsEvent?> getSingleFromGroupAndEventIds(String groupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/groups/$groupId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsEvent.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/events;
  static Future<PcoGroupsEvent?> getSingleFromGroupTypeAndEventIds(String groupTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/group_types/$groupTypeId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsEvent.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events;
  static Future<PcoGroupsEvent?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsEvent.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events;
  static Future<PcoGroupsEvent?> getSingleFromPeopleAndEventIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoGroupsEvent?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/groups/v2/people/$peopleId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoGroupsEvent.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoGroupsAttendance objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances
Future<List<PcoGroupsAttendance>> getAttendances({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsAttendance> retval = [];
  var url = '$apiEndpoint/attendances';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsAttendance.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group
Future<List<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsGroup> retval = [];
  var url = '$apiEndpoint/group';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsGroup.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoGroupsLocation objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location
Future<List<PcoGroupsLocation>> getLocations({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoGroupsLocation> retval = [];
  var url = '$apiEndpoint/location';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoGroupsLocation.fromJson(itemData));
    }
  }
  return retval;
}
    

}
