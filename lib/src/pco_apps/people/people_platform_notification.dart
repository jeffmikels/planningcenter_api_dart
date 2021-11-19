/// This file was generated on 2021-11-19T12:10:42.603652


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
/// possible includes with parameter ?include=a,b

///
/// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value

/// possible orderings with parameter ?order=

///
class PcoPeoplePlatformNotification extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PlatformNotification';
  static const String kTypeId = 'platform_notification';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'platformnotification-person-platform_notifications';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';

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
  static const kHtml = 'html';


  // getters and setters
  @override
  List<String> get createAllowed => [];
  @override
  List<String> get updateAllowed => [];

  String get html => attributes[kHtml] ?? '';




  PcoPeoplePlatformNotification() : super(kPcoApplication, kTypeString);
  PcoPeoplePlatformNotification.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);

  /// will get many PcoPeoplePlatformNotification Objects
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications;
  static Future<List<PcoPeoplePlatformNotification>> getManyFromPeopleAndPlatformNotificationIds(String peopleId, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    List<PcoPeoplePlatformNotification> retval = [];
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
    var url = '/people/v2/people/$peopleId/platform_notifications';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is List) {
      for (var itemData in res.data) {
        retval.add(PcoPeoplePlatformNotification.fromJson(itemData, withIncludes: res.included));
      }
    }
    return retval;
  }


  /// will get a single PcoPeoplePlatformNotification Object
  /// using a path like this: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications;
  static Future<PcoPeoplePlatformNotification?> getSingleFromPeopleAndPlatformNotificationIds(String peopleId, String id, {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    PcoPeoplePlatformNotification?  retval;
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
    var url = '/people/v2/people/$peopleId/platform_notifications' + '/$id';
    var res = await PlanningCenter.instance.call(url, query: query, apiVersion:kApiVersion);
    if (res.isError) return retval;

    if (res.data is! List) {
      retval = PcoPeoplePlatformNotification.fromJson(res.data, withIncludes: res.included);
    }
    return retval;
  }




}
