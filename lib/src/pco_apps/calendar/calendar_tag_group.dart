/// This file was generated on 2021-11-25T00:07:20.720212


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
  static Future<PcoCollection<PcoCalendarTagGroup>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tag_groups';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarTagGroup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<PcoCollection<PcoCalendarTagGroup>> getManyFromTag(String tagId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tags/$tagId/tag_group';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups;
  static Future<PcoCollection<PcoCalendarTagGroup>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tag_groups' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTagGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarTagGroup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/tags/1/tag_group;
  static Future<PcoCollection<PcoCalendarTagGroup>> getSingleFromTag(String tagId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarTagGroup.canInclude;
    var url = '/calendar/v2/tags/$tagId/tag_group' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarTagGroup>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarTagGroup.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/events
Future<PcoCollection<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  var url = '$apiEndpoint/events';
  return PcoCollection.fromApiCall<PcoCalendarEvent>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarTag objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/tag_groups/1/tags
Future<PcoCollection<PcoCalendarTag>> getTags({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarTag.canInclude;
  var url = '$apiEndpoint/tags';
  return PcoCollection.fromApiCall<PcoCalendarTag>(url, query: query, apiVersion:apiVersion);
}
    


}
