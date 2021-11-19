/// This file was generated on 2021-11-19T12:10:42.034043


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=
/// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
/// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
///
class PcoServicesLiveController extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'LiveController';
  static const String kTypeId = 'live_controller';
  static const String kApiVersion = '2018-11-01';
  static const String kShortestEdgeId = 'livecontroller-servicetype-live_controllers';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers';

  /// possible includes with parameter ?include=a,b

  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// @created_at (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  /// @updated_at (URLParameter), prefix with a hyphen (-updated_at) to reverse the order
  static List<String> get canOrderBy => ['created_at','updated_at'];

  /// getters like the following allow parent class methods to know
  /// the static variables of the child class

  @override
  String get shortestEdgePath => kShortestEdgePathTemplate;

  @override
  String get apiVersion => kApiVersion;

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




  PcoServicesLiveController() : super(kPcoApplication, kTypeString);
  PcoServicesLiveController.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoServicesLiveController Objects
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers;
  static Future<List<PcoServicesLiveController>> getManyFromServiceTypeAndLiveControllerIds(String serviceTypeId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoServicesLiveController> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLiveController.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/live_controllers';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoServicesLiveController.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoServicesLiveController Object
  /// using a path like this: https://api.planningcenteronline.com/services/v2/service_types/1/live_controllers;
  static Future<PcoServicesLiveController?> getSingleFromServiceTypeAndLiveControllerIds(String serviceTypeId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoServicesLiveController?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesLiveController.canInclude;
    var url = '/services/v2/service_types/$serviceTypeId/live_controllers' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoServicesLiveController.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
