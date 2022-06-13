/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T18:17:42.758185
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================


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
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// A Platform Notification is a suite-wide notification that shows at the top of each application's screen until dismissed by the user.
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `html` (ro) -> PCO: `html`
/// 
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
/// 
/// NONE
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
/// 
/// NONE
/// 
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
/// 
/// NONE
///
/// ## Edges and Actions
/// 
/// Outbound Edges:
/// NONE
/// 
/// Inbound Edges:
/// - `platformnotification-person-platform_notifications`: https://api.planningcenteronline.com/people/v2/people/1/platform_notifications
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
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
class PcoPeoplePlatformNotification extends PcoResource {
  static const String kPcoApplication = 'people';
  static const String kTypeString = 'PlatformNotification';
  static const String kTypeId = 'platform_notification';
  static const String kApiVersion = '2021-08-17';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/people/v2/people/1/platform_notifications';
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


  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships
  
  




  // Class Constructors
  PcoPeoplePlatformNotification.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoPeoplePlatformNotification.empty() : super(kPcoApplication, kTypeString);



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
