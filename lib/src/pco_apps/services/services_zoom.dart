/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-07T15:35:47.959861
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Services Zoom Object
/// 
/// - Application:        services
/// - Id:                 zoom
/// - Type:               Zoom
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
/// Description:
/// Describes a zoom level for an attachment
/// 
/// Example:
/// ```json
/// {
///   "type": "Zoom",
///   "id": "1",
///   "attributes": {
///     "aspect_ratio": 1.42,
///     "zoom_level": 1.42,
///     "x_offset": 1.42,
///     "y_offset": 1.42
///   },
///   "relationships": {
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "attachable": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     },
///     "attachment": {
///       "data": {
///         "type": "Attachment",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// NONE
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// NONE
/// 
/// All Inbound Edges:
/// - `zoom-attachment-zooms`: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// 
/// All Actions:
/// NONE
///
class PcoServicesZoom extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Zoom';
  static const String kTypeId = 'zoom';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'zoom-attachment-zooms';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// 
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// 
  static List<String> get canOrderBy => [];

  // By using overridden getters, the parent class can call the getter and will get the results from the
  // child class. This lets the parent access the static variables of the child class.

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get defaultPathTemplate => kDefaultPathTemplate;

  @override
  String get apiVersion => kApiVersion;

  String? _apiPathOverride;

  @override
  String get apiPath => links['self'] ?? _apiPathOverride ?? super.apiPath;

  // field mapping constants
  static const kId = 'id';
  static const kAspectRatio = 'aspect_ratio';
  static const kZoomLevel = 'zoom_level';
  static const kXOffset = 'x_offset';
  static const kYOffset = 'y_offset';


  // getters and setters
  @override
  List<String> get createAllowed => ['zoom_level','x_offset','y_offset','aspect_ratio'];

  @override
  List<String> get updateAllowed => ['zoom_level','x_offset','y_offset'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  double get aspectRatio => attributes[kAspectRatio] ?? 0;
  double get zoomLevel => attributes[kZoomLevel] ?? 0;
  double get xOffset => attributes[kXOffset] ?? 0;
  double get yOffset => attributes[kYOffset] ?? 0;
  

  // setters for object attributes

  
  /// The aspect ratio of the device this zoom is for. It is rounded to the nearest 3 decimal places.
  set aspectRatio(double n) => attributes[kAspectRatio] = n;
  
  /// The percentage of the zoom. Must be a value between 1.0 and 5.0
  set zoomLevel(double n) => attributes[kZoomLevel] = n;
  
  /// The percentage of the document's width the zoomed document should be offset by horizontally.
  set xOffset(double n) => attributes[kXOffset] = n;
  
  /// The percentage of the document's height the zoomed document should be offset by vertically.
  set yOffset(double n) => attributes[kYOffset] = n;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesZoom._() : super(kPcoApplication, kTypeString);
  PcoServicesZoom.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// Create a new [PcoServicesZoom] object based on this request endpoint:
  /// `https://api.planningcenteronline.com/services/v2/attachments/$attachmentId/zooms`
  /// 
  /// NOTE: Creating an instance of a class this way does not save it on the server
  /// until `save()` is called on the object.
  factory PcoServicesZoom(String attachmentId) {
    return PcoServicesZoom._()
      .._apiPathOverride = 'https://api.planningcenteronline.com/services/v2/attachments/$attachmentId/zooms';
  }


  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `/services/v2/attachments/$attachmentId/zooms`
  static Future<PcoCollection<PcoServicesZoom>> getFromAttachment(String attachmentId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesZoom.canInclude;
    var url = '/services/v2/attachments/$attachmentId/zooms';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesZoom>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges



  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
