/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.237450
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoWebhooksOrganizationOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoWebhooksOrganizationFilter { none }

/// Creates a [PcoWebhooksOrganizationQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoWebhooksOrganizationQuery extends PlanningCenterApiQuery {
  static final Map<PcoWebhooksOrganizationOrder, String> _orderMap = {};
  static String orderString(PcoWebhooksOrganizationOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoWebhooksOrganizationFilter, String> _filterMap = {};
  static String filterString(PcoWebhooksOrganizationFilter filter) =>
      _filterMap[filter]!;

  PcoWebhooksOrganizationQuery({
    /// reverse the ordering
    bool reverse = false,

    // direct access to super class params
    super.perPage,
    super.pageOffset,
    super.extraParams,
    super.where,
    super.filter,
    super.order,
    super.include,
  }) : super();
}

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
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoWebhooksOrganization.fromJson()` constructor.
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
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2';
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
  PcoWebhooksOrganization.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoWebhooksOrganization.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoWebhooksOrganization] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoWebhooksOrganization(
      {String? id,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoWebhooksOrganization.empty();
    obj._id = id;

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
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/available_events`
  Future<PcoCollection<PcoWebhooksAvailableEvent>> getAvailableEvents(
      {PcoWebhooksAvailableEventQuery? query}) async {
    query ??= PcoWebhooksAvailableEventQuery();
    var url = '$apiEndpoint/available_events';
    return PcoCollection.fromApiCall<PcoWebhooksAvailableEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoWebhooksSubscription] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/webhooks/v2/subscriptions`
  Future<PcoCollection<PcoWebhooksSubscription>> getSubscriptions(
      {PcoWebhooksSubscriptionQuery? query}) async {
    query ??= PcoWebhooksSubscriptionQuery();
    var url = '$apiEndpoint/subscriptions';
    return PcoCollection.fromApiCall<PcoWebhooksSubscription>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
