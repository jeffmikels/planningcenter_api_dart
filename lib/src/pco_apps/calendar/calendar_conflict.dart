/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-08-01T14:42:03.626055
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Possible Ordering:
/// - `resolvedAt` -> `?order=resolved_at`
enum PcoCalendarConflictOrder { resolvedAt }

/// Possible Inbound Filters:
/// - `future` -> `?filter=future` : -- no description
/// - `resolved` -> `?filter=resolved` : -- no description
/// - `unresolved` -> `?filter=unresolved` : -- no description
enum PcoCalendarConflictFilter { future, resolved, unresolved }

/// Creates a [PcoCalendarConflictQuery] object
/// ## Possible Includes
/// (translates to url parameter: `?include=a,b`)
///
/// Related data may be included by marking desired `includeSomething` variables as true:
/// - `includeResolvedBy`: include associated resolved_by
/// - `includeResource`: include associated resource
/// - `includeWinner`: include associated winner
/// - `includeAll`: include all related objects
///
/// Alternatively, you may pass a list of strings to the `include` argument.
///
/// e.g. `PcoCalendarConflictQuery(includes: ['a', 'b'])`
///
/// ## Possible Ordering
/// (translates to url parameter: `?order=-updated_at`)
///
/// Results can be ordered by setting `orderBy` to an appropriate enum value:
/// - `PcoCalendarConflictOrder.resolvedAt` : will order by `resolved_at`
///
/// To reverse the order, set `reverse` to true.
///
/// Alternatively, you may pass a string to the `order` field directly (a prefix of `-` reverses the order).
/// e.g. `PlanningCenterApiQuery(order: '-updated_at')`
///
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCalendarConflictQuery extends PlanningCenterApiQuery {
  static final Map<PcoCalendarConflictOrder, String> _orderMap = {
    PcoCalendarConflictOrder.resolvedAt: 'resolved_at',
  };
  static String orderString(PcoCalendarConflictOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCalendarConflictFilter, String> _filterMap = {
    PcoCalendarConflictFilter.future: 'future',
    PcoCalendarConflictFilter.resolved: 'resolved',
    PcoCalendarConflictFilter.unresolved: 'unresolved',
  };
  static String filterString(PcoCalendarConflictFilter filter) =>
      _filterMap[filter]!;

  PcoCalendarConflictQuery({
    /// include associated resolved_by
    /// when true, adds `?include=resolved_by` to url
    bool includeResolvedBy = false,

    /// include associated resource
    /// when true, adds `?include=resource` to url
    bool includeResource = false,

    /// include associated winner
    /// when true, adds `?include=winner` to url
    bool includeWinner = false,

    /// when true, adds `?include=resolved_by,resource,winner` to url parameters
    bool includeAll = false,
    PcoCalendarConflictFilter? filterBy,
    PcoCalendarConflictOrder? orderBy,

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
    if (filterBy != null) filter.add(filterString(filterBy));
    if (includeAll || includeResolvedBy) include.add('resolved_by');
    if (includeAll || includeResource) include.add('resource');
    if (includeAll || includeWinner) include.add('winner');

    if (orderBy != null) order = orderString(orderBy, reverse: reverse);
  }
}

/// This class represents a PCO Calendar Conflict Object
///
/// - Application:        calendar
/// - Id:                 conflict
/// - Type:               Conflict
/// - ApiVersion:         2020-04-08
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/calendar/v2/conflicts
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCalendarConflict.fromJson()` constructor.
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
/// A conflict between two events caused by overlapping event resource
/// requests.
///
/// If the conflict has been resolved, `resolved_at` will be present.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `note` (ro) -> PCO: `note`
/// - `resolvedAt` (ro) -> PCO: `resolved_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// - `person-conflict-resolved_by`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by
/// - `resource-conflict-resource`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource
/// - `event-conflict-winner`: https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner
///
/// Inbound Edges:
/// - `conflict-event-conflicts`: https://api.planningcenteronline.com/calendar/v2/events/1/conflicts
/// - `conflict-organization-conflicts`: https://api.planningcenteronline.com/calendar/v2/conflicts
/// - `conflict-resource-conflicts`: https://api.planningcenteronline.com/calendar/v2/resources/1/conflicts
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Conflict",
///   "id": "1",
///   "attributes": {
///     "created_at": "2000-01-01T12:00:00Z",
///     "note": "string",
///     "resolved_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "resource": {
///       "data": {
///         "type": "Resource",
///         "id": "1"
///       }
///     },
///     "resolved_by": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "winner": {
///       "data": {
///         "type": "Event",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCalendarConflict extends PcoResource {
  static const String kPcoApplication = 'calendar';
  static const String kTypeString = 'Conflict';
  static const String kTypeId = 'conflict';
  static const String kApiVersion = '2020-04-08';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/calendar/v2/conflicts';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `resolved_by`: include associated resolved_by
  /// - `resource`: include associated resource
  /// - `winner`: include associated winner
  static List<String> get canInclude => ['resolved_by', 'resource', 'winner'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  ///
  static List<String> get canQuery => [];

  /// possible orderings with parameter ?order=
  /// - `resolved_at`: (URLParameter), prefix with a hyphen (-resolved_at) to reverse the order
  static List<String> get canOrderBy => ['resolved_at'];

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
  static const kNote = 'note';
  static const kResolvedAt = 'resolved_at';
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
  String get note => _attributes[kNote] ?? '';
  DateTime get resolvedAt => DateTime.parse(_attributes[kResolvedAt] ?? '');

  // typed getters for each relationship

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedResolvedBy<T extends PcoResource>() =>
      (relationships['resolved_by'] as List?)?.cast<T>() ?? [];

  PcoCalendarResource? get includedResource =>
      _firstOrNull<PcoCalendarResource>(relationships['resource']);

  /// The code generator could not automatically determine the resource type of this relationship.
  /// For type safe code, you should specify it in the type argument when calling.
  List<T> includedWinner<T extends PcoResource>() =>
      (relationships['winner'] as List?)?.cast<T>() ?? [];

  // Class Constructors
  PcoCalendarConflict.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCalendarConflict.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCalendarConflict] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  factory PcoCalendarConflict(
      {String? id,
      DateTime? createdAt,
      String? note,
      DateTime? resolvedAt,
      DateTime? updatedAt,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCalendarConflict.empty();
    obj._id = id;
    if (createdAt != null)
      obj._attributes['created_at'] = createdAt.toIso8601String();
    if (note != null) obj._attributes['note'] = note;
    if (resolvedAt != null)
      obj._attributes['resolved_at'] = resolvedAt.toIso8601String();
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

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/conflicts`
  ///
  /// Available Query Filters:
  /// - `future`
  /// - `resolved`
  /// - `unresolved`
  static Future<PcoCollection<PcoCalendarConflict>> get({
    String? id,
    PcoCalendarConflictQuery? query,
    bool includeAll = false,
    bool includeResolvedBy = false,
    bool includeResource = false,
    bool includeWinner = false,
  }) async {
    query ??= PcoCalendarConflictQuery();
    if (includeAll) query.include.addAll(PcoCalendarConflict.canInclude);
    if (includeResolvedBy) query.include.add('resolved_by');
    if (includeResource) query.include.add('resource');
    if (includeWinner) query.include.add('winner');
    var url = '/calendar/v2/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/events/$eventId/conflicts`
  static Future<PcoCollection<PcoCalendarConflict>> getFromEvent(
    String eventId, {
    String? id,
    PcoCalendarConflictQuery? query,
    bool includeAll = false,
    bool includeResolvedBy = false,
    bool includeResource = false,
    bool includeWinner = false,
  }) async {
    query ??= PcoCalendarConflictQuery();
    if (includeAll) query.include.addAll(PcoCalendarConflict.canInclude);
    if (includeResolvedBy) query.include.add('resolved_by');
    if (includeResource) query.include.add('resource');
    if (includeWinner) query.include.add('winner');
    var url = '/calendar/v2/events/$eventId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCalendarConflict] objects (expecting many)
  /// using a path like this: `/calendar/v2/resources/$resourceId/conflicts`
  static Future<PcoCollection<PcoCalendarConflict>> getFromResource(
    String resourceId, {
    String? id,
    PcoCalendarConflictQuery? query,
    bool includeAll = false,
    bool includeResolvedBy = false,
    bool includeResource = false,
    bool includeWinner = false,
  }) async {
    query ??= PcoCalendarConflictQuery();
    if (includeAll) query.include.addAll(PcoCalendarConflict.canInclude);
    if (includeResolvedBy) query.include.add('resolved_by');
    if (includeResource) query.include.add('resource');
    if (includeWinner) query.include.add('winner');
    var url = '/calendar/v2/resources/$resourceId/conflicts';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCalendarConflict>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCalendarPerson] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resolved_by`
  Future<PcoCollection<PcoCalendarPerson>> getResolvedBy(
      {PcoCalendarPersonQuery? query}) async {
    query ??= PcoCalendarPersonQuery();
    var url = '$apiEndpoint/resolved_by';
    return PcoCollection.fromApiCall<PcoCalendarPerson>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarResource] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/resource`
  Future<PcoCollection<PcoCalendarResource>> getResource(
      {PcoCalendarResourceQuery? query}) async {
    query ??= PcoCalendarResourceQuery();
    var url = '$apiEndpoint/resource';
    return PcoCollection.fromApiCall<PcoCalendarResource>(url,
        query: query, apiVersion: apiVersion);
  }

  /// Will get a collection of [PcoCalendarEvent] objects (expecting one)
  /// using a path like this: `https://api.planningcenteronline.com/calendar/v2/conflicts/1/winner`
  Future<PcoCollection<PcoCalendarEvent>> getWinner(
      {PcoCalendarEventQuery? query}) async {
    query ??= PcoCalendarEventQuery();
    var url = '$apiEndpoint/winner';
    return PcoCollection.fromApiCall<PcoCalendarEvent>(url,
        query: query, apiVersion: apiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
