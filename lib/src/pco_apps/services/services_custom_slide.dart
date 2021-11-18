/// This file was generated on 2021-11-18T13:57:09.711977


import '../../pco.dart';

/// This class represents a PCO Services CustomSlide Object
/// 
/// Application: services
/// Id:          custom_slide
/// Type:        CustomSlide
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A CustomSlide is used for adding text intended for display on a screen.
/// 
/// Example:
/// 
/// {"type":"CustomSlide","id":"1","attributes":{"body":"string","label":"string","order":1,"enabled":true},"relationships":{"item":{"data":{"type":"Item","id":"1"}},"attachment":{"data":{"type":"Attachment","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides
/// 
class PcoServicesCustomSlide extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'CustomSlide';
  static const String typeId = 'custom_slide';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = '';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/songs/1/last_scheduled_item/1/custom_slides';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kBody = 'body';
  static const kLabel = 'label';
  static const kOrder = 'order';
  static const kEnabled = 'enabled';


  // getters and setters
  @override
  List<String> get createAllowed => ['body','enabled','label','order'];
  @override
  List<String> get updateAllowed => ['body','enabled','label','order'];

  String get body => attributes[kBody] ?? '';
  String get label => attributes[kLabel] ?? '';
  int get order => attributes[kOrder] ?? 0;
  bool get isEnabled => attributes[kEnabled] == true;


  set body(String s) => attributes[kBody] = s;
  set label(String s) => attributes[kLabel] = s;
  set order(int n) => attributes[kOrder] = n;
  set isEnabled(bool b) => attributes[kEnabled] = b;


  PcoServicesCustomSlide() : super(pcoApplication, typeString);
  PcoServicesCustomSlide.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesCustomSlide Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides;
  static Future<List<PcoServicesCustomSlide>> getManyFromServiceTypeAndPlanAndItemAndCustomSlideIds(String serviceTypeId,String planId,String itemId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesCustomSlide> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesCustomSlide.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesCustomSlide Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/plans/1/items/1/custom_slides;
  static Future<PcoServicesCustomSlide?> getSingleFromServiceTypeAndPlanAndItemAndCustomSlideIds(String serviceTypeId,String planId,String itemId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesCustomSlide?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/plans/$planId/items/$itemId/custom_slides' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesCustomSlide.fromJson(res.data);
    }
    return retval;
  }




}
