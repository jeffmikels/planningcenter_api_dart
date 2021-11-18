/// This file was generated on 2021-11-17T23:59:29.914469


import '../../pco.dart';

/// This class represents a PCO People PlatformNotification Object
/// 
/// Application: people
/// Id:          platform_notification
/// Type:        PlatformNotification
/// ApiVersion:  2021-08-17
/// 
/// Description:
/// A Platform Notification is a suite-wide notification that shows at the top of each application's screen until dismissed by the user.
/// 
/// Example:
/// 
/// {"type":"PlatformNotification","id":"1","attributes":{"html":"string"},"relationships":{}}
/// 
/// Collection Only: false
/// 
/// Deprecated: false
/// 
/// Default Endpoint: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// 
class PcoPeoplePlatformNotification extends PcoResource {
  static const String pcoApplication = 'people';
  static const String typeString = 'PlatformNotification';
  static const String typeId = 'platform_notification';
  static const String apiVersion = '2021-08-17';
  static const String shortestEdgeId = 'platformnotification-person-platform_notifications';
  static const String shortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';

  @override
  String shortestEdgePath() => shortestEdgePathTemplate;

  // field mapping constants
  static const kHtml = 'html';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get html => attributes[kHtml] ?? '';




  PcoPeoplePlatformNotification() : super(pcoApplication, typeString);
  PcoPeoplePlatformNotification.fromJson(Map<String, dynamic> data): super.fromJson(pcoApplication, typeString, data);

  /// will get many PcoPeoplePlatformNotification Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications;
  static Future<List<PcoPeoplePlatformNotification>> getManyFromPeopleAndPlatformNotificationIds(String peopleId, {PlanningCenterApiQuery? query}) async {
    List<PcoPeoplePlatformNotification> retval = [];
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/platform_notifications';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePlatformNotification.fromJson(itemData));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePlatformNotification Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications;
  static Future<PcoPeoplePlatformNotification?> getSingleFromPeopleAndPlatformNotificationIds(String peopleId, String id, {PlanningCenterApiQuery? query}) async {
    PcoPeoplePlatformNotification?  retval;
    query ??= PlanningCenterApiQuery();
    var url = '/people/v2/people/$peopleId/platform_notifications' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:apiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePlatformNotification.fromJson(res.data);
    }
    return retval;
  }




}
