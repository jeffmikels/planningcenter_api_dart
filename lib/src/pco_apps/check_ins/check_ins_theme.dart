/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.668102
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


import '../../pco.dart';

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
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/check-ins/v2/themes';
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
  String get imageThumbnail => attributes[kImageThumbnail] ?? '';
  String get name => attributes[kName] ?? '';
  String get color => attributes[kColor] ?? '';
  String get textColor => attributes[kTextColor] ?? '';
  String get image => attributes[kImage] ?? '';
  String get backgroundColor => attributes[kBackgroundColor] ?? '';
  String get mode => attributes[kMode] ?? '';    


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoCheckInsTheme.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoCheckInsTheme.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/themes`
  static Future<PcoCollection<PcoCheckInsTheme>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    var url = '/check-ins/v2/themes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url, query: query, apiVersion:kApiVersion);
  }


  /// Will get a collection of [PcoCheckInsTheme] objects (expecting many)
  /// using a path like this: `/check-ins/v2/stations/$stationId/theme`
  static Future<PcoCollection<PcoCheckInsTheme>> getFromStation(String stationId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoCheckInsTheme.canInclude;
    var url = '/check-ins/v2/stations/$stationId/theme';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsTheme>(url, query: query, apiVersion:kApiVersion);
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
