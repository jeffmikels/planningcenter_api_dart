/// This file was generated on 2021-11-18T13:57:10.106599


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
class PcoCalendarAttachment extends PcoResource {
  static const String pcoApplication = 'calendar';
  static const String typeString = 'Attachment';
  static const String typeId = 'attachment';
  static const String apiVersion = '2020-04-08';
  static const String shortestEdgeId = 'attachment-organization-attachments';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/calendar/v2/attachments';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

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




  PcoCalendarAttachment() : super(pcoApplication, typeString);
  PcoCalendarAttachment.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoCalendarAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments;
  static Future<List<PcoCalendarAttachment>> getManyFromEventAndAttachmentIds(String eventId, {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarAttachment.fromJson(itemData));
      }
    }
    return retval;
  }
  /// will get many PcoCalendarAttachment Objects
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments;
  static Future<List<PcoCalendarAttachment>> getMany( {PlanningCenterApiQuery? query}) async {
    List<PcoCalendarAttachment> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/attachments';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoCalendarAttachment.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoCalendarAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/events/1/attachments;
  static Future<PcoCalendarAttachment?> getSingleFromEventAndAttachmentIds(String eventId, String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/events/$eventId/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarAttachment.fromJson(res.data);
    }
    return retval;
  }
  /// will get a single PcoCalendarAttachment Object
  /// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments;
  static Future<PcoCalendarAttachment?> getSingle( String id, {PlanningCenterApiQuery? query}) async {
    PcoCalendarAttachment?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/calendar/v2/attachments' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoCalendarAttachment.fromJson(res.data);
    }
    return retval;
  }


/// will get many PcoCalendarEvent objects
/// using a path like this: https://api.planningcenteronline.com/calendar/v2/attachments/1/event
Future<List<PcoCalendarEvent>> getEvents({PlanningCenterApiQuery? query}) async {
  query ??= PlanningCenterApiQuery();
  List<PcoCalendarEvent> retval = [];
  var url = '$apiEndpoint/event';
  var res = await api.call(url, query: query, apiVersion:apiVersion);
  if (!res.isError) {
    for (var itemData in res.data) {
      retval.add(PcoCalendarEvent.fromJson(itemData));
    }
  }
  return retval;
}
    

}
