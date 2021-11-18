/// This file was generated on 2021-11-18T15:28:01.742784


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
class PcoServicesPublicView extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PublicView';
  static const String kTypeId = 'public_view';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'publicview-servicetype-public_view';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/public_view';

  @override
  String shortestEdgePath() => kShortestEdgePathTemplate;

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
  PcoServicesPublicView.fromJson(Map<String, dynamic> data): super.fromJson(kPcoApplication, kTypeString, data);

  /// will get many PcoServicesPublicView Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/public_view;
  static Future<List<PcoServicesPublicView>> getManyFromServiceTypeAndPublicViewIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesPublicView> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/public_view';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesPublicView.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesPublicView Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/public_view;
  static Future<PcoServicesPublicView?> getSingleFromServiceTypeAndPublicViewIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesPublicView?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/public_view' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesPublicView.fromJson(res.data);
    }
    return retval;
  }




}
