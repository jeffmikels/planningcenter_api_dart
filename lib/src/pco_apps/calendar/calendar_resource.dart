/// This file was generated on 2021-11-25T00:07:20.711729


import '../../pco.dart';

/// This class represents a PCO Calendar Resource Object
/// 
/// Application: calendar
/// Id:          resource
/// Type:        Resource
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// A room or resource that can be requested for use as part of\nan event.\n
/// 
/// Example:
/// 
/// {"type":"Resource","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","kind":"string","name":"string","serial_number":"string","updated_at":"2000-01-01T12:00:00Z","description":"string","expires_at":"2000-01-01T12:00:00Z","home_location":"string","image":"string","quantity":1,"path_name":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/resources
/// 
/// possible includes with parameter ?include=a,b
/// @resource_approval_groups: include associated resource_approval_groups 
/// @resource_folder: include associated resource_folder 
/// @resource_questions: include associated resource_questions 
/// @room_setups: include associated room_setups 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @kind (URLParameter), query on a specific kind, example: ?where[kind]=string
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @path_name (URLParameter), query on a specific path_name, example: ?where[path_name]=string
/// @serial_number (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @expires_at (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCalendarResource extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Resource';
  static const String kTypeId = 'resource';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'resource-organization-resources';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/resources';

  /// possible includes with parameter ?include=a,b
  /// @resource_approval_groups: include associated resource_approval_groups 
  /// @resource_folder: include associated resource_folder 
  /// @resource_questions: include associated resource_questions 
  /// @room_setups: include associated room_setups 
  static List<String> get canInclude => ['resource_approval_groups','resource_folder','resource_questions','room_setups'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @kind (URLParameter), query on a specific kind, example: ?where[kind]=string
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @path_name (URLParameter), query on a specific path_name, example: ?where[path_name]=string
  /// @serial_number (URLParameter), query on a specific serial_number, example: ?where[serial_number]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['created_at','kind','name','path_name','serial_number','updated_at'];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @expires_at (URLParameter), prefix with a hyphen (-expires_at) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','expires_at','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kKind = 'kind';
  static const kName = 'name';
  static const kSerialNumber = 'serial_number';
  static const kDescription = 'description';
  static const kExpiresAt = 'expires_at';
  static const kHomeLocation = 'home_location';
  static const kImage = 'image';
  static const kQuantity = 'quantity';
  static const kPathName = 'path_name';


  // getters and setters
  @override
  List<String> get createAllowed => ['home_location','name','quantity'];
  @override
  List<String> get updateAllowed => ['home_location','name','quantity'];


  /// The type of resource, can either be `Room` or `Resource`
  String get kind => attributes[kKind] ?? '';

  /// The name of the room or resource
  String get name => attributes[kName] ?? '';

  /// The serial number of the resource
  String get serialNumber => attributes[kSerialNumber] ?? '';

  /// Description of the room or resource
  String get description => attributes[kDescription] ?? '';

  /// UTC time at which the resource expires
  DateTime get expiresAt => DateTime.parse(attributes[kExpiresAt] ?? '');

  /// Where the resource is normally kept
  String get homeLocation => attributes[kHomeLocation] ?? '';

  /// Path to where resource image is stored
  String get image => attributes[kImage] ?? '';

  /// The quantity of the resource
  int get quantity => attributes[kQuantity] ?? 0;

  /// A string representing the location of the resource if it is nested within a folder.
  ///Each parent folder is seperated by `/`
  String get pathName => attributes[kPathName] ?? '';



  /// The name of the room or resource
  set name(String s) => attributes[kName] = s;

  /// Where the resource is normally kept
  set homeLocation(String s) => attributes[kHomeLocation] = s;

  /// The quantity of the resource
  set quantity(int n) => attributes[kQuantity] = n;


  PcoCalendarResource() : super(kPcoApplication, kTypeString);
  PcoCalendarResource.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromConflict(String conflictId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromEventResourceRequest(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources;
  static Future<PcoCollection<PcoCalendarResource>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromResourceApprovalGroupAndResource(String resourceApprovalGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromResourceBooking(String resourceBookingId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromResourceFolderAndResource(String resourceFolderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromRoomSetupAndResourceSuggestion(String roomSetupId,String resourceSuggestionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource;
  static Future<PcoCollection<PcoCalendarResource>> getManyFromRoomSetupAndContainingResource(String roomSetupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromConflict(String conflictId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resource' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromEventResourceRequest(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources;
  static Future<PcoCollection<PcoCalendarResource>> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resources' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromResourceApprovalGroupAndResource(String resourceApprovalGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromResourceBooking(String resourceBookingId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromResourceFolderAndResource(String resourceFolderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromRoomSetupAndResourceSuggestion(String roomSetupId,String resourceSuggestionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource;
  static Future<PcoCollection<PcoCalendarResource>> getSingleFromRoomSetupAndContainingResource(String roomSetupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource' + '/$id';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }


/// will get many PcoCalendarConflict objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
Future<PcoCollection<PcoCalendarConflict>> getConflicts({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarConflict.canInclude;
  var url = '$apiEndpoint/conflicts';
  return PcoCollection.fromApiCall<PcoCalendarConflict>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
Future<PcoCollection<PcoCalendarEventResourceRequest>> getEventResourceRequests({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEventResourceRequest.canInclude;
  var url = '$apiEndpoint/event_resource_requests';
  return PcoCollection.fromApiCall<PcoCalendarEventResourceRequest>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceApprovalGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
Future<PcoCollection<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
  var url = '$apiEndpoint/resource_approval_groups';
  return PcoCollection.fromApiCall<PcoCalendarResourceApprovalGroup>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
Future<PcoCollection<PcoCalendarResourceBooking>> getResourceBookings({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceBooking.canInclude;
  var url = '$apiEndpoint/resource_bookings';
  return PcoCollection.fromApiCall<PcoCalendarResourceBooking>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceFolder objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
Future<PcoCollection<PcoCalendarResourceFolder>> getResourceFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
  var url = '$apiEndpoint/resource_folder';
  return PcoCollection.fromApiCall<PcoCalendarResourceFolder>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarResourceQuestion objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
Future<PcoCollection<PcoCalendarResourceQuestion>> getResourceQuestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
  var url = '$apiEndpoint/resource_questions';
  return PcoCollection.fromApiCall<PcoCalendarResourceQuestion>(url, query: query, apiVersion:apiVersion);
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
Future<PcoCollection<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
  var url = '$apiEndpoint/room_setups';
  return PcoCollection.fromApiCall<PcoCalendarRoomSetup>(url, query: query, apiVersion:apiVersion);
}
    


}
