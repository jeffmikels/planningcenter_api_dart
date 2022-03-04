/// This file was generated on 2022-03-04T15:29:14.072184


import '../../pco.dart';

/// This class represents a PCO Services PublicView Object
/// 
/// - Application:        services
/// - Id:                 public_view
/// - Type:               PublicView
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// 
/// Description:
/// Manage options for a public plan
/// 
/// Example:
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
/// - `publicview-servicetype-public_view`: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// 
/// All Actions:
/// NONE
///
class PcoServicesPublicView extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PublicView';
  static const String kTypeId = 'public_view';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'publicview-servicetype-public_view';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';

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

  bool get isSeriesAndPlanTitles => attributes[kSeriesAndPlanTitles] == true;
  bool get isItemLengths => attributes[kItemLengths] == true;
  bool get isServiceTimes => attributes[kServiceTimes] == true;
  bool get isSongItems => attributes[kSongItems] == true;
  bool get isMediaItems => attributes[kMediaItems] == true;
  bool get isRegularItems => attributes[kRegularItems] == true;
  bool get isHeaders => attributes[kHeaders] == true;
  bool get isItunes => attributes[kItunes] == true;
  bool get isAmazon => attributes[kAmazon] == true;
  bool get isSpotify => attributes[kSpotify] == true;
  bool get isYoutube => attributes[kYoutube] == true;
  bool get isVimeo => attributes[kVimeo] == true;
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoServicesPublicView() : super(kPcoApplication, kTypeString);
  PcoServicesPublicView.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoServicesPublicView] objects (expecting many)
  /// using a path like this: `/services/v2/service_types/$serviceTypeId/public_view`
  static Future<PcoCollection<PcoServicesPublicView>> getFromServiceType(String serviceTypeId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPublicView.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/public_view';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPublicView>(url, query: query, apiVersion:kApiVersion);
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
