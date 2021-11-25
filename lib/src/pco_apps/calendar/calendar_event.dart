/// This file was generated on 2021-11-25T00:07:20.686745


import '../../pco.dart';

/// This class represents a PCO Calendar Event Object
/// 
/// Application: calendar
/// Id:          event
/// Type:        Event
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// An event.\n\nMay contain information such as who owns\nthe event, visibility on Church Center and a public-facing summary.\n
/// 
/// Example:
/// 
/// {"type":"Event","id":"1","attributes":{"approval_status":"string","archived_at":"2000-01-01T12:00:00Z","created_at":"2000-01-01T12:00:00Z","details":"string","image_url":"string","name":"string","percent_approved":1,"percent_rejected":1,"registration_url":"string","updated_at":"2000-01-01T12:00:00Z","visible_in_church_center":true},"relationships":{"owner":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/events
/// 
/// possible includes with parameter ?include=a,b
/// @attachments: include associated attachments 
/// @owner: include associated owner 
/// @tags: include associated tags 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @approval_status (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @percent_approved (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
/// @percent_rejected (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// @visible_in_church_center (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
/// possible orderings with parameter ?order=

///
class PcoCalendarEvent extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'event-organization-events';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/events';

  /// possible includes with parameter ?include=a,b
  /// @attachments: include associated attachments 
  /// @owner: include associated owner 
  /// @tags: include associated tags 
  static List<String> get canInclude => ['attachments','owner','tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @approval_status (URLParameter), query on a specific approval_status, example: ?where[approval_status]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @percent_approved (URLParameter), query on a specific percent_approved, example: ?where[percent_approved]=1
  /// @percent_rejected (URLParameter), query on a specific percent_rejected, example: ?where[percent_rejected]=1
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  /// @visible_in_church_center (URLParameter), query on a specific visible_in_church_center, example: ?where[visible_in_church_center]=true
  static List<String> get canQuery => ['approval_status','created_at','name','percent_approved','percent_rejected','updated_at','visible_in_church_center'];

  /// possible orderings with parameter ?order=

  static List<String> get canOrderBy => [];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kApprovalStatus = 'approval_status';
  static const kArchivedAt = 'archived_at';
  static const kDetails = 'details';
  static const kImageUrl = 'image_url';
  static const kName = 'name';
  static const kPercentApproved = 'percent_approved';
  static const kPercentRejected = 'percent_rejected';
  static const kRegistrationUrl = 'registration_url';
  static const kVisibleInChurchCenter = 'visible_in_church_center';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Possible values:
  ///- `A`: approved.
  ///- `P`: pending.
  ///- `R`: rejected.
  String get approvalStatus => attributes[kApprovalStatus] ?? '';

  /// UTC time at which the event would be considered in the past
  DateTime get archivedAt => DateTime.parse(attributes[kArchivedAt] ?? '');

  /// A public-facing summary of the event
  String get details => attributes[kDetails] ?? '';

  /// Path to where the event image is stored
  String get imageUrl => attributes[kImageUrl] ?? '';

  /// The name of the event
  String get name => attributes[kName] ?? '';

  /// Calculated by taking the sum of the `percent_approved` for all
  ///future `ReservationBlocks` and dividing that by the `count` of all future
  ///`ReservationBlocks`.
  ///If there are no future `ReservationBlocks`, returns `100`
  int get percentApproved => attributes[kPercentApproved] ?? 0;

  /// Calculated by taking the sum of the `percent_rejected` for all
  ///future `ReservationBlocks` and dividing that by the `count` of all future
  ///`ReservationBlocks`.
  ///If there are no future `ReservationBlocks`, returns `0`
  int get percentRejected => attributes[kPercentRejected] ?? 0;

  /// The registration URL for the event
  String get registrationUrl => attributes[kRegistrationUrl] ?? '';

  /// - `true` indicates the event Church Center visibility is set to 'Published'
  ///- `false` indicates the event Church Center visibility is set to 'Hidden'
  bool get isVisibleInChurchCenter => attributes[kVisibleInChurchCenter] == true;




  PcoCalendarEvent() : super(kPcoApplication, kTypeString);
  PcoCalendarEvent.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromAttachment(String attachmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/attachments/$attachmentId/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromConflictAndWinner(String conflictId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/winner';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromEventInstance(String eventInstanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromEventResourceRequest(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromEventInstanceAndEventTime(String eventInstanceId,String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events;
  static Future<PcoCollection<PcoCalendarEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromTagAndEvent(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tags/$tagId/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events;
  static Future<PcoCollection<PcoCalendarEvent>> getManyFromTagGroupAndEvent(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/events';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromAttachment(String attachmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/attachments/$attachmentId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromConflictAndWinner(String conflictId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/winner' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromEventInstance(String eventInstanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromEventResourceRequest(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromEventInstanceAndEventTime(String eventInstanceId,String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events;
  static Future<PcoCollection<PcoCalendarEvent>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/events' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromTagAndEvent(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tags/$tagId/events' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events;
  static Future<PcoCollection<PcoCalendarEvent>> getSingleFromTagGroupAndEvent(String tagGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/events' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarAttachment objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
Future<PcoCollection<PcoCalendarAttachment>> getAttachments({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
  var url = '$apiEndpoint/attachments';
  return PcoCollection.fromApiCall<PcoCalendarAttachment>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarConflict objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
Future<PcoCollection<PcoCalendarConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarConflict.canInclude;
  var url = '$apiEndpoint/conflicts';
  return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
  var url = '$apiEndpoint/event_instances';
  return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  var url = '$apiEndpoint/event_resource_requests';
  return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarFeed objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/feed
Future<PcoCollection<PcoCalendarFeed>> getFeeds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarFeed.canInclude;
  var url = '$apiEndpoint/feed';
  return PcoCollection.fromApiCall<PcoCalendarFeed>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/owner
Future<PcoCollection<PcoCalendarPerson>> getPersonsOwner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  var url = '$apiEndpoint/owner';
  return PcoCollection.fromApiCall<PcoCalendarPerson>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
  var url = '$apiEndpoint/resource_bookings';
  return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags
Future<PcoCollection<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTag.canInclude;
  var url = '$apiEndpoint/tags';
  return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:apiVersion);
}
    


}
