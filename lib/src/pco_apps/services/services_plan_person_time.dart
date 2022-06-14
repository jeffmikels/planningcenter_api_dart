/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.829102
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services PlanPersonTime Object
///
/// - Application:        services
/// - Id:                 plan_person_time
/// - Type:               PlanPersonTime
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesPlanPersonTime.fromJson()` constructor.
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
///
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `status` (ro) -> PCO: `status`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
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
/// - `planpersontime-planperson-plan_person_times`: https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "PlanPersonTime",
///   "id": "1",
///   "attributes": {
///     "status": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     },
///     "plan": {
///       "data": {
///         "type": "Plan",
///         "id": "1"
///       }
///     },
///     "plan_person": {
///       "data": {
///         "type": "PlanPerson",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesPlanPersonTime extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'PlanPersonTime';
  static const String kTypeId = 'plan_person_time';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/plan_people/1/plan_person_times';
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
  static const kStatus = 'status';
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
  String get status => _attributes[kStatus] ?? '';

  // Class Constructors
  PcoServicesPlanPersonTime.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesPlanPersonTime] objects (expecting many)
  /// using a path like this: `/services/v2/people/$personId/plan_people/$planPersonId/plan_person_times`
  static Future<PcoCollection<PcoServicesPlanPersonTime>>
      getFromPersonAndPlanPerson(
    String personId,
    String planPersonId, {
    String? id,
    PlanningCenterApiQuery? query,
  }) async {
    query ??= PlanningCenterApiQuery();

    var url =
        '/services/v2/people/$personId/plan_people/$planPersonId/plan_person_times';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesPlanPersonTime>(url,
        query: query, apiVersion: kApiVersion);
  }
}
