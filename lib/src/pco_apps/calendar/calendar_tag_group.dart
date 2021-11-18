/// This file was generated on 2021-11-18T13:57:10.127780


import '../../pco.dart';

/// This class represents a PCO Calendar TagGroup Object
/// 
/// Application: calendar
/// Id:          tag_group
/// Type:        TagGroup
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A grouping of tags for organizational purposes.\n
/// 
/// Example:
/// 
/// {"type":"TagGroup","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","name":"string","updated_at":"2000-01-01T12:00:00Z","required":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/tag_groups
/// 
class PcoCalendarTagGroup extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'TagGroup';
  static const String typeId = 'tag_group';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'taggroup-organization-tag_groups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tag_groups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kRequired = 'required';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// The name of the tag group
  String get name => attributes[kName] ?? '';

  /// - `true` indicates tag from this tag group must be applied when creating an event
  bool get isRequired => attributes[kRequired] == true;




  PcoCalendarTagGroup() : super(pcoApplication, typeString);
  PcoCalendarTagGroup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups;
  static Future<List<PcoCalendarTagGroup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTagGroup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<List<PcoCalendarTagGroup>> getManyFromTagAndTagGroupIds(String tagId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags/$tagId/tag_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTagGroup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups;
  static Future<PcoCalendarTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTagGroup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<PcoCalendarTagGroup?> getSingleFromTagAndTagGroupIds(String tagId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/tags/$tagId/tag_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTagGroup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
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
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
Future<List<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarTag> retval = [];
  var url = '$apiEndpoint/tags';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarTag.fromJson(itemData));
    }
  }
  return retval;
}
    

}
