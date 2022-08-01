/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T15:11:03.831184
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsThemeOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsThemeFilter { none }

/// Creates a [PcoCheckInsThemeQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsThemeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsThemeOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsThemeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsThemeFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsThemeFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsThemeQuery({
    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super();
}

/// This class represents a PCO CheckIns Theme Object
///
/// - Application:        check-ins
/// - Id:                 theme
/// - Type:               Theme
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/themes
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsTheme.fromJson()` constructor.
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
/// A custom style which may be applied to stations.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `imageThumbnail` (ro) -> PCO: `image_thumbnail`
/// - `name` (ro) -> PCO: `name`
/// - `color` (ro) -> PCO: `color`
/// - `textColor` (ro) -> PCO: `text_color`
/// - `image` (ro) -> PCO: `image`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `backgroundColor` (ro) -> PCO: `background_color`
/// - `mode` (ro) -> PCO: `mode`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `theme-organization-themes`: https://api.planningcenteronline.com/check-ins/v2/themes
/// - `theme-station-theme`: https://api.planningcenteronline.com/check-ins/v2/stations/1/theme
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Theme",
///   "id": "1",
///   "attributes": {
///     "image_thumbnail": "string",
///     "name": "string",
///     "color": "string",
///     "text_color": "string",
///     "image": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "background_color": "string",
///     "mode": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsTheme extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Theme';
  static const String kTypeId = 'theme';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/themes';
  static const String kCreatePathTemplate = 'null';

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
  static const kImageThumbnail = 'image_thumbnail';
  static const kName = 'name';
  static const kColor = 'color';
  static const kTextColor = 'text_color';
  static const kImage = 'image';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kBackgroundColor = 'background_color';
  static const kMode = 'mode';

  // getters and setters
  @override
  List<String> get createAllowed => [];

  @override
  List<String> get updateAllowed => [];

  @override
  bool get canCreate => false;

  @override
  bool get canUpdate => false;

  @override
  bool get canDestroy => false;

  // getters for object attributes
  String get imageThumbnail => _attributes[kImageThumbnail] ?? '';
  String get name => _attributes[kName] ?? '';
  String get color => _attributes[kColor] ?? '';
  String get textColor => _attributes[kTextColor] ?? '';
  String get image => _attributes[kImage] ?? '';
  String get backgroundColor => _attributes[kBackgroundColor] ?? '';
  String get mode => _attributes[kMode] ?? '';

  // Class Constructors
  PcoCheckInsTheme.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsTheme.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsTheme] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCheckInsTheme(
      {String? id,
      String? imageThumbnail,
      String? name,
      String? color,
      String? textColor,
      String? image,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? backgroundColor,
      String? mode,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsTheme.empty();
    obj._id = id;
    if (imageThumbnail != null)
      obj._attributes['image_thumbnail'] = imageThumbnail;
    if (name != null) obj._attributes['name'] = name;
    if (color != null) obj._attributes['color'] = color;
    if (textColor != null) obj._attributes['text_color'] = textColor;
    if (image != null) obj._attributes['image'] = image;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (backgroundColor != null)
      obj._attributes['background_color'] = backgroundColor;
    if (mode != null) obj._attributes['mode'] = mode;

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

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/themes`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsTheme>> get({
    String? id,
    PcoCheckInsThemeQuery? query,
  }) async {
    query ??= PcoCheckInsThemeQuery();

    var url = '/check-ins/v2/themes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/theme`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsTheme>> getFromStation(
    String stationId, {
    String? id,
    PcoCheckInsThemeQuery? query,
  }) async {
    query ??= PcoCheckInsThemeQuery();

    var url = '/check-ins/v2/stations/$stationId/theme';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
