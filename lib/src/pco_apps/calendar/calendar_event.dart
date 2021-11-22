/// This file was generated on 2021-11-22T16:37:09.251403


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
  static Future<List<PcoCalendarEvent>> getManyFromAttachmentAndEventIds(String attachmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/attachments/$attachmentId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner;
  static Future<List<PcoCalendarEvent>> getManyFromConflictAndWinnerIds(String conflictId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/winner';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event;
  static Future<List<PcoCalendarEvent>> getManyFromEventInstanceAndEventIds(String eventInstanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event;
  static Future<List<PcoCalendarEvent>> getManyFromEventResourceRequestAndEventIds(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event;
  static Future<List<PcoCalendarEvent>> getManyFromEventInstanceAndEventTimeAndEventIds(String eventInstanceId,String eventTimeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events;
  static Future<List<PcoCalendarEvent>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events;
  static Future<List<PcoCalendarEvent>> getManyFromTagAndEventIds(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tags/$tagId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarEvent Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events;
  static Future<List<PcoCalendarEvent>> getManyFromTagGroupAndEventIds(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarEvent> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/events';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments/1/event;
  static Future<PcoCalendarEvent?> getSingleFromAttachmentAndEventIds(String attachmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/attachments/$attachmentId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner;
  static Future<PcoCalendarEvent?> getSingleFromConflictAndWinnerIds(String conflictId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/winner' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event;
  static Future<PcoCalendarEvent?> getSingleFromEventInstanceAndEventIds(String eventInstanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/event;
  static Future<PcoCalendarEvent?> getSingleFromEventResourceRequestAndEventIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/event_times/1/event;
  static Future<PcoCalendarEvent?> getSingleFromEventInstanceAndEventTimeAndEventIds(String eventInstanceId,String eventTimeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/event_times/$eventTimeId/event' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events;
  static Future<PcoCalendarEvent?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events;
  static Future<PcoCalendarEvent?> getSingleFromTagAndEventIds(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tags/$tagId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarEvent Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events;
  static Future<PcoCalendarEvent?> getSingleFromTagGroupAndEventIds(String tagGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarEvent?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarEvent.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/events' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarEvent.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarAttachment objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments
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
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
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
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_instances
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
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/event_resource_requests
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
    
/// will get many PcoCalendarFeed objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/feed
Future<List<PcoCalendarFeed>> getFeeds({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarFeed.canInclude;
  List<PcoCalendarFeed> retval = [];
  var url = '$apiEndpoint/feed';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarFeed.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarPerson objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/owner
Future<List<PcoCalendarPerson>> getPersonsOwner({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarPerson.canInclude;
  List<PcoCalendarPerson> retval = [];
  var url = '$apiEndpoint/owner';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarPerson.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/resource_bookings
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
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags
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
