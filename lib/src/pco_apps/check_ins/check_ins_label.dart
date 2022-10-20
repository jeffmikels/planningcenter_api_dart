/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-10-20T18:03:47.578027
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsLabelOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsLabelFilter { none }

/// Creates a [PcoCheckInsLabelQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsLabelQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsLabelOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsLabelOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsLabelFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsLabelFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsLabelQuery({
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

/// This class represents a PCO CheckIns Label Object
///
/// - Application:        check-ins
/// - Id:                 label
/// - Type:               Label
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/labels
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsLabel.fromJson()` constructor.
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
/// Labels can be set to print for events (through `EventLabel`s),
/// locations (through `LocationLabel`s) or options.
/// Label type (security label / name label) is expressed with the
/// `prints_for` attribute. `prints_for="Person"` is a name label,
/// `prints_for="Group"` is a security label.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `name` (ro) -> PCO: `name`
/// - `xml` (ro) -> PCO: `xml`
/// - `printsFor` (ro) -> PCO: `prints_for`
/// - `roll` (ro) -> PCO: `roll`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
/// - `locationlabel-label-location_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels
///
/// Inbound Edges:
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
/// - `label-locationlabel-label`: https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels/1/label
/// - `label-option-label`: https://api.planningcenteronline.com/check-ins/v2/options/1/label
/// - `label-organization-labels`: https://api.planningcenteronline.com/check-ins/v2/labels
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Label",
///   "id": "1",
///   "attributes": {
///     "name": "string",
///     "xml": "string",
///     "prints_for": "string",
///     "roll": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Label';
  static const String kTypeId = 'label';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/labels';
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
  static const kXml = 'xml';
  static const kPrintsFor = 'prints_for';
  static const kRoll = 'roll';
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
  String get name => _attributes[kName] ?? '';
  String get xml => _attributes[kXml] ?? '';
  String get printsFor => _attributes[kPrintsFor] ?? '';
  String get roll => _attributes[kRoll] ?? '';

  // Class Constructors
  PcoCheckInsLabel.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsLabel.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsLabel] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsLabel(
      {String? id,
      String? name,
      String? xml,
      String? printsFor,
      String? roll,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsLabel.empty();
    obj._id = id;
    if (name != null) obj._attributes['name'] = name;
    if (xml != null) obj._attributes['xml'] = xml;
    if (printsFor != null) obj._attributes['prints_for'] = printsFor;
    if (roll != null) obj._attributes['roll'] = roll;
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

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLabel>> get({
    String? id,
    PcoCheckInsLabelQuery? query,
  }) async {
    query ??= PcoCheckInsLabelQuery();

    var url = '/check-ins/v2/labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLabel>> getFromEventAndEventLabel(
    String eventId,
    String eventLabelId, {
    String? id,
    PcoCheckInsLabelQuery? query,
  }) async {
    query ??= PcoCheckInsLabelQuery();

    var url = '/check-ins/v2/events/$eventId/event_labels/$eventLabelId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLabel>> getFromLabelAndLocationLabel(
    String labelId,
    String locationLabelId, {
    String? id,
    PcoCheckInsLabelQuery? query,
  }) async {
    query ??= PcoCheckInsLabelQuery();

    var url =
        '/check-ins/v2/labels/$labelId/location_labels/$locationLabelId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/options/$optionId/label`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsLabel>> getFromOption(
    String optionId, {
    String? id,
    PcoCheckInsLabelQuery? query,
  }) async {
    query ??= PcoCheckInsLabelQuery();

    var url = '/check-ins/v2/options/$optionId/label';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels`
  Future<PcoCollection<PcoCheckInsEventLabel>> getEventLabels(
      {PcoCheckInsEventLabelQuery? query}) async {
    query ??= PcoCheckInsEventLabelQuery();
    var url = '$apiEndpoint/event_labels';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLocationLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/labels/1/location_labels`
  Future<PcoCollection<PcoCheckInsLocationLabel>> getLocationLabels(
      {PcoCheckInsLocationLabelQuery? query}) async {
    query ??= PcoCheckInsLocationLabelQuery();
    var url = '$apiEndpoint/location_labels';
    return PcoCollection.fromApiCall<PcoCheckInsLocationLabel>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
