/// This file was generated on 2021-11-25T00:07:20.701585


import '../../pco.dart';

/// This class represents a PCO Calendar Organization Object
/// 
/// Application: calendar
/// Id:          organization
/// Type:        Organization
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// An administrative structure, usually representing a single church.\nContains date/time formatting and time zone preferences.\n
/// 
/// Example:
/// 
/// {"type":"Organization","id":"1","attributes":{"name":"string","time_zone":"string","twenty_four_hour_time":true,"date_format":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCalendarOrganization extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = '';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2';

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
  static const kName = 'name';
  static const kTimeZone = 'time_zone';
  static const kTwentyFourHourTime = 'twenty_four_hour_time';
  static const kDateFormat = 'date_format';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// The name of the organization
  String get name => attributes[kName] ?? '';

  /// The time zone of the organization
  String get timeZone => attributes[kTimeZone] ?? '';

  /// - `true` indicates hours for times will use a 24-hour clock
  ///- `false` indicates hours for times will use a 12-hour clock
  bool get isTwentyFourHourTime => attributes[kTwentyFourHourTime] == true;

  /// Possible values:
  ///- `%d/%m/%Y`: indicates date/month/year formatting
  ///- `%m/%d/%Y`: indicates month/date/year formatting
  String get dateFormat => attributes[kDateFormat] ?? '';




  PcoCalendarOrganization() : super(kPcoApplication, kTypeString);
  PcoCalendarOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);





/// will get many PcoCalendarAttachment objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments
Future<PcoCollection<PcoCalendarAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
  var url = '$apiEndpoint/attachments';
  return PcoCollection.fromApiCall<PcoCalendarAttachment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarConflict objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts
Future<PcoCollection<PcoCalendarConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarConflict.canInclude;
  var url = '$apiEndpoint/conflicts';
  return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances
Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
  var url = '$apiEndpoint/event_instances';
  return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  var url = '$apiEndpoint/event_resource_requests';
  return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events
Future<PcoCollection<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarFeed objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/feeds
Future<PcoCollection<PcoCalendarFeed>> getFeeds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarFeed.canInclude;
  var url = '$apiEndpoint/feeds';
  return PcoCollection.fromApiCall<PcoCalendarFeed>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/people
Future<PcoCollection<PcoCalendarPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  var url = '$apiEndpoint/people';
  return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarReportTemplate objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates
Future<PcoCollection<PcoCalendarReportTemplate>> getReportTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
  var url = '$apiEndpoint/report_templates';
  return PcoCollection.fromApiCall<PcoCalendarReportTemplate>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceApprovalGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
  var url = '$apiEndpoint/resource_approval_groups';
  return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings
Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
  var url = '$apiEndpoint/resource_bookings';
  return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceFolder objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders
Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
  var url = '$apiEndpoint/resource_folders';
  return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceQuestion objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_questions
Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
  var url = '$apiEndpoint/resource_questions';
  return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources
Future<PcoCollection<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  var url = '$apiEndpoint/resources';
  return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups
Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
  var url = '$apiEndpoint/room_setups';
  return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups
Future<PcoCollection<PcoCalendarTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
  var url = '$apiEndpoint/tag_groups';
  return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags
Future<PcoCollection<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTag.canInclude;
  var url = '$apiEndpoint/tags';
  return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:apiVersion);
}
    


}
