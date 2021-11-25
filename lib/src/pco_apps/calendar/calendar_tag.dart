/// This file was generated on 2021-11-25T00:07:20.718824


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
/// possible includes with parameter ?include=a,b
/// @tag_group: include associated tag_group 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @color (URLParameter), query on a specific color, example: ?where[color]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @position (URLParameter), query on a specific position, example: ?where[position]=1.42
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
///
class PcoCalendarTag extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Tag';
  static const String kTypeId = 'tag';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'tag-organization-tags';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tags';

  /// possible includes with parameter ?include=a,b
  /// @tag_group: include associated tag_group 
  static List<String> get canInclude => ['tag_group'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @color (URLParameter), query on a specific color, example: ?where[color]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @id (URLParameter), query on a specific id, example: ?where[id]=primary_key
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @position (URLParameter), query on a specific position, example: ?where[position]=1.42
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['color','created_at','id','name','position','updated_at'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @position (URLParameter), prefix with a hyphen (-position) to reverse the order
  static List<String> get canOrderBy => ['name','position'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCalendarTag() : super(kPcoApplication, kTypeString);
  PcoCalendarTag.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getManyFromEventInstanceAndTag(String eventInstanceId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getManyFromEventAndTag(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/events/$eventId/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags;
  static Future<PcoCollection<PcoCalendarTag>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarTag Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getManyFromTagGroupAndTag(String tagGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_instances/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getSingleFromEventInstanceAndTag(String eventInstanceId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/event_instances/$eventInstanceId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getSingleFromEventAndTag(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/events/$eventId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags;
  static Future<PcoCollection<PcoCalendarTag>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarTag Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags;
  static Future<PcoCollection<PcoCalendarTag>> getSingleFromTagGroupAndTag(String tagGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTag.canInclude;
    var url = '/calendar/v2/tag_groups/$tagGroupId/tags' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTag.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarEventInstance objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/event_instances
Future<PcoCollection<PcoCalendarEventInstance>> getEventInstances({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventInstance.canInclude;
  var url = '$apiEndpoint/event_instances';
  return PcoCollection.fromApiCall<PcoCalendarEventInstance>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/events
Future<PcoCollection<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarTagGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group
Future<PcoCollection<PcoCalendarTagGroup>> getTagGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
  var url = '$apiEndpoint/tag_group';
  return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:apiVersion);
}
    


}
