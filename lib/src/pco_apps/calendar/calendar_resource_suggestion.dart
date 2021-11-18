/// This file was generated on 2021-11-18T13:57:10.125606


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
class PcoCalendarResourceSuggestion extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'ResourceSuggestion';
  static const String typeId = 'resource_suggestion';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'resourcesuggestion-roomsetup-resource_suggestions';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kQuantity = 'quantity';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// How many resources should be requested
  int get quantity => attributes[kQuantity] ?? 0;




  PcoCalendarResourceSuggestion() : super(pcoApplication, typeString);
  PcoCalendarResourceSuggestion.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarResourceSuggestion Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions;
  static Future<List<PcoCalendarResourceSuggestion>> getManyFromRoomSetupAndResourceSuggestionIds(String roomSetupId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarResourceSuggestion> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResourceSuggestion.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResourceSuggestion Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions;
  static Future<PcoCalendarResourceSuggestion?> getSingleFromRoomSetupAndResourceSuggestionIds(String roomSetupId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarResourceSuggestion?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResourceSuggestion.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource
Future<List<PcoCalendarResource>> getResources({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/resource';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    

}
