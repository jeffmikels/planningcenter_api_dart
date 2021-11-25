/// This file was generated on 2021-11-25T00:07:20.310911


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesZoom extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Zoom';
  static const String kTypeId = 'zoom';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'zoom-attachment-zooms';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

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


  PcoServicesZoom() : super(kPcoApplication, kTypeString);
  PcoServicesZoom.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesZoom Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms;
  static Future<PcoCollection<PcoServicesZoom>> getManyFromAttachmentAndZoom(String attachmentId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    var url = '/services/v2/attachments/$attachmentId/zooms';
    return PcoCollection.fromApiCall<PcoServicesZoom>(url, query: query, apiVersion:kApiVersion);
  }


  /// will get a single PcoServicesZoom Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/attachments/1/zooms;
  static Future<PcoCollection<PcoServicesZoom>> getSingleFromAttachmentAndZoom(String attachmentId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    var url = '/services/v2/attachments/$attachmentId/zooms' + '/$id';
    return PcoCollection.fromApiCall<PcoServicesZoom>(url, query: query, apiVersion:kApiVersion);
    // if (res.isError) return retval;
    // if (res.data is! List) {
    //   retval = PcoServicesZoom.fromJson(res.data, withIncludes: res.included);
    // }
    // return retval;
  }





}
