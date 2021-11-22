/// This file was generated on 2021-11-22T16:57:41.180640


import '../../pco.dart';

/// This class represents a PCO Services PublicView Object
/// 
/// Application: services
/// Id:          public_view
/// Type:        PublicView
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// Manage options for a public plan
/// 
/// Example:
/// 
/// {"type":"PublicView","id":"1","attributes":{"series_and_plan_titles":true,"item_lengths":true,"service_times":true,"song_items":true,"media_items":true,"regular_items":true,"headers":true,"itunes":true,"amazon":true,"spotify":true,"youtube":true,"vimeo":true},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/public_view
/// 
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoServicesPublicView extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PublicView';
  static const String kTypeId = 'public_view';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'publicview-servicetype-public_view';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';

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




  PcoServicesPublicView() : super(kPcoApplication, kTypeString);
  PcoServicesPublicView.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesPublicView Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/public_view;
  static Future<List<PcoServicesPublicView>> getManyFromServiceTypeAndPublicViewIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesPublicView> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPublicView.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/public_view';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPublicView.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPublicView Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/public_view;
  static Future<PcoServicesPublicView?> getSingleFromServiceTypeAndPublicViewIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesPublicView?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesPublicView.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/public_view' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPublicView.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }





}
