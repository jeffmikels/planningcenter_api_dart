/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T13:06:04.830929
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

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
  String get organizationName => attributes[kOrganizationName] ?? '';
  String get planningCenterUrl => attributes[kPlanningCenterUrl] ?? '';
  String get serviceTypeName => attributes[kServiceTypeName] ?? '';
  bool get isSignupsAvailable => attributes[kSignupsAvailable] == true;

  // Class Constructors
  PcoServicesAvailableSignup.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesAvailableSignup.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesAvailableSignup] objects (expecting many)
  /// using a path like this: `/services/v2/people/$peopleId/available_signups`
  ///
  /// Available Query Filters:
  /// - `current_organization`
  static Future<PcoCollection<PcoServicesAvailableSignup>> getFromPeople(
      String peopleId,
      {String? id,
      PlanningCenterApiQuery? query,
      bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesAvailableSignup.canInclude;
    var url = '/services/v2/people/$peopleId/available_signups';
    if (id != null) url += '/$id';
    return PcoCollection.fromApiCall<PcoServicesAvailableSignup>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  /// Will get a collection of [PcoServicesSignupSheet] objects (expecting many)
  /// using a path like this: `https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets`
  Future<PcoCollection<PcoServicesSignupSheet>> getSignupSheets(
      {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheet.canInclude;
    var url = '$apiEndpoint/signup_sheets';
    return PcoCollection.fromApiCall<PcoServicesSignupSheet>(url,
        query: query, apiVersion: apiVersion);
  }

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
