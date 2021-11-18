/// This file was generated on 2021-11-18T13:57:09.768529


import '../../pco.dart';

/// This class represents a PCO Services Zoom Object
/// 
/// Application: services
/// Id:          zoom
/// Type:        Zoom
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Describes a zoom level for an attachment
/// 
/// Example:
/// 
/// {"type":"Zoom","id":"1","attributes":{"aspect_ratio":1.42,"zoom_level":1.42,"x_offset":1.42,"y_offset":1.42},"relationships":{"person":{"data":{"type":"Person","id":"1"}},"attachable":{"data":{"type":"Attachment","id":"1"}},"attachment":{"data":{"type":"Attachment","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
class PcoServicesZoom extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'Zoom';
  static const String typeId = 'zoom';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'zoom-attachment-zooms';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kAspectRatio = 'aspect_ratio';
  static const kZoomLevel = 'zoom_level';
  static const kXOffset = 'x_offset';
  static const kYOffset = 'y_offset';


  // getters and setters
  @override
  List<String> get createAllowed => ['zoom_level','x_offset','y_offset','aspect_ratio'];
  @override
  List<String> get updateAllowed => ['zoom_level','x_offset','y_offset'];


  /// The aspect ratio of the device this zoom is for. It is rounded to the nearest 3 decimal places.
  double get aspectRatio => attributes[kAspectRatio] ?? 0;

  /// The percentage of the zoom. Must be a value between 1.0 and 5.0
  double get zoomLevel => attributes[kZoomLevel] ?? 0;

  /// The percentage of the document's width the zoomed document should be offset by horizontally.
  double get xOffset => attributes[kXOffset] ?? 0;

  /// The percentage of the document's height the zoomed document should be offset by vertically.
  double get yOffset => attributes[kYOffset] ?? 0;



  /// The aspect ratio of the device this zoom is for. It is rounded to the nearest 3 decimal places.
  set aspectRatio(double n) => attributes[kAspectRatio] = n;

  /// The percentage of the zoom. Must be a value between 1.0 and 5.0
  set zoomLevel(double n) => attributes[kZoomLevel] = n;

  /// The percentage of the document's width the zoomed document should be offset by horizontally.
  set xOffset(double n) => attributes[kXOffset] = n;

  /// The percentage of the document's height the zoomed document should be offset by vertically.
  set yOffset(double n) => attributes[kYOffset] = n;


  PcoServicesZoom() : super(pcoApplication, typeString);
  PcoServicesZoom.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesZoom Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms;
  static Future<List<PcoServicesZoom>> getManyFromAttachmentAndZoomIds(String attachmentId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesZoom> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/attachments/$attachmentId/zooms';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesZoom.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesZoom Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms;
  static Future<PcoServicesZoom?> getSingleFromAttachmentAndZoomIds(String attachmentId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesZoom?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/attachments/$attachmentId/zooms' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesZoom.fromJson(res.data);
    }
    return retval;
  }




}
