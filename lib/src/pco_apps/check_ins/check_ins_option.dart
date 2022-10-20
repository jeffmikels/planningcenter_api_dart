/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.581661
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsOptionOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsOptionFilter { none }

/// Creates a [PcoCheckInsOptionQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeLabel`: include associated label
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsOptionQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsOptionQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsOptionOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsOptionOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsOptionFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsOptionFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsOptionQuery({
    /// include associated label
    /// when true, adds `?include=label` to url
    bool includeLabel = false,

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
  }) : super() {
    if (includeLabel) include.add('label');
  }
}

/// This class represents a PCO CheckIns Option Object
///
/// - Application:        check-ins
/// - Id:                 option
/// - Type:               Option
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/options
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsOption.fromJson()` constructor.
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
/// An option which an attendee may select when checking in.
///
/// Options may have extra labels associated with them, denoted by `label` and `quantity`.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `body` (ro) -> PCO: `body`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `checkin-option-check_ins`: https://api.planningcenteronline.com/check-ins/v2/options/1/check_ins
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
///
/// Inbound Edges:
/// - `option-checkin-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/options
/// - `option-location-options`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/locations/1/options
/// - `option-organization-options`: https://api.planningcenteronline.com/check-ins/v2/options
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Option",
///   "id": "1",
///   "attributes": {
///     "body": "string",
///     "quantity": 1,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsOption extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Option';
  static const String kTypeId = 'option';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/options';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `label`: include associated label
  static List<String> get canInclude => ['label'];

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
  static const kBody = 'body';
  static const kQuantity = 'quantity';
  static const kCreatedAt = 'created_at';
  static const kUpdatedAt = 'updated_at';

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
  String get body => _attributes[kBody] ?? '';
  int get quantity => _attributes[kQuantity] ?? 0;

  // typed getters for each relationship

  PcoCheckInsLabel? get includedLabel =>
      _firstOrNull<PcoCheckInsLabel>(relationships['label']);

  // Class Constructors
  PcoCheckInsOption.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsOption.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsOption] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsOption(
      {String? id,
      String? body,
      int? quantity,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsOption.empty();
    obj._id = id;
    if (body != null) obj._attributes['body'] = body;
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (updatedAt != null)
      obj._attributes['updated_at'] = updatedAt.toIso8601String();

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

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsOption>> get({
    String? id,
    PcoCheckInsOptionQuery? query,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsOptionQuery();

    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsOption>> getFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsOptionQuery? query,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsOptionQuery();

    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/check_ins/$checkInId/options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsOption] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/locations/$locationId/options`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsOption>> getFromCheckInAndLocation(
    String checkInId,
    String locationId, {
    String? id,
    PcoCheckInsOptionQuery? query,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsOptionQuery();

    if (includeLabel) query.include.add('label');
    var url =
        '/check-ins/v2/check_ins/$checkInId/locations/$locationId/options';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsOption>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsCheckIn] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/options/1/check_ins`
  Future<PcoCollection<PcoCheckInsCheckIn>> getCheckIns(
      {PcoCheckInsCheckInQuery? query}) async {
    query ??= PcoCheckInsCheckInQuery();
    var url = '$apiEndpoint/check_ins';
    return PcoCollection.fromApiCall<PcoCheckInsCheckIn>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/options/1/label`
  Future<PcoCollection<PcoCheckInsLabel>> getLabel(
      {PcoCheckInsLabelQuery? query}) async {
    query ??= PcoCheckInsLabelQuery();
    var url = '$apiEndpoint/label';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
