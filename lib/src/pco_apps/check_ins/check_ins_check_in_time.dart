/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-12-13T18:08:26.058581
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// Ordering is not allowed on this object.
enum PcoCheckInsCheckInTimeOrder { none }

/// Filtering is not allowed when requesting this object.
enum PcoCheckInsCheckInTimeFilter { none }

/// Creates a [PcoCheckInsCheckInTimeQuery] object
///
/// ## Extra Params
/// Many API queries accept extra parameters too. The `extraParams` mapping will translate directly to url parameters.
class PcoCheckInsCheckInTimeQuery extends PlanningCenterApiQuery {
  static final Map<PcoCheckInsCheckInTimeOrder, String> _orderMap = {};
  static String orderString(PcoCheckInsCheckInTimeOrder order,
          {bool reverse = false}) =>
      (reverse ? '-' : '') + _orderMap[order]!;

  static final Map<PcoCheckInsCheckInTimeFilter, String> _filterMap = {};
  static String filterString(PcoCheckInsCheckInTimeFilter filter) =>
      _filterMap[filter]!;

  PcoCheckInsCheckInTimeQuery({
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

/// This class represents a PCO CheckIns CheckInTime Object
///
/// - Application:        check-ins
/// - Id:                 check_in_time
/// - Type:               CheckInTime
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsCheckInTime.fromJson()` constructor.
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
/// A CheckInTime combines an EventTime and a Location, and associates it with
/// the parent CheckIn.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `kind` (ro) -> PCO: `kind`
/// - `isHasValidated` (ro) -> PCO: `has_validated`
/// - `errors` (ro) -> PCO: `errors`
/// - `isServicesIntegrated` (ro) -> PCO: `services_integrated`
///
/// ## Edges and Actions
///
/// Outbound Edges:
/// NONE
///
/// Inbound Edges:
/// - `checkintime-checkin-check_in_times`: https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "CheckInTime",
///   "id": "1",
///   "attributes": {
///     "kind": "string",
///     "has_validated": true,
///     "errors": [],
///     "services_integrated": true
///   },
///   "relationships": {
///     "event_time": {
///       "data": {
///         "type": "EventTime",
///         "id": "1"
///       }
///     },
///     "location": {
///       "data": {
///         "type": "Location",
///         "id": "1"
///       }
///     },
///     "check_in": {
///       "data": {
///         "type": "CheckIn",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoCheckInsCheckInTime extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'CheckInTime';
  static const String kTypeId = 'check_in_time';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/check_ins/1/check_in_times';
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
  static const kKind = 'kind';
  static const kHasValidated = 'has_validated';
  static const kErrors = 'errors';
  static const kServicesIntegrated = 'services_integrated';

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
  String get kind => _attributes[kKind] ?? '';
  bool get isHasValidated => _attributes[kHasValidated] == true;
  List get errors => _attributes[kErrors] ?? [];
  bool get isServicesIntegrated => _attributes[kServicesIntegrated] == true;

  // Class Constructors
  PcoCheckInsCheckInTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>>? withIncluded})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncluded: withIncluded);

  /// Create an empty instance of this class. This is only useful when an endpoint requires
  /// related or included data.
  ///
  /// NOTE: This object cannot be saved directly to Planning Center
  PcoCheckInsCheckInTime.empty() : super(kPcoApplication, kTypeString);

  /// Create a new [PcoCheckInsCheckInTime] object. This object cannot be created with the API
  ///
  /// ### NOTES:
  /// - Creating an instance of a class this way does not save it on the server.
  /// - This object cannot be saved directly to the server.
  /// - Only set the `id` field if you know what you are doing. Save operations will overwrite data when the `id` is set.
  /// - Dummy data can be supplied for a required parameter, but if so, `.save()` should not be called on the object
  /// - FIELDS USED WHEN CREATING: none
  /// - FIELDS USED WHEN UPDATING: none
  factory PcoCheckInsCheckInTime(
      {String? id,
      String? kind,
      bool? isHasValidated,
      List? errors,
      bool? isServicesIntegrated,
      Map<String, List<PcoResource>>? withRelationships,
      List<PcoResource>? withIncluded}) {
    var obj = PcoCheckInsCheckInTime.empty();
    obj._id = id;
    if (kind != null) obj._attributes['kind'] = kind;
    if (isHasValidated != null)
      obj._attributes['has_validated'] = isHasValidated;
    if (errors != null) obj._attributes['errors'] = errors;
    if (isServicesIntegrated != null)
      obj._attributes['services_integrated'] = isServicesIntegrated;

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

  /// Will get a collection of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_times`
  ///
  /// Additional options may be specified by using the `query` argument, but some
  /// query options are also available as boolean flags in this function call too.
  static Future<PcoCollection<PcoCheckInsCheckInTime>> getFromCheckIn(
    String checkInId, {
    String? id,
    PcoCheckInsCheckInTimeQuery? query,
  }) async {
    query ??= PcoCheckInsCheckInTimeQuery();

    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url,
        query: query, apiVersion: kApiVersion);
  }

  // little helper function
  T? _firstOrNull<T>(List? l) => l == null
      ? null
      : l.isEmpty
          ? null
          : l.cast<T>().first;
}
