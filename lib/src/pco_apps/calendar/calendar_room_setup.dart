/// This file was generated on 2021-11-17T23:59:30.004497


import '../../pco.dart';

/// This class represents a PCO Calendar RoomSetup Object
/// 
/// Application: calendar
/// Id:          room_setup
/// Type:        RoomSetup
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A diagram and list of suggested resources useful for predefined room setups.\n
/// 
/// Example:
/// 
/// {"type":"RoomSetup","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","name":"string","updated_at":"2000-01-01T12:00:00Z","description":"string","diagram":"string","diagram_url":"string","diagram_thumbnail_url":"string"},"relationships":{"room_setup":{"data":{"type":"RoomSetup","id":"1"}},"resource_suggestions":{"data":[{"type":"ResourceSuggestion","id":"1"}]},"containing_resource":{"data":{"type":"Resource","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/room_setups
/// 
class PcoCalendarRoomSetup extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'RoomSetup';
  static const String typeId = 'room_setup';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'roomsetup-organization-room_setups';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/room_setups';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kName = 'name';
  static const kDescription = 'description';
  static const kDiagram = 'diagram';
  static const kDiagramUrl = 'diagram_url';
  static const kDiagramThumbnailUrl = 'diagram_thumbnail_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// The name of the room setup
  String get name => attributes[kName] ?? '';

  /// A description of the room setup
  String get description => attributes[kDescription] ?? '';

  /// An object containing `url` and `thumbnail`.
  ///`url` is path to where room setup is stored.
  ///`thumbnail` contains `url` path to where thumbnail is stored.
  String get diagram => attributes[kDiagram] ?? '';

  /// Path to where room setup is stored
  String get diagramUrl => attributes[kDiagramUrl] ?? '';

  /// Path to where thumbnail version of room setup is stored
  String get diagramThumbnailUrl => attributes[kDiagramThumbnailUrl] ?? '';




  PcoCalendarRoomSetup() : super(pcoApplication, typeString);
  PcoCalendarRoomSetup.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarRoomSetup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup;
  static Future<List<PcoCalendarRoomSetup>> getManyFromEventResourceRequestAndRoomSetupIds(String eventResourceRequestId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarRoomSetup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarRoomSetup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarRoomSetup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups;
  static Future<List<PcoCalendarRoomSetup>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarRoomSetup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/room_setups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarRoomSetup.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarRoomSetup Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups;
  static Future<List<PcoCalendarRoomSetup>> getManyFromResourceAndRoomSetupIds(String resourceId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarRoomSetup> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/room_setups';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarRoomSetup.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarRoomSetup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/room_setup;
  static Future<PcoCalendarRoomSetup?> getSingleFromEventResourceRequestAndRoomSetupIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarRoomSetup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/room_setup' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarRoomSetup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarRoomSetup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups;
  static Future<PcoCalendarRoomSetup?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarRoomSetup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/room_setups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarRoomSetup.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarRoomSetup Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups;
  static Future<PcoCalendarRoomSetup?> getSingleFromResourceAndRoomSetupIds(String resourceId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarRoomSetup?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/resources/$resourceId/room_setups' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarRoomSetup.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarResource objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource
Future<List<PcoCalendarResource>> getResourcesContainingResource({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResource> retval = [];
  var url = '$apiEndpoint/containing_resource';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResource.fromJson(itemData));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceSuggestion objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions
Future<List<PcoCalendarResourceSuggestion>> getResourceSuggestions({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarResourceSuggestion> retval = [];
  var url = '$apiEndpoint/resource_suggestions';
  var res = await api.call(url, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceSuggestion.fromJson(itemData));
    }
  }
  return retval;
}
    

}
