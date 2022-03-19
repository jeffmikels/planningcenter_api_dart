/// =========================================================================
/// AUTO-GENERATED FILE CREATED ON 2022-03-19T09:51:55.084996
/// THIS FILE WAS AUTOMATICALLY GENERATED, MODIFICATIONS WILL BE OVERWRITTEN.
/// =========================================================================

import '../../pco.dart';

/// This class represents a PCO Services SignupSheetMetadata Object
///
/// - Application:        services
/// - Id:                 signup_sheet_metadata
/// - Type:               SignupSheetMetadata
/// - ApiVersion:         2018-11-01
/// - Is Deprecated:      false
/// - Is Collection Only: true
/// - Default Endpoint:   https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
/// - Create Endpoint:    NONE
///
/// ## Description
/// A SignupSheetMetadata Resource
///
/// ## Attributes (and permissions)
/// - `id` (ro) -> PCO: `id`
/// - `conflicts` (ro) -> PCO: `conflicts`
/// - `timeType` (ro) -> PCO: `time_type`
/// - `timeName` (ro) -> PCO: `time_name`
/// - `startsAt` (ro) -> PCO: `starts_at`
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
/// - `signupsheetmetadata-signupsheet-signup_sheet_metadata`: https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata
///
/// Actions:
/// NONE
///
/// ## Raw Data Object Example
/// ```json
/// {
///   "type": "SignupSheetMetadata",
///   "id": "1",
///   "attributes": {
///     "conflicts": {},
///     "time_type": "string",
///     "time_name": "string",
///     "starts_at": "2000-01-01T12:00:00Z"
///   },
///   "relationships": {
///     "plan_time": {
///       "data": {
///         "type": "PlanTime",
///         "id": "1"
///       }
///     }
///   }
/// }
/// ```
class PcoServicesSignupSheetMetadata extends PcoResource {
  static const String kPcoApplication = 'services';
  static const String kTypeString = 'SignupSheetMetadata';
  static const String kTypeId = 'signup_sheet_metadata';
  static const String kApiVersion = '2018-11-01';
  static const String kDefaultPathTemplate =
      'https://api.planningcenteronline.com/services/v2/people/1/available_signups/1/signup_sheets/1/signup_sheet_metadata';
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
  static const kConflicts = 'conflicts';
  static const kTimeType = 'time_type';
  static const kTimeName = 'time_name';
  static const kStartsAt = 'starts_at';

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
  String get conflicts => attributes[kConflicts] ?? '';
  String get timeType => attributes[kTimeType] ?? '';
  String get timeName => attributes[kTimeName] ?? '';
  DateTime get startsAt => DateTime.parse(attributes[kStartsAt] ?? '');

  // Class Constructors
  PcoServicesSignupSheetMetadata.fromJson(Map<String, dynamic> data,
      {List<Map<String, dynamic>> withIncludes = const []})
      : super.fromJson(kPcoApplication, kTypeString, data,
            withIncludes: withIncludes);
  PcoServicesSignupSheetMetadata.empty() : super(kPcoApplication, kTypeString);

  // ---------------------------------
  // Inbound Edges
  // ---------------------------------

  /// Will get a collection of [PcoServicesSignupSheetMetadata] objects (expecting one)
  /// using a path like this: `/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata`
  static Future<PcoCollection<PcoServicesSignupSheetMetadata>>
      getFromPeopleAndAvailableSignupAndSignupSheet(
          String peopleId, String availableSignupId, String signupSheetId,
          {PlanningCenterApiQuery? query, bool allIncludes = false}) async {
    query ??= PlanningCenterApiQuery();
    if (allIncludes) query.include = PcoServicesSignupSheetMetadata.canInclude;
    var url =
        '/services/v2/people/$peopleId/available_signups/$availableSignupId/signup_sheets/$signupSheetId/signup_sheet_metadata';

    return PcoCollection.fromApiCall<PcoServicesSignupSheetMetadata>(url,
        query: query, apiVersion: kApiVersion);
  }

  // --------------------------------
  // Outbound Edges
  // --------------------------------
  // Instance functions to traverse outbound edges

  // --------------------------------
  // Actions
  // --------------------------------
  // Instance functions to run actions from this item

}
