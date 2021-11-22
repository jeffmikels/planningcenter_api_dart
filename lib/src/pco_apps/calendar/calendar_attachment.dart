/// This file was generated on 2021-11-22T16:57:41.678007


import '../../pco.dart';

/// This class represents a PCO Calendar Attachment Object
/// 
/// Application: calendar
/// Id:          attachment
/// Type:        Attachment
/// ApiVersion:  2020-04-08
/// 
/// Description:
/// An uploaded file attached to an event.\n
/// 
/// Example:
/// 
/// {"type":"Attachment","id":"1","attributes":{"content_type":"string","created_at":"2000-01-01T12:00:00Z","description":"string","file_size":1,"name":"string","updated_at":"2000-01-01T12:00:00Z","url":"string"},"relationships":{"event":{"data":{"type":"Event","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/calendar/v2/attachments
/// 
/// possible includes with parameter ?include=a,b
/// @event: include associated event 
///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// @content_type (URLParameter), query on a specific content_type, example: ?where[content_type]=string
/// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
/// @description (URLParameter), query on a specific description, example: ?where[description]=string
/// @file_size (URLParameter), query on a specific file_size, example: ?where[file_size]=1
/// @name (URLParameter), query on a specific name, example: ?where[name]=string
/// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
/// possible orderings with parameter ?order=
/// @content_type (URLParameter), prefix with a hyphen (-content_type) to reverse the order
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
/// @file_size (URLParameter), prefix with a hyphen (-file_size) to reverse the order
/// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoCalendarAttachment extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Attachment';
  static const String kTypeId = 'attachment';
  static const String kApiVersion = '2020-04-08';
  static const String kShortestEdgeId = 'attachment-organization-attachments';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/attachments';

  /// possible includes with parameter ?include=a,b
  /// @event: include associated event 
  static List<String> get canInclude => ['event'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// @content_type (URLParameter), query on a specific content_type, example: ?where[content_type]=string
  /// @created_at (URLParameter), query on a specific created_at, example: ?where[created_at]=2000-01-01T12:00:00Z
  /// @description (URLParameter), query on a specific description, example: ?where[description]=string
  /// @file_size (URLParameter), query on a specific file_size, example: ?where[file_size]=1
  /// @name (URLParameter), query on a specific name, example: ?where[name]=string
  /// @updated_at (URLParameter), query on a specific updated_at, example: ?where[updated_at]=2000-01-01T12:00:00Z
  static List<String> get canQuery => ['content_type','created_at','description','file_size','name','updated_at'];

  /// possible orderings with parameter ?order=
  /// @content_type (URLParameter), prefix with a hyphen (-content_type) to reverse the order
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @description (URLParameter), prefix with a hyphen (-description) to reverse the order
  /// @file_size (URLParameter), prefix with a hyphen (-file_size) to reverse the order
  /// @name (URLParameter), prefix with a hyphen (-name) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['content_type','created_at','description','file_size','name','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

  // field mapping constants
  static const kContentType = 'content_type';
  static const kDescription = 'description';
  static const kFileSize = 'file_size';
  static const kName = 'name';
  static const kUrl = 'url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];


  /// MIME type of the attachment
  String get contentType => attributes[kContentType] ?? '';

  /// Description of the attachment
  String get description => attributes[kDescription] ?? '';

  /// File size in bytes
  int get fileSize => attributes[kFileSize] ?? 0;

  /// Set to the file name if not provided
  String get name => attributes[kName] ?? '';

  /// Path to where the attachment is stored
  String get url => attributes[kUrl] ?? '';




  PcoCalendarAttachment() : super(kPcoApplication, kTypeString);
  PcoCalendarAttachment.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoCalendarAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments;
  static Future<List<PcoCalendarAttachment>> getManyFromEventAndAttachmentIds(String eventId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/events/$eventId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarAttachment.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments;
  static Future<List<PcoCalendarAttachment>> getMany( {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoCalendarAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarAttachment.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments;
  static Future<PcoCalendarAttachment?> getSingleFromEventAndAttachmentIds(String eventId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/events/$eventId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarAttachment.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }
  /// will get a single PcoCalendarAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments;
  static Future<PcoCalendarAttachment?> getSingle( String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoCalendarAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCalendarAttachment.canInclude;
    var url = '/calendar/v2/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarAttachment.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
  query ??= PlanningCenterApiQuery();
  if (allIncludes) query.include = PcoCalendarEvent.canInclude;
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData, withIncludes: res.included));
    }
  }
  return retval;
}
    


}
