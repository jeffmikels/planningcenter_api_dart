/// This file was generated on 2021-11-25T00:07:20.847698


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
/// possible includes with parameter ?include=a,b
/// @group: include associated group 
/// @location: include associated location 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
///
class PcoGroupsEvent extends PcoResource {
  static const String kPcoApplication = 'groups';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'event-organization-events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/groups/v2/events';

  /// possible includes with parameter ?include=a,b
  /// @group: include associated group 
  /// @location: include associated location 
  static List<String> get canInclude => ['group','location'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @ends_at (URLParameter), query on a specific ends_at, example: ?where[ends_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @starts_at (URLParameter), query on a specific starts_at, example: ?where[starts_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['ends_at','name','starts_at'];

  /// possible orderings with parameter ?order=
  /// @ends_at (URLParameter), prefix with a hyphen (-ends_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @starts_at (URLParameter), prefix with a hyphen (-starts_at) to reverse the order
  static List<String> get canOrderBy => ['ends_at','name','starts_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoGroupsEvent() : super(kPcoApplication, kTypeString);
  PcoGroupsEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getManyFromGroupAndEvent(String groupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/groups/$groupId/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getManyFromGroupTypeAndEvent(String groupTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events;
  static Future<PcoCollection<PcoGroupsEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoGroupsEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getManyFromPeopleAndEvent(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/people/$peopleId/events';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/groups/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getSingleFromGroupAndEvent(String groupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/groups/$groupId/events' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/group_types/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getSingleFromGroupTypeAndEvent(String groupTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/group_types/$groupTypeId/events' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/events;
  static Future<PcoCollection<PcoGroupsEvent>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/events' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoGroupsEvent Object
  /// using a path like this: https://api.planningcenteronline.com/groups/v2/people/1/events;
  static Future<PcoCollection<PcoGroupsEvent>> getSingleFromPeopleAndEvent(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoGroupsEvent.canInclude;
    var url = '/groups/v2/people/$peopleId/events' + '/$id';
    return PcoCollection.fromApiCall<PcoGroupsEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoGroupsEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoGroupsAttendance objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/attendances
Future<PcoCollection<PcoGroupsAttendance>> getAttendances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsAttendance.canInclude;
  var url = '$apiEndpoint/attendances';
  return PcoCollection.fromApiCall<PcoGroupsAttendance>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsGroup objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/group
Future<PcoCollection<PcoGroupsGroup>> getGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsGroup.canInclude;
  var url = '$apiEndpoint/group';
  return PcoCollection.fromApiCall<PcoGroupsGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoGroupsLocation objects
/// using a path like this: https://api.planningcenteronline.com/groups/v2/events/1/location
Future<PcoCollection<PcoGroupsLocation>> getLocations({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoGroupsLocation.canInclude;
  var url = '$apiEndpoint/location';
  return PcoCollection.fromApiCall<PcoGroupsLocation>(url, query: query, apiVersion:apiVersion);
}
    


}
