/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2023-01-02T22:03:21.007597
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsEventLabelOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsEventLabelFilter { none }

/// Creates a [PcoCheckInsEventLabelQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeEvent`: include associated event
/// - `includeLabel`: include associated label
/// - `includeAllRelated`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCheckInsEventLabelQuery(includes: ['a', 'b'])`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsEventLabelQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsEventLabelOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsEventLabelOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsEventLabelFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsEventLabelFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsEventLabelQuery({
    /// include associated event
    /// when true, adds `?include=event` to url
    bool includeEvent = false,

    /// include associated label
    /// when true, adds `?include=label` to url
    bool includeLabel = false,

    /// when true, adds `?include=event,label` to url parameters
    bool includeAllRelated = false,

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
    if (includeAllRelated || includeEvent) include.add('event');
    if (includeAllRelated || includeLabel) include.add('label');
  }
}

/// This class represents a PCO CheckIns EventLabel Object
///
/// - Application:        check-ins
/// - Id:                 event_label
/// - Type:               EventLabel
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsEventLabel.fromJson()` constructor.
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
/// Says how many of a given label to print for this event and
/// whether to print it for regulars, guests, and/or volunteers.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `quantity` (ro) -> PCO: `quantity`
/// - `isForRegular` (ro) -> PCO: `for_regular`
/// - `isForGuest` (ro) -> PCO: `for_guest`
/// - `isForVolunteer` (ro) -> PCO: `for_volunteer`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `event-eventlabel-event`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event
/// - `label-eventlabel-label`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label
///
/// Inbound Edges:
/// - `eventlabel-event-event_labels`: https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels
/// - `eventlabel-label-event_labels`: https://api.planningcenteronline.com/check-ins/v2/labels/1/event_labels
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "EventLabel",
///   "id": "1",
///   "attributes": {
///     "quantity": 1,
///     "for_regular": true,
///     "for_guest": true,
///     "for_volunteer": true,
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsEventLabel extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'EventLabel';
  static const String kTypeId = 'event_label';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `event`: include associated event
  /// - `label`: include associated label
  static List<String> get canInclude => ['event', 'label'];

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
  static const kQuantity = 'quantity';
  static const kForRegular = 'for_regular';
  static const kForGuest = 'for_guest';
  static const kForVolunteer = 'for_volunteer';
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
  int get quantity => _getAttribute<int>(kQuantity, 0);
  bool get isForRegular => _getAttribute<bool>(kForRegular, false);
  bool get isForGuest => _getAttribute<bool>(kForGuest, false);
  bool get isForVolunteer => _getAttribute<bool>(kForVolunteer, false);

  // typed getters for each relationship

  PcoCheckInsEvent? get includedEvent =>
      _firstOrNull<PcoCheckInsEvent>(relationships['event']);
  PcoCheckInsLabel? get includedLabel =>
      _firstOrNull<PcoCheckInsLabel>(relationships['label']);

  // Class Constructors
  PcoCheckInsEventLabel.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsEventLabel.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsEventLabel] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsEventLabel(
      {String? id,
      int? quantity,
      bool? isForRegular,
      bool? isForGuest,
      bool? isForVolunteer,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsEventLabel.empty();
    obj._id = id;
    if (quantity != null) obj._attributes['quantity'] = quantity;
    if (isForRegular != null) obj._attributes['for_regular'] = isForRegular;
    if (isForGuest != null) obj._attributes['for_guest'] = isForGuest;
    if (isForVolunteer != null)
      obj._attributes['for_volunteer'] = isForVolunteer;
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

  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsEventLabelQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/events/$eventId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEventLabel] object
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEventLabel?> getSingleFromEvent(
    String eventId,
    String id, {
    PcoCheckInsEventLabelQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/events/$eventId/event_labels/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/events/$eventId/event_labels`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEventLabel>> getAllFromEvent(
    String eventId, {
    String? id,
    PcoCheckInsEventLabelQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/events/$eventId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a [PcoCollection] of [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/event_labels`
  ///
  /// Getting a [PcoCollection] is useful even when retrieving a single object
  /// because it contains error data and helper functions.
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsEventLabel>> getFromLabel(
    String labelId, {
    String? id,
    PcoCheckInsEventLabelQuery? query,
    bool getAll = false,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    if (getAll) query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a single [PcoCheckInsEventLabel] object
  /// using a path like this: `/check-ins/v2/labels/$labelId/event_labels/[id]`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCheckInsEventLabel?> getSingleFromLabel(
    String labelId,
    String id, {
    PcoCheckInsEventLabelQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/labels/$labelId/event_labels/$id';
    var retval = await PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
    return retval.items.isEmpty ? null : retval.items.first;
  }

  /// Will get a [PcoCollection] containing ALL [PcoCheckInsEventLabel] objects (expecting many)
  /// using a path like this: `/check-ins/v2/labels/$labelId/event_labels`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  ///
  /// This function forces the `query.getAll` to be true.
  static Future<PcoCollection<PcoCheckInsEventLabel>> getAllFromLabel(
    String labelId, {
    String? id,
    PcoCheckInsEventLabelQuery? query,
    bool includeAllRelated = false,
    bool includeEvent = false,
    bool includeLabel = false,
  }) async {
    query ??= PcoCheckInsEventLabelQuery();
    query.getAll = true;
    if (includeAllRelated)
      query.include.addAll(PcoCheckInsEventLabel.canInclude);
    if (includeEvent) query.include.add('event');
    if (includeLabel) query.include.add('label');
    var url = '/check-ins/v2/labels/$labelId/event_labels';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsEventLabel>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsEvent] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/event`
  Future<PcoCollection<PcoCheckInsEvent>> getEvent(
      {PcoCheckInsEventQuery? query}) async {
    query ??= PcoCheckInsEventQuery();
    var url = '$apiEndpoint/event';
    return PcoCollection.fromApiCall<PcoCheckInsEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCheckInsLabel] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/events/1/event_labels/1/label`
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
