/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:25.981941
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoServicesPublicViewOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoServicesPublicViewFilter { none }

/// Creates a [PcoServicesPublicViewQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoServicesPublicViewQuery extends PlanningCenterApiQuery {
  static final Map<PcoServicesPublicViewOrder, String> _orderMap = {};
  static String orderString(PcoServicesPublicViewOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoServicesPublicViewFilter, String> _filterMap = {};
  static String filterString(PcoServicesPublicViewFilter filter) =>
      _filterMap[filter]!;

  PcoServicesPublicViewQuery({
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

/// This class represents a PCO Services PublicView Object
///
/// - Application:        services
/// - Id:                 public_view
/// - Type:               PublicView
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesPublicView.fromJson()` constructor.
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
/// Manage options for a public plan
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `isSeriesAndPlanTitles` (ro) -> PCO: `series_and_plan_titles`
/// - `isItemLengths` (ro) -> PCO: `item_lengths`
/// - `isServiceTimes` (ro) -> PCO: `service_times`
/// - `isSongItems` (ro) -> PCO: `song_items`
/// - `isMediaItems` (ro) -> PCO: `media_items`
/// - `isRegularItems` (ro) -> PCO: `regular_items`
/// - `isHeaders` (ro) -> PCO: `headers`
/// - `isItunes` (ro) -> PCO: `itunes`
/// - `isAmazon` (ro) -> PCO: `amazon`
/// - `isSpotify` (ro) -> PCO: `spotify`
/// - `isYoutube` (ro) -> PCO: `youtube`
/// - `isVimeo` (ro) -> PCO: `vimeo`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `publicview-servicetype-public_view`: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PublicView",
///   "id": "1",
///   "attributes": {
///     "series_and_plan_titles": true,
///     "item_lengths": true,
///     "service_times": true,
///     "song_items": true,
///     "media_items": true,
///     "regular_items": true,
///     "headers": true,
///     "itunes": true,
///     "amazon": true,
///     "spotify": true,
///     "youtube": true,
///     "vimeo": true
///   },
///   "relationships": {}
/// }
/// ```
class PcoServicesPublicView extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PublicView';
  static const String kTypeId = 'public_view';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';
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
  static const kSeriesAndPlanTitles = 'series_and_plan_titles';
  static const kItemLengths = 'item_lengths';
  static const kServiceTimes = 'service_times';
  static const kSongItems = 'song_items';
  static const kMediaItems = 'media_items';
  static const kRegularItems = 'regular_items';
  static const kHeaders = 'headers';
  static const kItunes = 'itunes';
  static const kAmazon = 'amazon';
  static const kSpotify = 'spotify';
  static const kYoutube = 'youtube';
  static const kVimeo = 'vimeo';

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
  bool get isSeriesAndPlanTitles => _attributes[kSeriesAndPlanTitles] == true;
  bool get isItemLengths => _attributes[kItemLengths] == true;
  bool get isServiceTimes => _attributes[kServiceTimes] == true;
  bool get isSongItems => _attributes[kSongItems] == true;
  bool get isMediaItems => _attributes[kMediaItems] == true;
  bool get isRegularItems => _attributes[kRegularItems] == true;
  bool get isHeaders => _attributes[kHeaders] == true;
  bool get isItunes => _attributes[kItunes] == true;
  bool get isAmazon => _attributes[kAmazon] == true;
  bool get isSpotify => _attributes[kSpotify] == true;
  bool get isYoutube => _attributes[kYoutube] == true;
  bool get isVimeo => _attributes[kVimeo] == true;

  // Class Constructors
  PcoServicesPublicView.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoServicesPublicView.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoServicesPublicView] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoServicesPublicView(
      {String? id,
      bool? isSeriesAndPlanTitles,
      bool? isItemLengths,
      bool? isServiceTimes,
      bool? isSongItems,
      bool? isMediaItems,
      bool? isRegularItems,
      bool? isHeaders,
      bool? isItunes,
      bool? isAmazon,
      bool? isSpotify,
      bool? isYoutube,
      bool? isVimeo,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoServicesPublicView.empty();
    obj._id = id;
    if (isSeriesAndPlanTitles != null)
      obj._attributes['series_and_plan_titles'] = isSeriesAndPlanTitles;
    if (isItemLengths != null) obj._attributes['item_lengths'] = isItemLengths;
    if (isServiceTimes != null)
      obj._attributes['service_times'] = isServiceTimes;
    if (isSongItems != null) obj._attributes['song_items'] = isSongItems;
    if (isMediaItems != null) obj._attributes['media_items'] = isMediaItems;
    if (isRegularItems != null)
      obj._attributes['regular_items'] = isRegularItems;
    if (isHeaders != null) obj._attributes['headers'] = isHeaders;
    if (isItunes != null) obj._attributes['itunes'] = isItunes;
    if (isAmazon != null) obj._attributes['amazon'] = isAmazon;
    if (isSpotify != null) obj._attributes['spotify'] = isSpotify;
    if (isYoutube != null) obj._attributes['youtube'] = isYoutube;
    if (isVimeo != null) obj._attributes['vimeo'] = isVimeo;

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

  /// Will get a collection of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/public_view`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoServicesPublicView>> getFromServiceType(
    String serviceTypeId, {
    String? id,
    PcoServicesPublicViewQuery? query,
  }) async {
    query ??= PcoServicesPublicViewQuery();

    var url = '/services/v2/service_types/$serviceTypeId/public_view';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPublicView>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
