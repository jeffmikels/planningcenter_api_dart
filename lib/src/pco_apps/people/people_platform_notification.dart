/// This file was generated on 2022-03-04T15:29:14.520504


import '../../pco.dart';

/// This class represents a PCO People PlatformNotification Object
/// 
/// - Application:        people
/// - Id:                 platform_notification
/// - Type:               PlatformNotification
/// - ApiVersion:         2021-08-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// 
/// Description:
/// A Platform Notification is a suite-wide notification that shows at the top of each application's screen until dismissed by the user.
/// 
/// Example:
/// ```json
/// {
///   "type": "PlatformNotification",
///   "id": "1",
///   "attributes": {
///     "html": "string"
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
/// - `platformnotification-person-platform_notifications`: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// 
/// All Actions:
/// NONE
///
class PcoPeoplePlatformNotification extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PlatformNotification';
  static const String kTypeId = 'platform_notification';
  static const String kApiVersion = '2021-08-17';
  static const String kShortestEdgeId = 'platformnotification-person-platform_notifications';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';

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
  static const kHtml = 'html';


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

  String get html => attributes[kHtml] ?? '';
  

  // setters for object attributes

  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoPeoplePlatformNotification() : super(kPcoApplication, kTypeString);
  PcoPeoplePlatformNotification.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoPeoplePlatformNotification] objects (expecting many)
  /// using a path like this: `/people/v2/people/$peopleId/platform_notifications`
  static Future<PcoCollection<PcoPeoplePlatformNotification>> getFromPeople(String peopleId, {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoPeoplePlatformNotification.canInclude;
    var url = '/people/v2/people/$peopleId/platform_notifications';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoPeoplePlatformNotification>(url, query: query, apiVersion:kApiVersion);
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
