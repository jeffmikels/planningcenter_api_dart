/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.822505
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoWebhooksAvailableEventOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoWebhooksAvailableEventFilter { none }

/// Creates a [PcoWebhooksAvailableEventQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoWebhooksAvailableEventQuery extends PlanningCenterApiQuery {
  static final Map<PcoWebhooksAvailableEventOrder, String> _orderMap = {};
  static String orderString(PcoWebhooksAvailableEventOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoWebhooksAvailableEventFilter, String> _filterMap = {};
  static String filterString(PcoWebhooksAvailableEventFilter filter) =>
      _filterMap[filter]!;

  PcoWebhooksAvailableEventQuery({
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

/// This class represents a PCO Webhooks AvailableEvent Object
///
/// - Application:        webhooks
/// - Id:                 available_event
/// - Type:               AvailableEvent
/// - ApiVersion:         2018-08-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/webhooks/v2/available_events
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoWebhooksAvailableEvent.fromJson()` constructor.
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
/// An event supported by webhooks
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `app` (ro) -> PCO: `app`
/// - `version` (ro) -> PCO: `version`
/// - `type` (ro) -> PCO: `type`
/// - `resource` (ro) -> PCO: `resource`
/// - `action` (ro) -> PCO: `action`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `availableevent-organization-available_events`: https://api.planningcenteronline.com/webhooks/v2/available_events
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AvailableEvent",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "app": "string",
///     "version": "string",
///     "type": "string",
///     "resource": "string",
///     "action": "string"
///   },
///   "relationships": {}
/// }
/// ```
class PcoWebhooksAvailableEvent extends PcoResource {
  static const String kPcoApplication = 'webhooks';
  static const String kTypeString = 'AvailableEvent';
  static const String kTypeId = 'available_event';
  static const String kApiVersion = '2018-08-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/webhooks/v2/available_events';
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
  static const kName = 'name';
  static const kApp = 'app';
  static const kVersion = 'version';
  static const kType = 'type';
  static const kResource = 'resource';
  static const kAction = 'action';

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
  String get name => _attributes[kName] ?? '';
  String get app => _attributes[kApp] ?? '';
  String get version => _attributes[kVersion] ?? '';
  String get type => _attributes[kType] ?? '';
  String get resource => _attributes[kResource] ?? '';
  String get action => _attributes[kAction] ?? '';

  // Class Constructors
  PcoWebhooksAvailableEvent.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoWebhooksAvailableEvent.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoWebhooksAvailableEvent] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoWebhooksAvailableEvent(
      {String? id,
      String? name,
      String? app,
      String? version,
      String? resource,
      String? action,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoWebhooksAvailableEvent.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (app != null) obj._attributes['app'] = app;
    if (version != null) obj._attributes['version'] = version;
    if (resource != null) obj._attributes['resource'] = resource;
    if (action != null) obj._attributes['action'] = action;

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

  /// Will get a collection of [PcoWebhooksAvailableEvent] objects (expecting many)
  /// using a path like this: `/webhooks/v2/available_events`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoWebhooksAvailableEvent>> get({
    String? id,
    PcoWebhooksAvailableEventQuery? query,
  }) async {
    query ??= PcoWebhooksAvailableEventQuery();

    var url = '/webhooks/v2/available_events';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoWebhooksAvailableEvent>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
