/// This file was generated on 2021-11-18T13:57:09.723912


import '../../pco.dart';

/// This class represents a PCO Services LiveController Object
/// 
/// Application: services
/// Id:          live_controller
/// Type:        LiveController
/// ApiVersion:  2018-11-01
/// 
/// Description:
/// A person who can control Services LIVE without the required permissions
/// 
/// Example:
/// 
/// {"type":"LiveController","id":"1","attributes":{"created_at":"2000-01-01T12:00:00Z","updated_at":"2000-01-01T12:00:00Z","full_name":"string","photo_thumbnail_url":"string"},"relationships":{"person":{"data":{"type":"Person","id":"1"}}}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers
/// 
class PcoServicesLiveController extends PcoResource {
  static const String pcoApplication = 'services';
  static const String typeString = 'LiveController';
  static const String typeId = 'live_controller';
  static const String apiVersion = '2018-11-01';
  static const String shortestEdgeId = 'livecontroller-servicetype-live_controllers';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kFullName = 'full_name';
  static const kPhotoThumbnailUrl = 'photo_thumbnail_url';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get fullName => attributes[kFullName] ?? '';
  String get photoThumbnailUrl => attributes[kPhotoThumbnailUrl] ?? '';




  PcoServicesLiveController() : super(pcoApplication, typeString);
  PcoServicesLiveController.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoServicesLiveController Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers;
  static Future<List<PcoServicesLiveController>> getManyFromServiceTypeAndLiveControllerIds(String serviceTypeId, {PlanningCenterApiQuery? query}) async {
    List<PcoServicesLiveController> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/live_controllers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLiveController.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLiveController Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers;
  static Future<PcoServicesLiveController?> getSingleFromServiceTypeAndLiveControllerIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query}) async {
    PcoServicesLiveController?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/services/v2/service_types/$serviceTypeId/live_controllers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLiveController.fromJson(res.data);
    }
    return retval;
  }




}
