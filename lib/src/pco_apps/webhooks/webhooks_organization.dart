/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T08:59:05.581607
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================



import '../../pco.dart';

/// This class represents a PCO Webhooks Organization Object
/// 
/// - Application:        webhooks
/// - Id:                 organization
/// - Type:               Organization
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2
/// - Create Endpoint:    NONE
/// 
/// ## Description
/// 
/// 
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
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
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
/// - `subscription-organization-subscriptions`: https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// Inbound Edges:
/// NONE
/// 
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Organization",
///   "id": "1",
///   "attributes": {},
///   "relationships": {}
/// }
/// ```
class PcoWebhooksOrganization extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Organization';
  static const String kTypeId = 'organization';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2';
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

      

  // Class Constructors
  PcoWebhooksOrganization.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);
  PcoWebhooksOrganization.empty() : super(kPcoApplication, kTypeString);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/available_events`
  Future<PcoCollection<PcoWebhooksAvailableEvent>> getAvailableEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksAvailableEvent.canInclude;
    var url = '$apiEndpoint/available_events';
    return PcoCollection.fromApiCall<PcoWebhooksAvailableEvent>(url, query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions`
  Future<PcoCollection<PcoWebhooksSubscription>> getSubscriptions({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    var url = '$apiEndpoint/subscriptions';
    return PcoCollection.fromApiCall<PcoWebhooksSubscription>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item



}
