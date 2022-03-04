/// This file was generated on 2022-03-04T15:29:14.823987


import '../../pco.dart';

/// This class represents a PCO Webhooks Subscription Object
/// 
/// - Application:        webhooks
/// - Id:                 subscription
/// - Type:               Subscription
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// Description:
/// 
/// 
/// Example:
/// ```json
/// {
///   "type": "Subscription",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "url": "string",
///     "active": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "authenticity_secret": "string",
///     "application_id": "string"
///   },
///   "relationships": {}
/// }
/// ```
/// 
/// Possible includes with parameter ?include=a,b
/// NONE
///
/// Possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
/// - `application_id`: (URLParameter), query on a specific application_id, example: ?where[application_id]=string
/// 
/// Possible orderings with parameter ?order=
/// NONE
///
/// All Outbound Edges:
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// 
/// All Inbound Edges:
/// - `subscription-organization-subscriptions`: https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// 
/// All Actions:
/// - `rotate_secret`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/rotate_secret
///
class PcoWebhooksSubscription extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Subscription';
  static const String kTypeId = 'subscription';
  static const String kApiVersion = '2018-08-01';
  static const String kShortestEdgeId = 'subscription-organization-subscriptions';
  static const String kShortestEdgePathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions';
  static const String kDefaultPathTemplate = 'https://api.planningcenteronline.com/webhooks/v2/subscriptions';

  /// possible includes with parameter ?include=a,b
  /// 
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `application_id`: (URLParameter), query on a specific application_id, example: ?where[application_id]=string
  static List<String> get canQuery => ['application_id'];

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
  static const kName = 'name';
  static const kUrl = 'url';
  static const kActive = 'active';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAuthenticitySecret = 'authenticity_secret';
  static const kApplicationId = 'application_id';


  // getters and setters
  @override
  List<String> get createAllowed => ['name','url','active'];

  @override
  List<String> get updateAllowed => ['active'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes

  String get name => attributes[kName] ?? '';
  String get url => attributes[kUrl] ?? '';
  bool get isActive => attributes[kActive] == true;
  String get authenticitySecret => attributes[kAuthenticitySecret] ?? '';
  String get applicationId => attributes[kApplicationId] ?? '';
  

  // setters for object attributes

  set name(String s) => attributes[kName] = s;
  set url(String s) => attributes[kUrl] = s;
  set isActive(bool b) => attributes[kActive] = b;
  

  // additional setters and getters for assignable values

  



  // Class Constructors
  PcoWebhooksSubscription() : super(kPcoApplication, kTypeString);
  PcoWebhooksSubscription.fromJson(Map<String, dynamic> data, {List<Map<String, dynamic>> withIncludes = const []}): super.fromJson(kPcoApplication, kTypeString, data, withIncludes: withIncludes);



  // ---------------------------------
  // Inbound Edges
  // ---------------------------------



  /// Will get a collection of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions`
  static Future<PcoCollection<PcoWebhooksSubscription>> get( {String? id, PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksSubscription.canInclude;
    var url = '/webhooks/v2/subscriptions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksSubscription>(url, query: query, apiVersion:kApiVersion);
  }


  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events`
  Future<PcoCollection<PcoWebhooksEvent>> getEvents({PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoWebhooksEvent>(url, query: query, apiVersion: apiVersion);
  }


  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `rotate_secret`
  /// 
  /// 
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/rotate_secret`
  /// 
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> rotateSecret(Map<String, dynamic> data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/rotate_secret';
    return api.call(url, verb:'post', data: data, apiVersion:apiVersion);
  }


}
