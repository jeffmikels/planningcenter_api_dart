/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-06-14T11:30:57.427069
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

part of pco;

/// This class represents a PCO Services AvailableSignup Object
///
/// - Application:        services
/// - Id:                 available_signup
/// - Type:               AvailableSignup
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: false
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups
/// - Create Endpoint:    NONE
///
/// ## Instantiation
/// - This object cannot be created through the API.
/// - Instantiate from existing `JSON` data using the `PcoServicesAvailableSignup.fromJson()` constructor.
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
/// Signups that are available.
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `organizationName` (ro) -> PCO: `organization_name`
/// - `planningCenterUrl` (ro) -> PCO: `planning_center_url`
/// - `serviceTypeName` (ro) -> PCO: `service_type_name`
/// - `isSignupsAvailable` (ro) -> PCO: `signups_available`
///
/// ## Possible Includes
/// e.g. `PlanningCenterApiQuery(includes: ['a', 'b'])`
/// (translates to url parameter: `?include=a,b` )
///
/// - `signup_sheets`: include associated signup_sheets
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
/// - `signupsheet-availablesignup-signup_sheets`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets
///
/// Inbound Edges:
/// - `availablesignup-person-available_signups`: https://api.planningcenteronline.com/services/v2/people/1/available_signups
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "AvailableSignup",
///   "id": "1",
///   "attributes": {
///     "organization_name": "string",
///     "planning_center_url": "string",
///     "service_type_name": "string",
///     "signups_available": true
///   },
///   "relationships": {
///     "organization": {
///       "data": {
///         "type": "Organization",
///         "id": "1"
///       }
///     },
///     "person": {
///       "data": {
///         "type": "Person",
///         "id": "1"
///       }
///     },
///     "service_type": {
///       "data": {
///         "type": "ServiceType",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesAvailableSignup extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'AvailableSignup';
  static const String kTypeId = 'available_signup';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/available_signups';
  static const String kCreatePathTemplate = 'null';

  /// possible includes with parameter ?include=a,b
  /// - `signup_sheets`: include associated signup_sheets
  static List<String> get canInclude => ['signup_sheets'];

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
  static const kOrganizationName = 'organization_name';
  static const kPlanningCenterUrl = 'planning_center_url';
  static const kServiceTypeName = 'service_type_name';
  static const kSignupsAvailable = 'signups_available';

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
  String get organizationName => _attributes[kOrganizationName] ?? '';
  String get planningCenterUrl => _attributes[kPlanningCenterUrl] ?? '';
  String get serviceTypeName => _attributes[kServiceTypeName] ?? '';
  bool get isSignupsAvailable => _attributes[kSignupsAvailable] == true;

  // typed getters for each relationship
  // the code generator cannot determine the resource type of the relationships, so for type safety, the user should

  List<T> includedSignupSheets<T extends PcoResource>() =>
      relationships['signup_sheets']?.cast<T>() ?? [];

  // Class Constructors
  PcoServicesAvailableSignup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------
  // Static functions to obtain instances of this class

  /// Will get a collection of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/available_signups`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  static Future<PcoCollection<PcoServicesAvailableSignup>> getFromPeople(
    String peopleId, {
    String? id,
    PlanningCenterApiQuery? query,
    bool includeSignupSheets = false,
  }) async {
    query ??= PlanningCenterApiQuery();

    if (includeSignupSheets) query.include.add('signup_sheets');
    var url = '/services/v2/people/$peopleId/available_signups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // ---------------------------------
  // Outbound Edges
  // ---------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets`
  Future<PcoCollection<PcoServicesSignupSheet>> getSignupSheets({
    PlanningCenterApiQuery? query,
    bool includeAll = false,
    bool includeScheduledPeople = false,
    bool includeSignupSheetMetadata = false,
  }) async {
    query ??= PlanningCenterApiQuery();
    if (includeAll) query.include.addAll(PcoServicesAvailableSignup.canInclude);
    if (includeScheduledPeople) query.include.add('scheduled_people');
    if (includeSignupSheetMetadata) query.include.add('signup_sheet_metadata');
    var url = '$apiEndpoint/signup_sheets';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: apiVersion);
  }
}
