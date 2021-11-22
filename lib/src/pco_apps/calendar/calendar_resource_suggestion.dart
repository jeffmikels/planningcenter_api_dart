/// This file was generated on 2021-11-22T16:57:41.703082


import '../../pco.dart';

/// This class represents a PCO Calendar ResourceSuggestion Object
/// 
/// Application: calendar
/// Id:          resource_suggestion
/// Type:        ResourceSuggestion
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A resource and quantity suggested by a room setup.\n
/// 
/// Example:
/// 
/// {"type":"ResourceSuggestion","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","quantity":1,"updated_at":"2000-01-01T12:00:00Z"},"relationships":{"resource":{"data":{"type":"Resource","id":"1"}},"room_setup":{"data":{"type":"RoomSetup","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
/// 
/// possible includes with parameter ?include=a,b
/// @resource: include associated resource 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoCalendarResourceSuggestion extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'ResourceSuggestion';
  static const String kTypeId = 'resource_suggestion';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resourcesuggestion-roomsetup-resource_suggestions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';

  /// possible includes with parameter ?include=a,b
  /// @resource: include associated resource 
  static List<String> get canInclude => ['resource'];

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
  static const kQuantity = 'quantity';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// How many resources should be requested
  int get quantity => attributes[kQuantity] ?? 0;




  PcoCalendarResourceSuggestion() : super(kPcoApplication, kTypeString);
  PcoCalendarResourceSuggestion.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarResourceSuggestion Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions;
  static Future<List<PcoCalendarResourceSuggestion>> getManyFromRoomSetupAndResourceSuggestionIds(String roomSetupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResourceSuggestion> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceSuggestion.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceSuggestion Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions;
  static Future<PcoCalendarResourceSuggestion?> getSingleFromRoomSetupAndResourceSuggestionIds(String roomSetupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResourceSuggestion?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResourceSuggestion.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceSuggestion.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResource.canInclude;
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
