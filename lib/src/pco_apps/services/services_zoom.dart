/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.617741
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services Zoom Object
///
/// - Application:        services
/// - Id:                 zoom
/// - Type:               Zoom
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/attachments/1/zooms
/// - Create Endpoint:    https://api.planningcenteronline.com/services/v2/attachments/1/zooms
///
/// ## Instantiation
/// - Create a new instance using the `PcoServicesZoom()` constructor
/// - Instantiate from existing `JSON` data using the `PcoServicesZoom.fromJson()` constructor.
/// - Manually create an object using the `PcoServicesZoom.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///
/// ## Description
/// Describes a zoom level for an attachment
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `aspectRatio` (rw) -> PCO: `aspect_ratio`
/// - `zoomLevel` (rw) -> PCO: `zoom_level`
/// - `xOffset` (rw) -> PCO: `x_offset`
/// - `yOffset` (rw) -> PCO: `y_offset`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// NONE
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// NONE
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `zoom-attachment-zooms`: https://api.planningcenteronline.com/services/v2/attachments/1/zooms
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoServicesZoom extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Zoom';
  static const String kTypeId = 'zoom';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/services/v2/attachments/1/zooms';

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
  String get createPathTemplate => kCreatePathTemplate;

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
  List<String> get createAllowed =>
      ['zoom_level', 'x_offset', 'y_offset', 'aspect_ratio'];

  @override
  List<String> get updateAllowed => ['zoom_level', 'x_offset', 'y_offset'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  double get aspectRatio => _attributes[kAspectRatio] ?? 0;
  double get zoomLevel => _attributes[kZoomLevel] ?? 0;
  double get xOffset => _attributes[kXOffset] ?? 0;
  double get yOffset => _attributes[kYOffset] ?? 0;

  // setters for object attributes

  /// The aspect ratio of the device this zoom is for. It is rounded to the nearest 3 decimal places.

  /// pass `null` to remove key from attributes
  set aspectRatio(double? x) => (x == null)
      ? _attributes.remove(kAspectRatio)
      : _attributes[kAspectRatio] = x;

  /// The percentage of the zoom. Must be a value between 1.0 and 5.0

  /// pass `null` to remove key from attributes
  set zoomLevel(double? x) => (x == null)
      ? _attributes.remove(kZoomLevel)
      : _attributes[kZoomLevel] = x;

  /// The percentage of the document's width the zoomed document should be offset by horizontally.

  /// pass `null` to remove key from attributes
  set xOffset(double? x) =>
      (x == null) ? _attributes.remove(kXOffset) : _attributes[kXOffset] = x;

  /// The percentage of the document's height the zoomed document should be offset by vertically.

  /// pass `null` to remove key from attributes
  set yOffset(double? x) =>
      (x == null) ? _attributes.remove(kYOffset) : _attributes[kYOffset] = x;

  // Class Constructors
  PcoServicesZoom.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoServicesZoom.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesZoom] object using this endpoint: `https://api.planningcenteronline.com/services/v2/attachments/$attachmentId/zooms`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `zoomLevel`, `xOffset`, `yOffset`, `aspectRatio`
  /// - FIELDS USED WHEN UPDATING: `zoomLevel`, `xOffset`, `yOffset`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoServicesZoom(
      {required String attachmentId,
      String? id,
      double? aspectRatio,
      double? zoomLevel,
      double? xOffset,
      double? yOffset,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesZoom.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/services/v2/attachments/$attachmentId/zooms';
    if (aspectRatio != null) obj._attributes['aspect_ratio'] = aspectRatio;
    if (zoomLevel != null) obj._attributes['zoom_level'] = zoomLevel;
    if (xOffset != null) obj._attributes['x_offset'] = xOffset;
    if (yOffset != null) obj._attributes['y_offset'] = yOffset;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesZoom] objects (expecting many)
  /// using a path like this: `/services/v2/attachments/$attachmentId/zooms`
  static Future<PcoCollection<PcoServicesZoom>> getFromAttachment(
    String attachmentId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/services/v2/attachments/$attachmentId/zooms';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesZoom>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
