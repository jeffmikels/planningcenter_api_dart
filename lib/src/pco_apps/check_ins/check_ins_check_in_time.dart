/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.887993
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

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
/// NONE
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
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsCheckInTime] objects (expecting many)
  /// using a path like this: `/check-ins/v2/check_ins/$checkInId/check_in_times`
  static Future<PcoCollection<PcoCheckInsCheckInTime>> getFromCheckIn(
    String checkInId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url = '/check-ins/v2/check_ins/$checkInId/check_in_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsCheckInTime>(url,
        query: query, apiVersion: kApiVersion);
  }
}
