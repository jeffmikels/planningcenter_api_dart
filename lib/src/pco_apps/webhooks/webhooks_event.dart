/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-13T21:46:39.054820
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

// import '../../pco.dart';
part of pco;

/// This class represents a PCO Webhooks Event Object
///
/// - Application:        webhooks
/// - Id:                 event
/// - Type:               Event
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
/// - Create Endpoint:    NONE
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `uuid` (ro) -> PCO: `uuid`
/// - `payload` (ro) -> PCO: `payload`
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
/// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
///
/// ## Possible Ordering
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
/// (translates to url parameter: `?order=-updated_at`)
///
/// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `delivery-event-deliveries`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries
///
/// Inbound Edges:
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
///
/// Actions:
/// - `redeliver`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Event",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z",
///     "uuid": "string",
///     "payload": "string"
///   },
///   "relationships": {
///     "subscription": {
///       "data": {
///         "type": "Subscription",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoWebhooksEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Event';
  static const String kTypeId = 'event';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  ///
  static List<String> get canInclude => [];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `uuid`: (URLParameter), query on a specific uuid, example: ?where[uuid]=string
  static List<String> get canQuery => ['uuid'];

  /// possible orderings with parameter ?order=
  /// - `created_at`: (URLParameter), prefix with a hyphen (-created_at) to reverse the order
  static List<String> get canOrderBy => ['created_at'];

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
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kUuid = 'uuid';
  static const kPayload = 'payload';

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
  String get uuid => _attributes[kUuid] ?? '';
  String get payload => _attributes[kPayload] ?? '';

  // getters for each relationship
  // the code generator cannot determine the resource type of the relationships

  // Class Constructors
  PcoWebhooksEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoWebhooksEvent.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions/$subscriptionId/events`
  static Future<PcoCollection<PcoWebhooksEvent>> getFromSubscription(
      String subscriptionId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksEvent.canInclude;
    var url = '/webhooks/v2/subscriptions/$subscriptionId/events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksDelivery] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/deliveries`
  Future<PcoCollection<PcoWebhooksDelivery>> getDeliveries(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoWebhooksDelivery.canInclude;
    var url = '$apiEndpoint/deliveries';
    return PcoCollection.fromApiCall<PcoWebhooksDelivery>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

  /// ACTION: `redeliver`
  ///
  ///
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events/1/redeliver`
  ///
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> redeliver(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/redeliver';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }
}
