/// This file was generated on 2021-11-22T16:57:41.695365


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
  static Future<List<PcoCalendarResource>> getManyFromConflictAndResourceIds(String conflictId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resource';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource;
  static Future<List<PcoCalendarResource>> getManyFromEventResourceRequestAndResourceIds(String eventResourceRequestId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources;
  static Future<List<PcoCalendarResource>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources;
  static Future<List<PcoCalendarResource>> getManyFromResourceApprovalGroupAndResourceIds(String resourceApprovalGroupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource;
  static Future<List<PcoCalendarResource>> getManyFromResourceBookingAndResourceIds(String resourceBookingId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources;
  static Future<List<PcoCalendarResource>> getManyFromResourceFolderAndResourceIds(String resourceFolderId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource;
  static Future<List<PcoCalendarResource>> getManyFromRoomSetupAndResourceSuggestionAndResourceIds(String roomSetupId,String resourceSuggestionId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarResource Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource;
  static Future<List<PcoCalendarResource>> getManyFromRoomSetupAndContainingResourceIds(String roomSetupId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarResource> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarResource.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource;
  static Future<PcoCalendarResource?> getSingleFromConflictAndResourceIds(String conflictId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/conflicts/$conflictId/resource' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/event_resource_requests/1/resource;
  static Future<PcoCalendarResource?> getSingleFromEventResourceRequestAndResourceIds(String eventResourceRequestId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/event_resource_requests/$eventResourceRequestId/resource' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources;
  static Future<PcoCalendarResource?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_approval_groups/1/resources;
  static Future<PcoCalendarResource?> getSingleFromResourceApprovalGroupAndResourceIds(String resourceApprovalGroupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_approval_groups/$resourceApprovalGroupId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_bookings/1/resource;
  static Future<PcoCalendarResource?> getSingleFromResourceBookingAndResourceIds(String resourceBookingId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_bookings/$resourceBookingId/resource' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/resource_folders/1/resources;
  static Future<PcoCalendarResource?> getSingleFromResourceFolderAndResourceIds(String resourceFolderId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/resource_folders/$resourceFolderId/resources' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/resource_suggestions/1/resource;
  static Future<PcoCalendarResource?> getSingleFromRoomSetupAndResourceSuggestionAndResourceIds(String roomSetupId,String resourceSuggestionId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/resource_suggestions/$resourceSuggestionId/resource' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarResource Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/room_setups/1/containing_resource;
  static Future<PcoCalendarResource?> getSingleFromRoomSetupAndContainingResourceIds(String roomSetupId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarResource?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarResource.canInclude;
    var url = '/calendar/v2/room_setups/$roomSetupId/containing_resource' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarResource.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarConflict objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
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
    
/// will get many PcoCalendarEventResourceRequest objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/event_resource_requests
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
    
/// will get many PcoCalendarResourceApprovalGroup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_approval_groups
Future<List<PcoCalendarResourceApprovalGroup>> getResourceApprovalGroups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceApprovalGroup.canInclude;
  List<PcoCalendarResourceApprovalGroup> retval = [];
  var url = '$apiEndpoint/resource_approval_groups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceApprovalGroup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceBooking objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_bookings
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
    
/// will get many PcoCalendarResourceFolder objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_folder
Future<List<PcoCalendarResourceFolder>> getResourceFolders({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceFolder.canInclude;
  List<PcoCalendarResourceFolder> retval = [];
  var url = '$apiEndpoint/resource_folder';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceFolder.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarResourceQuestion objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/resource_questions
Future<List<PcoCalendarResourceQuestion>> getResourceQuestions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarResourceQuestion.canInclude;
  List<PcoCalendarResourceQuestion> retval = [];
  var url = '$apiEndpoint/resource_questions';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarResourceQuestion.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    
/// will get many PcoCalendarRoomSetup objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/resources/1/room_setups
Future<List<PcoCalendarRoomSetup>> getRoomSetups({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarRoomSetup.canInclude;
  List<PcoCalendarRoomSetup> retval = [];
  var url = '$apiEndpoint/room_setups';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarRoomSetup.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
