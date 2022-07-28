/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-07-28T11:29:17.864712
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Webhooks Subscription Object
///
/// - Application:        webhooks
/// - Id:                 subscription
/// - Type:               Subscription
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/subscriptions
/// - Create Endpoint:    https://api.planningcenteronline.com/webhooks/v2/subscriptions
///
/// ## Instantiation
/// - Create a new instance using the `PcoWebhooksSubscription()` constructor
/// - Instantiate from existing `JSON` data using the `PcoWebhooksSubscription.fromJson()` constructor.
/// - Manually create an object using the `PcoWebhooksSubscription.manual()` constructor.
/// - Load an instance from the API using one of the static methods defined on this class.
///
/// ## Usage
/// - Fields exposed by the API are readable through getter methods.
/// - Fields writable by the API are exposed through setter methods.
/// - Original `json` data is exposed through the read-only `attributes` map.
/// - Additional data is available through the read-only `links` and `relationships` maps.
/// - Available relationships / includes are exposed through typed getters.
///
///
/// ## Description
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (rw) -> PCO: `name`
/// - `url` (rw) -> PCO: `url`
/// - `isActive` (rw) -> PCO: `active`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
/// - `authenticitySecret` (ro) -> PCO: `authenticity_secret`
/// - `applicationId` (ro) -> PCO: `application_id`
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
/// - `application_id`: (URLParameter), query on a specific application_id, example: ?where[application_id]=string
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
/// - `event-subscription-events`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events
///
/// Inbound Edges:
/// - `subscription-organization-subscriptions`: https://api.planningcenteronline.com/webhooks/v2/subscriptions
///
/// Actions:
/// - `rotate_secret`: https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/rotate_secret
///
/// ## Raw Data Object Example
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
class PcoWebhooksSubscription extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'Subscription';
  static const String kTypeId = 'subscription';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions';
  static const String kCreatePathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/subscriptions';

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
  static const kName = 'name';
  static const kUrl = 'url';
  static const kActive = 'active';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';
  static const kAuthenticitySecret = 'authenticity_secret';
  static const kApplicationId = 'application_id';

  // getters and setters
  @override
  List<String> get createAllowed => ['name', 'url', 'active'];

  @override
  List<String> get updateAllowed => ['active'];

  @override
  bool get canCreate => true;

  @override
  bool get canUpdate => true;

  @override
  bool get canDestroy => true;

  // getters for object attributes
  String get name => _attributes[kName] ?? '';
  String get url => _attributes[kUrl] ?? '';
  bool get isActive => _attributes[kActive] == true;
  String get authenticitySecret => _attributes[kAuthenticitySecret] ?? '';
  String get applicationId => _attributes[kApplicationId] ?? '';

  // setters for object attributes

  /// pass `null` to remove key from attributes
  set name(String? x) =>
      (x == null) ? _attributes.remove(kName) : _attributes[kName] = x;

  /// pass `null` to remove key from attributes
  set url(String? x) =>
      (x == null) ? _attributes.remove(kUrl) : _attributes[kUrl] = x;

  /// pass `null` to remove key from attributes
  set isActive(bool? x) =>
      (x == null) ? _attributes.remove(kActive) : _attributes[kActive] = x;

  // Class Constructors
  PcoWebhooksSubscription.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  PcoWebhooksSubscription.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoWebhooksSubscription] object using this endpoint: `https://api.planningcenteronline.com/webhooks/v2/subscriptions`
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - Call `save()` on the object to save it to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: `name`, `url`, `isActive`
  /// - FIELDS USED WHEN UPDATING: `isActive`
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoWebhooksSubscription(
      {String? id,
      String? name,
      String? url,
      bool? isActive,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? authenticitySecret,
      String? applicationId,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoWebhooksSubscription.empty();
    obj._id = id;
    obj._apiPathOverride =
        'https://api.planningcenteronline.com/webhooks/v2/subscriptions';
    if (name != null) obj._attributes['name'] = name;
    if (url != null) obj._attributes['url'] = url;
    if (isActive != null) obj._attributes['active'] = isActive;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();
    if (authenticitySecret != null)
      obj._attributes['authenticity_secret'] = authenticitySecret;
    if (applicationId != null)
      obj._attributes['application_id'] = applicationId;
    if (withRelationships != null) {
      for (var r in withRelationships.entries) {
        obj._relationships[r.key] = r.value;
      }
      obj._hasManualRelationships = true;
    }
    if (withIncluded != null) {
      obj._included.addAll(withIncluded);
      obj._hasManualIncluded = true;
    }
    return obj;
  }

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `/webhooks/v2/subscriptions`
  static Future<PcoCollection<PcoWebhooksSubscription>> get({
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/webhooks/v2/subscriptions';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksSubscription>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions/1/events`
  Future<PcoCollection<PcoWebhooksEvent>> getEvents({
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '$apiEndpoint/events';
    return PcoCollection.fromApiCall<PcoWebhooksEvent>(url,
        query: query, apiVersion: apiVersion);
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
  /// [data] can be a JSON String, or JSON serializable Object that follows
  /// the JSON:API specifications. The [PlanningCenterApiData] helper class has been
  /// provided for just such a purpose.
  ///
  /// Details:
  /// *PlanningCenter API docs do not have a description for this action.*
  Future<PlanningCenterApiResponse> rotateSecret(Object data) async {
    if (id == null) {
      return PlanningCenterApiError.messageOnly(
        'Actions must be called on items that already exist on the remote server',
      );
    }
    var url = '$apiEndpoint/rotate_secret';
    return api.call(url, verb: 'post', data: data, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
