/// This file was generated on 2021-11-19T12:10:42.742794


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
/// possible includes with parameter ?include=a,b
/// @events: include associated events 
/// @tags: include associated tags 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
///
class PcoCalendarTagGroup extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'TagGroup';
  static const String kTypeId = 'tag_group';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'taggroup-organization-tag_groups';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/tag_groups';

  /// possible includes with parameter ?include=a,b
  /// @events: include associated events 
  /// @tags: include associated tags 
  static List<String> get canInclude => ['events','tags'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  static List<String> get canOrderBy => ['name'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoCalendarTagGroup() : super(kPcoApplication, kTypeString);
  PcoCalendarTagGroup.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups;
  static Future<List<PcoCalendarTagGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tag_groups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTagGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<List<PcoCalendarTagGroup>> getManyFromTagAndTagGroupIds(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarTagGroup> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tags/$tagId/tag_group';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarTagGroup.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups;
  static Future<PcoCalendarTagGroup?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tag_groups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTagGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<PcoCalendarTagGroup?> getSingleFromTagAndTagGroupIds(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarTagGroup?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tags/$tagId/tag_group' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarTagGroup.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
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
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
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
