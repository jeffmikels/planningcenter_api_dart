/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:38.737619
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
part of pco;

/// This class represents a PCO Services Series Object
///
/// - Application:        services
/// - Id:                 series
/// - Type:               Series
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/series
/// - Create Endpoint:    NONE
///
/// ## Description
/// A Series can be specified for each plan to tie plans with similar messages together, even across Service Types.
///
/// *Note*: A series is not created until artwork is added from the plan.  You can use `series_title` included in `Plan` attributes to get titles for series without artwork.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `artworkFileName` (ro) -> PCO: `artwork_file_name`
/// - `artworkContentType` (ro) -> PCO: `artwork_content_type`
/// - `artworkFileSize` (ro) -> PCO: `artwork_file_size`
/// - `title` (ro) -> PCO: `title`
/// - `artworkForDashboard` (ro) -> PCO: `artwork_for_dashboard`
/// - `artworkForMobile` (ro) -> PCO: `artwork_for_mobile`
/// - `artworkForPlan` (ro) -> PCO: `artwork_for_plan`
/// - `artworkOriginal` (ro) -> PCO: `artwork_original`
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
/// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `plan-series-plans`: https://api.planningcenteronline.com/services/v2/series/1/plans
///
/// Inbound Edges:
/// - `series-organization-series`: https://api.planningcenteronline.com/services/v2/series
/// - `series-plan-series`: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/series
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Series",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "artwork_file_name": "string",
///     "artwork_content_type": "string",
///     "artwork_file_size": 1,
///     "title": "string",
///     "artwork_for_dashboard": "string",
///     "artwork_for_mobile": "string",
///     "artwork_for_plan": "string",
///     "artwork_original": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesSeries extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'Series';
  static const String kTypeId = 'series';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/series';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `title`: (URLParameter), query on a specific title, example: ?where[title]=string
  static List<String> get canQuery => ['title'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kArtworkFileName = 'artwork_file_name';
  static const kArtworkContentType = 'artwork_content_type';
  static const kArtworkFileSize = 'artwork_file_size';
  static const kTitle = 'title';
  static const kArtworkForDashboard = 'artwork_for_dashboard';
  static const kArtworkForMobile = 'artwork_for_mobile';
  static const kArtworkForPlan = 'artwork_for_plan';
  static const kArtworkOriginal = 'artwork_original';

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
  String get artworkFileName => _attributes[kArtworkFileName] ?? '';
  String get artworkContentType => _attributes[kArtworkContentType] ?? '';
  int get artworkFileSize => _attributes[kArtworkFileSize] ?? 0;
  String get title => _attributes[kTitle] ?? '';
  String get artworkForDashboard => _attributes[kArtworkForDashboard] ?? '';
  String get artworkForMobile => _attributes[kArtworkForMobile] ?? '';
  String get artworkForPlan => _attributes[kArtworkForPlan] ?? '';
  String get artworkOriginal => _attributes[kArtworkOriginal] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoServicesSeries.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesSeries.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/series`
  static Future<PcoCollection<PcoServicesSeries>> get(
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoServicesSeries] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/plans/$planId/series`
  static Future<PcoCollection<PcoServicesSeries>> getFromServiceTypeAndPlan(
      String serviceTypeId, String planId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSeries.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/series';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesSeries>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesPlan] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/series/1/plans`
  Future<PcoCollection<PcoServicesPlan>> getPlans(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPlan.canInclude;
    var url = '$apiEndpoint/plans';
    return PcoCollection.fromApiCall<PcoServicesPlan>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
