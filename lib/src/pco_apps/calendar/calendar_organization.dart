/// This file was generated on 2021-11-22T16:37:09.273808


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
Future<List<PcoCalendarAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
  List<PcoCalendarAttachment> retval = [];
  var url = '$apiEndpoint/attachments';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarAttachment.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarConflict objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts
Future<List<PcoCalendarConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarConflict.canInclude;
  List<PcoCalendarConflict> retval = [];
  var url = '$apiEndpoint/conflicts';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarConflict.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances
Future<List<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
  List<PcoCalendarEventInstance> retval = [];
  var url = '$apiEndpoint/event_instances';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventInstance.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests
Future<List<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  List<PcoCalendarEventResourceRequest> retval = [];
  var url = '$apiEndpoint/event_resource_requests';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventResourceRequest.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarFeed objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/feeds
Future<List<PcoCalendarFeed>> getFeeds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarFeed.canInclude;
  List<PcoCalendarFeed> retval = [];
  var url = '$apiEndpoint/feeds';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarFeed.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/people
Future<List<PcoCalendarPerson>> getPersonsPeople({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/people';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarReportTemplate objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/report_templates
Future<List<PcoCalendarReportTemplate>> getReportTemplates({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarReportTemplate.canInclude;
  List<PcoCalendarReportTemplate> retval = [];
  var url = '$apiEndpoint/report_templates';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarReportTemplate.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceApprovalGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups
Future<List<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
  List<PcoCalendarResourceApprovalGroup> retval = [];
  var url = '$apiEndpoint/resource_approval_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings
Future<List<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
  List<PcoCalendarResourceBooking> retval = [];
  var url = '$apiEndpoint/resource_bookings';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceBooking.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceFolder objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders
Future<List<PcoCalendarResourceFolder>> getResourceFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
  List<PcoCalendarResourceFolder> retval = [];
  var url = '$apiEndpoint/resource_folders';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceFolder.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceQuestion objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_questions
Future<List<PcoCalendarResourceQuestion>> getResourceQuestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
  List<PcoCalendarResourceQuestion> retval = [];
  var url = '$apiEndpoint/resource_questions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceQuestion.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resources';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups
Future<List<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
  List<PcoCalendarRoomSetup> retval = [];
  var url = '$apiEndpoint/room_setups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarRoomSetup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups
Future<List<PcoCalendarTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
  List<PcoCalendarTagGroup> retval = [];
  var url = '$apiEndpoint/tag_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTagGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags
Future<List<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTag.canInclude;
  List<PcoCalendarTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTag.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
