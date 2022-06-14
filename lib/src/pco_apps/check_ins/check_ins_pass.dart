/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T14:05:14.895133
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO CheckIns Pass Object
///
/// - Application:        check-ins
/// - Id:                 pass
/// - Type:               Pass
/// - ApiVersion:         2019-07-17
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/check-ins/v2/passes
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoCheckInsPass.fromJson()` constructor.
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
/// Enables quick lookup of a person via barcode reader.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `code` (ro) -> PCO: `code`
/// - `kind` (ro) -> PCO: `kind`
/// - `createdAt` (ro) -> PCO: `created_at`
/// - `updatedAt` (ro) -> PCO: `updated_at`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `person`: include associated person
///
/// ## Possible Query Fields
/// e.g. `PlanningCenterApiQuery(where: {'field_name>' : 'value'})`
/// (translates to url parameters like `?where[field_name]=value` or `?where[field_name][gt|lt]=value`)
/// See documentation for [PlanningCenterApiQuery] for more details about the `where` field.
///
/// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
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
/// - `person-pass-person`: https://api.planningcenteronline.com/check-ins/v2/passes/1/person
///
/// Inbound Edges:
/// - `pass-organization-passes`: https://api.planningcenteronline.com/check-ins/v2/passes
/// - `pass-person-passes`: https://api.planningcenteronline.com/check-ins/v2/people/1/passes
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "Pass",
///   "id": "1",
///   "attributes": {
///     "code": "string",
///     "kind": "string",
///     "created_at": "2000-01-01T12:00:00Z",
///     "updated_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {}
/// }
/// ```
class PcoCheckInsPass extends PcoResource {
  static const String kPcoApplication = 'check-ins';
  static const String kTypeString = 'Pass';
  static const String kTypeId = 'pass';
  static const String kApiVersion = '2019-07-17';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/check-ins/v2/passes';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `person`: include associated person
  static List<String> get canInclude => ['person'];

  /// possible queries using parameters like ?where[key]=value or ?where[key][gt|lt]=value
  /// - `code`: (URLParameter), query on a specific code, example: ?where[code]=string
  static List<String> get canQuery => ['code'];

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
  static const kCode = 'code';
  static const kKind = 'kind';
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
  String get code => _attributes[kCode] ?? '';
  String get kind => _attributes[kKind] ?? '';

  // typed getters for each relationship

  List<PcoCheckInsPerson> get includedPerson =>
      (relationships['person'] as List?)?.cast<PcoCheckInsPerson>() ?? [];

  // Class Constructors
  PcoCheckInsPass.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `/check-ins/v2/passes`
  static Future<PcoCollection<PcoCheckInsPass>> get({
    String? id,
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: kApiVersion);
  }

  /// Will get a collection of [PcoCheckInsPass] objects (expecting many)
  /// using a path like this: `/check-ins/v2/people/$personId/passes`
  static Future<PcoCollection<PcoCheckInsPass>> getFromPerson(
    String personId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includePerson = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includePerson) query.include.add('person');
    var url = '/check-ins/v2/people/$personId/passes';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoCheckInsPass>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoCheckInsPerson] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/check-ins/v2/passes/1/person`
  Future<PcoCollection<PcoCheckInsPerson>> getPerson({
    PlanningCenterApiQuery? query,
    bool includeOrganization = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeOrganization) query.include.add('organization');
    var url = '$apiEndpoint/person';
    return PcoCollection.fromApiCall<PcoCheckInsPerson>(url,
        query: query, apiVersion: apiVersion);
  }
}
