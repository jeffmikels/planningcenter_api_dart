/// This file was generated on 2021-11-18T13:57:10.127113


import '../../pco.dart';

/// This class represents a PCO Calendar Tag Object
/// 
/// Application: calendar
/// Id:          tag
/// Type:        Tag
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// An organizational tag that can be applied to events.\n\nApplied tags can be used to filter events on the calendar or\nfilter events for reports, iCal feeds, kiosk, and the widget.\n
/// 
/// Example:
/// 
/// {"type":"Tag","id":"1","attributes":{"color":"string","created_at":"2000-01-01T12:00:00Z","name":"string","position":1.42,"updated_at":"2000-01-01T12:00:00Z"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/tags
/// 
class PcoCalendarTag extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'Tag';
  static const String typeId = 'tag';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'tag-organization-tags';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tags';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kColor = 'color';
  static const kName = 'name';
  static const kPosition = 'position';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// Hex color code of the tag
  String get color => attributes[kColor] ?? '';

  /// The tag name
  String get name => attributes[kName] ?? '';

  /// If the tag belongs to a TagGroup,
  ///position indicates place in list within TagGroup in the UI.
  ///If the tag does not belong to a TagGroup,
  ///position indicates place in list under "Individual Tags" in the UI.
  double get position => attributes[kPosition] ?? 0;




  PcoCalendarTag() : super(pcoApplication, typeString);
  PcoCalendarTag.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags;
  static Future<List<PcoCalendarTag>> getManyFromEventInstanceAndTagIds(String eventInstanceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags;
  static Future<List<PcoCalendarTag>> getManyFromEventAndTagIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags;
  static Future<List<PcoCalendarTag>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTag.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags;
  static Future<List<PcoCalendarTag>> getManyFromTagGroupAndTagIds(String tagGroupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTag> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTag.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags;
  static Future<PcoCalendarTag?> getSingleFromEventInstanceAndTagIds(String eventInstanceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags;
  static Future<PcoCalendarTag?> getSingleFromEventAndTagIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags;
  static Future<PcoCalendarTag?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTag.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags;
  static Future<PcoCalendarTag?> getSingleFromTagGroupAndTagIds(String tagGroupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTag?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTag.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
Future<List<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEventInstance> retval = [];
  var url = '$apiEndpoint/event_instances';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEventInstance.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/events';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
Future<List<PcoCalendarTagGroup>> getTagGroups({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarTagGroup> retval = [];
  var url = '$apiEndpoint/tag_group';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTagGroup.fromJson(itemData));
    }
  }
  return retval;
}
    

}
